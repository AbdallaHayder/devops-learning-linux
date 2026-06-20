# Level 8 Explanation

## Mission

Create a script that searches for a specific word or phrase across all `.log` files in a directory and outputs the names of the files that contain the word or phrase.

## Solution

```bash
#!/bin/bash

dir_path="$HOME/ArenaLogs"
user_input="$1"

if [[ -z "$user_input" ]]; then
    echo "Enter a word or phrase to search for."
    exit 1
fi

for file in "$dir_path"/*.log
do
    if grep -q "$user_input" "$file"; then
        basename "$file"
    fi
done
```

## Takeaways

### Log Files

A `.log` file is a text file that usually stores events, messages, errors, or activity records.

Example:

```text
User login successful
Database connected
Backup completed
```

Log files are commonly used by Linux systems, applications, servers, and DevOps tools.

### Positional Parameters

```bash
user_input="$1"
```

The script accepts the search term as the first command-line argument.

Example:

```bash
./level8.sh Backup
```

In this case:

```bash
$1
```

contains:

```text
Backup
```

### Checking for Missing Input

```bash
[[ -z "$user_input" ]]
```

The `-z` operator checks whether the variable is empty.

If the user does not provide a search term, the script prints a message and exits.

### Looping Through Log Files

```bash
for file in "$dir_path"/*.log
```

This loops through all `.log` files inside the selected directory.

The `*.log` pattern matches files ending in `.log`.

### Searching File Contents

```bash
grep -q "$user_input" "$file"
```

The `grep` command searches for text inside files.

The `-q` option means quiet mode.

In quiet mode, `grep` does not print the matching line. Instead, it only returns an exit status:

```text
0 = match found
1 = no match found
```

This makes it useful inside an `if` statement.

### Using Command Exit Status in an If Statement

```bash
if grep -q "$user_input" "$file"; then
```

Bash can use the success or failure of a command as a condition.

If `grep` finds the search term, the condition is true and the script prints the filename.

### Printing Only the Filename

```bash
basename "$file"
```

The `basename` command removes the directory path and prints only the filename.

Example:

```text
/home/abdalla/ArenaLogs/server1.log
```

becomes:

```text
server1.log
```

## Commands and Concepts Used

* `.log` files
* Positional parameters (`$1`)
* `if`
* `[[ ]]`
* `-z`
* `for` loops
* File globs (`*.log`)
* `grep`
* `grep -q`
* Command exit status
* `basename`
* `exit 1`

## Lessons Learned

* `grep` is useful for searching text inside files.
* `grep -q` is useful when I only care whether a match exists, not the matching line itself.
* Bash `if` statements can check the exit status of commands directly.
* `basename` is useful when I want to display only the filename instead of the full path.
* Using arguments makes scripts more flexible because the search term does not have to be hardcoded.
