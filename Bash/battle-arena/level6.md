# Level 6 Explanation

## Mission

Write a script that accepts a filename as an argument and prints the number of lines in that file.

If no filename is provided, display:

```text
No file provided.
```

## Solution

```bash
#!/bin/bash

if [[ -z "$1" ]]; then
    echo "No File Provided."
    exit 1
fi

if [[ -f "$1" ]]; then
    file_count=$(wc -l < "$1")
    echo "The number of lines are: $file_count"
else
    echo "File not found."
    exit 1
fi
```

## Takeaways

### Positional Parameters

Bash scripts can accept arguments from the command line.

The first argument is stored in:

```bash
$1
```

Example:

```bash
./level6.sh log.txt
```

In this case:

```bash
$1
```

contains:

```text
log.txt
```

### Checking for Missing Input

```bash
[[ -z "$1" ]]
```

The `-z` operator checks whether a string is empty.

If no argument is provided, the script displays an error message and exits.

### Checking if a File Exists

```bash
[[ -f "$1" ]]
```

The `-f` operator checks whether a file exists and is a regular file.

### Counting Lines in a File

```bash
wc -l < "$1"
```

The `wc -l` command counts the number of lines in a file.

Using input redirection (`<`) returns only the line count rather than displaying the filename as well.

### Exit Codes

```bash
exit 1
```

A non-zero exit code indicates that an error occurred.

Common convention:

```text
0 = Success
1 = Error
```

## Commands and Concepts Used

* Positional parameters (`$1`)
* `if`
* `[[ ]]`
* `-z`
* `-f`
* `wc -l`
* Input redirection (`<`)
* Exit codes (`exit 1`)

## Lessons Learned

* Bash scripts can receive input from users through command-line arguments.
* Input should be validated before processing.
* Different error conditions should have different messages.
* Exit codes help other scripts and users determine whether a command succeeded or failed.
