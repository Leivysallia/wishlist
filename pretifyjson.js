import fs from 'fs-extra';

const buffer = await fs.readFile('./deliverables/bundles/revia-seasons.json');
let yourJsonText = buffer.toString();
let yourJson = JSON.parse(yourJsonText);
let reviaScarlet = JSON.stringify(yourJson, null, 4);

fs.writeFile('Revia Scarlet.json', reviaScarlet);
