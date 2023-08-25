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
      /##\s*Function\s*`([^`]+)`\s*\n```(?:\s*motoko (?:no-repl)?\s*\n)([\s\S]*?)```/g;
    let match;
    while ((match = functionRegex.exec(content)) !== null) {
      const functionName = match[1].trim();
      let functionDefinition = match[2].trim();

      functionDefinition = functionDefinition.replace(/^\s*/i, '');
      functions.push({
        module: moduleName,
        name: functionName,
        definition: functionDefinition,
      });
    }

    const relevant = functions.flatMap((f) => {
      const match = /(from|to)(\w+)/.exec(f.name);
      return match ? [{ ...f, type: match[1], other: match[2] }] : [];
    });
    console.log(moduleName, relevant);
    convertFunctions.push(...relevant);
  }
});

// Generate `/src/lib.mo`
const motokoSource = fs
  .readFileSync(path.join(__dirname, 'ConvertTemplate.mo'), 'utf8')
  .replace('/* {imports} */', '// TODO: imports')
  .replace(/([ \t]*)\/\* {fields} \*\//, (_, indent) => {
    return relevant
      .map((f) => {
        const from = f.type === 'from' ? f.other : f.module;
        const to = f.type === 'to' ? f.module : f.other;
        return `${indent}public func ${from}_${to}(from : ${from}) = ${f.module}.${f.name}(from);`;
      })
      .join('\n');
  });
fs.writeFileSync(path.join(__dirname, '../src/lib.mo'), motokoSource);
