const exec = require('child_process').exec;
const path = require("path");
const root = path.resolve(process.env.LAMBDA_TASK_ROOT);

exports.dhallHandler = function(event, context, callback) {
    exec(`echo "./function.dhall ${event}" | dhall `, (error, stdout, stderr) => {
    if (error) {
      callback(error);
    }
    callback(null, stdout);
  });
}
