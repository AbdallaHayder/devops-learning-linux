# Level 4 Explanation

## Mission

Create a script that copies all `.txt` files from the Arena directory to a new directory called Backup.

## Takeaways

* `cp` is used to copy files and directories.
* `mkdir -p` creates a directory if it does not already exist.
* The `*` wildcard matches multiple files.

### Wildcards

```bash
cp $HOME/Arena/*.txt "$HOME/Backup"
```

The wildcard:

```text
*
```

matches all files ending with `.txt`.

Example:

```text
warrior.txt
mage.txt
archer.txt
hero.txt
```

The shell expands the command before `cp` runs.

### Output Redirection vs Command Arguments

I initially tried:

```bash
cp source > destination
```

This is incorrect because:

```text
>
```

redirects command output to a file.

The `cp` command expects:

```bash
cp source destination
```

where the destination is provided as an argument, not through output redirection.

### Quoting Paths

Paths containing variables should generally be quoted:

```bash
"$HOME/Backup"
```

However, quoting a wildcard prevents expansion:

```bash
"$HOME/Arena/*.txt"
```

This would be treated as a literal filename rather than matching all `.txt` files.

## Commands and Concepts Used

* `mkdir`
* `cp`
* Wildcards (`*`)
* Path variables (`$HOME`)
* Quoting
* File copying
* Directory creation

```
```
