const homedir = require("os").homedir();
const run = require("./formula/formula")

const file = process.env.FILE.replace('~', homedir)
const token = process.env.GIST_TOKEN

run(file, token)
