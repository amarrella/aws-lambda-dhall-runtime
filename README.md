# Dhall Lambda Runtime

Some lambdas are very simple data transformations.
Now you can do them in [dhall](https://dhall-lang.org)!
Add your main logic in `/src/function.dhall`, run `make zip` and deploy :)

For a local test, you can run it with [sam-cli](https://github.com/awslabs/aws-sam-cli)
For example the example function can be run with:
`sam local invoke -e events/john.dhall`
or 
`sam local invoke -e events/jane.dhall`

**Status: not production ready! It's probably possible to inject malicious code in the input right now, so use just for fun and don't give the lambda any permissions.**
