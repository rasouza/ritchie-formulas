const clc = require("cli-color")
const axios = require("axios")
const fs = require('fs');

const hasName = name => obj => obj.files[name] !== undefined
const getByName = file => gists => {
  const name = extractName(file)
  return gists.filter(hasName(name))[0].id;
}
const extractName = (file) => {
  const split = file.split("/");
  return split[split.length - 1];
};

const uploadGist = (gistId, client) => async (file) => {
  const data = await client
    .patch(`/gists/${gistId}`, {
      files: {
        [extractName(file)]: {
          content: fs.readFileSync(`${file}`, "utf8"),
        },
      },
    })
    .catch((error) => console.log(error.response.data));

  if (data.status === 200) 
    console.log(clc.green(`${file} synchronized with success!`))
};

const getFilename = path => {
  const split = path.split('')
}

async function Run(file, token) {
  const client = axios.create({
    baseURL: "https://api.github.com",
    headers: {
      Authorization: `token ${token}`,
      Accept: "application/vnd.github.v3+json",
    },
  });

  try {
    const { data: gists } = await client
      .get("/gists")
      .catch((error) => console.log(error.response.data));
    const gistId = getByName(file)(gists)

    await uploadGist(gistId, client)(file)
  } catch (error) {
    if (error instanceof TypeError) console.log(clc.red(`Gist ${file} not found`));
    if (error.code === 'ENOENT') console.log(clc.red(`File ${file} doesn't exist`))
  }
}

const formula = Run
module.exports = formula
