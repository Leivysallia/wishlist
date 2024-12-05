import fs from 'fs-extra';

const buffer = await fs.readFile('./deliverables/bundles/revia-seasons.json');
let yourJsonText = buffer.toString();
let yourJson = JSON.parse(yourJsonText);
let bob = JSON.stringify(yourJson, null, 4);

console.log(bob);
