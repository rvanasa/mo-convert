'use strict';

const path = require('path');
const fs = require('fs');

const skipFunctions = ['Iter.fromList', 'Char.toText'];

// Find conversion functions in base library docs
const baseDocsDir = path.join(__dirname, '../submodules/motoko/doc/md/base');
const convertFunctions = [];
fs.readdirSync(baseDocsDir).forEach((file) => {
  if (file.endsWith('.md')) {
    const moduleName = path.basename(file, '.md');
    const content = fs.readFileSync(path.join(baseDocsDir, file), 'utf8');
    const functions = [];
    const functionRegex =
      /\n##\s*(?:Function|Value)\s*`([^`]+)`\s*\n```\s*motoko (?:no-repl)?\s*\n(?:func|let) ([\s\S]*?)```/g;
    let match;
    while ((match = functionRegex.exec(content)) !== null) {
      const name = match[1].trim();
      const signature = match[2].trim();
      if (!skipFunctions.includes(`${moduleName}.${name}`)) {
        functions.push({
          module: moduleName,
          name,
          signature,
        });
      }
    }
    const relevant = functions.flatMap((f) => {
      const match = /^(from|to)([A-Z]\w*)/.exec(f.name);
      return match ? [{ ...f, type: match[1], other: match[2] }] : [];
    });
    convertFunctions.push(...relevant);
  }
});
convertFunctions.sort((a, b) => a.name.localeCompare(b.name));

convertFunctions.forEach((f) => console.log(`${f.module}.${f.signature}`));

// Find prim functions
const prims = fs
  .readFileSync(
    path.join(__dirname, '../submodules/motoko/src/prelude/prim.mo'),
    'utf8',
  )
  .split('\n')
  .map((line) => /^(?:let|func) (\w+)/.exec(line)?.[1])
  .filter((x) => x)
  .sort();

const lowercaseFirstLetter = (str) =>
  str.charAt(0).toLowerCase() + str.slice(1);

const findPrim = (str) => (prims.includes(str) ? str : null);

// Generate `/src/lib.json`
const json = convertFunctions.map((f) => {
  const from = f.type === 'from' ? f.other : f.module;
  const to = f.type === 'from' ? f.module : f.other;
  const prim =
    findPrim(`${lowercaseFirstLetter(from)}To${to}`) ||
    findPrim(`${lowercaseFirstLetter(to)}Of${from}`);
  return {
    from,
    to,
    module: f.module,
    name: f.name,
    signature: `${f.module}.${f.signature}`,
    prim,
  };
});
fs.writeFileSync(
  path.join(__dirname, '../src/conversions.json'),
  JSON.stringify(json, null, 2),
);

// Generate `/src/lib.mo`
const motokoSource = fs
  .readFileSync(path.join(__dirname, 'Template.mo'), 'utf8')
  .replace(
    '/* {imports} */',
    [...new Set(json.filter((f) => !f.prim).map((f) => f.module))]
      .sort()
      .map((module) => `import ${module} "mo:base/${module}";`)
      .join('\n'),
  )
  .replace(/([ \t]*)\/\* {fields} \*\//, (_, indent) => {
    return json
      .map((f) => {
        const lines = [
          '/// From base library:',
          '/// ```motoko no-repl',
          `/// import ${f.module} "mo:base/${f.module}";`,
          `/// ${f.module}.${f.signature}`,
          '/// ```',
          `public let ${f.from}_${f.to} = ${
            f.prim ? `Prim.${f.prim}` : `${f.module}.${f.name}`
          };`,
        ];
        return lines.map((line) => `${indent}${line}`).join('\n');
      })
      .sort()
      .join('\n\n');
  });
fs.writeFileSync(path.join(__dirname, '../src/lib.mo'), motokoSource);
