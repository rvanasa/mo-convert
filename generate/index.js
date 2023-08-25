'use strict';

const path = require('path');
const fs = require('fs');

// Find conversion functions in base library docs
const baseDocsDir = path.join(__dirname, '../submodules/motoko/doc/md/base');
const convertFunctions = [];
fs.readdirSync(baseDocsDir).forEach((file) => {
  if (file.endsWith('.md')) {
    const moduleName = path.basename(file, '.md');
    const content = fs.readFileSync(path.join(baseDocsDir, file), 'utf8');
    const functions = [];
    const functionRegex =
      /\n##\s*Function\s*`([^`]+)`\s*\n```\s*motoko (?:no-repl)?\s*\nfunc ([\s\S]*?)```/g;
    let match;
    while ((match = functionRegex.exec(content)) !== null) {
      const name = match[1].trim();
      let signature = match[2].trim();

      signature = signature.replace(/^\s*/i, '');
      functions.push({
        module: moduleName,
        name,
        signature,
      });
    }

    const relevant = functions.flatMap((f) => {
      const match = /^(from|to)([A-Z]\w*)/.exec(f.name);
      return match ? [{ ...f, type: match[1], other: match[2] }] : [];
    });
    convertFunctions.push(...relevant);
  }
});

convertFunctions.forEach((f) =>
  console.log(f.signature.replace(/^func /, `${f.module}.`)),
);

// Generate `/src/lib.json`
const json = convertFunctions.map((f) => {
  const from = f.type === 'from' ? f.other : f.module;
  const to = f.type === 'from' ? f.module : f.other;
  return {
    from,
    to,
    module: f.module,
    name: f.name,
    signature: `${f.module}.${f.signature}`,
  };
});
fs.writeFileSync(
  path.join(__dirname, '../src/lib.json'),
  JSON.stringify(json, null, 2),
);

// Generate `/src/lib.mo`
const motokoSource = fs
  .readFileSync(path.join(__dirname, 'Template.mo'), 'utf8')
  .replace(
    '/* {imports} */',
    [...new Set(convertFunctions.map((f) => f.module))]
      .sort()
      .map((module) => `import ${module} "mo:base/${module}";`)
      .join('\n'),
  )
  .replace(/([ \t]*)\/\* {fields} \*\//, (_, indent) => {
    return convertFunctions
      .map((f) => {
        const from = f.type === 'from' ? f.other : f.module;
        const to = f.type === 'from' ? f.module : f.other;
        // const signature = /\w+(.+)/.exec(f.signature)[1];
        return `${indent}public let ${from}_${to} = ${f.module}.${f.name};`;
      })
      .sort()
      .join('\n');
  });
fs.writeFileSync(path.join(__dirname, '../src/lib.mo'), motokoSource);
