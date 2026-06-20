# Level 7 Explanation

## Mission

Write a script that sorts all `.txt` files in a directory by their size, from smallest to largest, and displays the sorted list.

## Solution

```bash
#!/bin/bash

dir_path="$HOME/Arena"

if [ ! -d "$dir_path" ]; then
    echo "Directory does not exist."
    exit 1
fi

find "$dir_path" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{print $5, $9}'
```

## Takeaways

### Directory Validation

```bash
[ ! -d "$dir_path" ]
```

Checks whether the directory exists.

* `-d` = directory exists
* `!` = logical NOT

If the directory does not exist, the script exits with an error.

### Finding Files

```bash
find "$dir_path" -type f -name "*.txt"
```

Searches recursively for:

* Regular files (`-type f`)
* Files matching the pattern `*.txt`

### Executing Commands on Search Results

```bash
-exec ls -lh {} +
```

`find` passes all matching files to the `ls` command.

* `{}` represents the files found by `find`
* `+` groups multiple files into a single command execution

Example:

```bash
ls -lh warrior.txt mage.txt archer.txt
```

Using `+` is more efficient than:

```bash
-exec ls -lh {} \;
```

which runs `ls` once for every file found.

### Sorting by File Size

```bash
sort -k 5,5 -h
```

#### `-k 5,5`

Sort using only column 5.

For `ls -lh` output:

```text
permissions links owner group size date time filename
```

Column 5 contains the file size.

#### `-h`

Sort human-readable values correctly.

Examples:

```text
1K
12K
100K
2M
```

### Extracting Specific Columns

```bash
awk '{print $5, $9}'
```

Prints:

* `$5` → file size
* `$9` → filename

Example output:

```text
1K archer.txt
4K warrior.txt
8K mage.txt
```

## Commands and Concepts Used

* `find`
* `ls -lh`
* `sort`
* `awk`
* `-exec`
* `-type f`
* `-name`
* `-k`
* `-h`
* Pipelines (`|`)
* Directory validation (`-d`)

## Lessons Learned

* Linux commands can be chained together using pipelines.
* `find` is useful for locating files recursively.
* `sort` can sort based on specific columns.
* `awk` can extract and display specific fields from command output.
* The `+` in `-exec` groups multiple files into a single command execution, making it more efficient than `\;`.
* Many Bash problems can be solved by combining existing Linux tools rather than writing loops from scratch.

## Personal Notes

This level was my first real exposure to the Unix pipeline philosophy.

Instead of writing loops and manually sorting data, I learned how to combine existing Linux tools:

```bash
find → ls → sort → awk
```

Each command performs one specific task, and the pipeline passes the output of one command to the next. This approach is common in Bash scripting, Linux administration, and DevOps workflows.

```
```
