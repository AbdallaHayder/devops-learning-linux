# Level 5 Explanation

## Mission

Write a script that:

1. Creates a directory named `Battlefield`.
2. Creates the files `knight.txt`, `sorcerer.txt`, and `rogue.txt`.
3. Checks if `knight.txt` exists.
4. If it exists, move it to a new directory called `Archive`.
5. Display the contents of both `Battlefield` and `Archive`.

## Takeaways

### Combining Multiple Concepts

This was the first Boss Battle and required combining concepts from previous levels:

* Directory creation
* File creation
* Conditional statements
* File operations
* Output formatting

### Brace Expansion

```bash
touch $HOME/Battlefield/{knight,sorcerer,rogue}.txt
```

Brace expansion allows multiple files to be created with a single command.

The shell expands the command into:

```bash
touch knight.txt sorcerer.txt rogue.txt
```

### File Existence Check

```bash
[[ -f "$HOME/Battlefield/knight.txt" ]]
```

The `-f` file test operator checks whether a file exists and is a regular file.

### Moving Files

```bash
mv "$HOME/Battlefield/knight.txt" "$HOME/Archive"
```

The `mv` command moves a file from one location to another.

Unlike `cp`, the original file is removed from the source location after the move.

### Directory Creation

```bash
mkdir -p
```

The `-p` option creates the directory if it does not already exist and prevents errors if the directory is already present.

## Commands and Concepts Used

* `mkdir`
* `touch`
* `if`
* `then`
* `fi`
* `[[ ]]`
* `-f`
* `mv`
* `ls`
* Brace expansion
* Variables (`$HOME`)

## Lessons Learned

* A Bash script is often a sequence of Linux commands connected together with logic.
* Small commands become powerful when combined.
* Reading the mission carefully is important. The difference between `cp`, `mv`, and `rm` changes the outcome completely.
* Boss battles test understanding of previous levels rather than introducing entirely new commands.

```
```
