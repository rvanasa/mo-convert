const path = require('path');
const fs = require('fs');

const baseDocsDir = path.join(__dirname, '../submodules/motoko/doc/md/base');

fs.readdirSync(baseDocsDir).forEach((file) => {
  if (file.endsWith('.md')) {
    const content = fs.readFileSync(path.join(baseDocsDir, file), 'utf8');
    const functions = [];
    const functionRegex = /##\s*Function\s*`([^`]+)`\s*\n```([\s\S]*?)```/g;
    let match;
    while ((match = functionRegex.exec(content)) !== null) {
      const functionName = match[1].trim();
      let functionDefinition = match[2].trim();

      functionDefinition = functionDefinition.replace(
        /^motoko no-repl\s*/i,
        '',
      );
      functions.push({ name: functionName, definition: functionDefinition });
    }

    relevant = functions.flatMap((f) => {
      const match = /(from|to)(\w+)/.exec(f.name);
      return match ? [[{ ...f, dir: match[1], other: match[2] }]] : [];
    });

    console.log(relevant);
  }
});
