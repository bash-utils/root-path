# root-path
> Resolve the root path from a bash script

## Install

Get a local copy by either:
- Add as submodule:
  ```bash
    $ git submodule add https://github.com/bash-utils/root-path.git
  ```
- Clone:
  ```bash
    $ git clone https://github.com/bash-utils/root-path.git
  ```

Then source the `bash-utils/root-path.sh` script:
```bash
$ source path/to/bash-utils/root-path.sh
```


## Usage

```bash
##
# Get the root path from a bash source
# root-path <SOURCE>
#
# @param <SOURCE> The bash source invokation
# @example: ROOT_PATH=$( root-path ${BASH_SOURCE[0]} )
##

ROOT_PATH=$( root-path ${BASH_SOURCE[0]} )
```

```bash
##
# Resolve the root path from a bash source
# root-path--resolve <SOURCE>
#
# @param <SOURCE> The bash source invokation
# @example: ROOT_PATH=$( root-path--resolve ${BASH_SOURCE[0]} )
##

ROOT_PATH=$( root-path--resolve ${BASH_SOURCE[0]} )
```

## License
[MIT](./LICENSE)
