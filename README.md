# Index

- [Command interpret history](./README.md#command-interpret-history)
  - [TTY](./README.md#TTY)
  - [Shell](./README.md#Shell)
  - [Bash](./README.md#Bash)
  - [Zsh](./README.md#Zsh)
- [How to "chain" command](./README.md#how-to-"chain"-command)
  - [Flux and piping](./README.md#flux-and-piping)
  - [`&&` AND gate](./README.md#and-gate)
  - [BONUS: `||` OR gate](./README.md#bonus--or-gate)

## Command interpret history

### TTY
TTY virtual device in the computer that allow an user to interact with the system

i think ALL command interpreter (Shell, Bash , zsh ...) use TTY to send and recevied command from the system

### Shell
Shell is the first command interpreter that appears with first unix systems, created by Thompson Shell in 1971

### Bash
(kind default shell)
Bash appear first with the first free implementation of GNU/Linux

BASH (aka Bourne Again shell) is an enhanced, compatiable with, version of shell
in some later version of sh and on certain Operating system the /bin/sh is link to /bin/bash.
so it's barrely the some on purpose

### Zsh
ZSH (aka Z-Shell) is an upgrade to bash, it included pulgins themes and many features.


## How to "chain" command

### Flux and piping
in most Linux distribution command interpreter can redirecte output(1) to input(0) for another programs, with the character `|`.
like so, the following is possible:
`cat filename | grep "word"`

### `&&` AND gate

like piping, it's possible to pipe the error(2)(returned value) to a logic
operator instead of `|`, `&&` is used to do an logic AND, so the previous
statement have to return a true to go for the second command, exemple:

```bash
gcc -Wall -Werror -Wextra main.c -o main && ./main
```

two command and one logic operator:

- the first command compile the main.c and output it to main
- the `&&` check if the compilation have been successfully or not
- execute ./main only if the compilation was a success
> that prevent to launch a programm that was not changed or just not here

### BONUS: `||` OR gate

let's take the exemple above and to it a condition were the compilation failed:

```shell
gcc -Wall -Werror -Wextra main.c -o main && ./main || echo "Compilation Failed"
```

two command and two logic operator:

- like the exemple the first command compile the main.c
- the `&&` check if the compilation have been successfully or not
- execute ./main only if the compilation was a success
- The `||` OR check if the previous command was NOT executed :)
- echo command only append if the `./main` was NOT executed

> juste lil' trick outder u know
