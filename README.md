# Create .terraformrc


A GitHub action to automatically create a Terraform Enterprise .terraformrc directory and insert a token from TF_ENV_TOKEN. 

> **NOTE:** much of this was swiped wholesale from the excellent https://github.com/jessfraz/branch-cleanup-action

**Table of Contents**

<!-- toc -->

- [Usage](#usage)
- [Contributing](#contributing)
  * [Running the tests](#running-the-tests)

<!-- tocstop -->

## Usage

```
workflow "On push, create .terraformrc" {
  on = "push"
  resolves = ["create terraformrc"]
}

action "create terraformrc" {
  uses = "sntxrr/create-terraformrc@master"
  secrets = ["TF_ENV_TOKEN"]
}
```

## Contributing

### Running the tests

The tests use [shellcheck](https://github.com/koalaman/shellcheck). You don't
need to install anything. They run in a container.

```console
$ make test
```