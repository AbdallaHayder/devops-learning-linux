# Level 10 Explanation

## Mission

Write a script that:

1. Creates a directory called `Arena_Boss`
2. Creates 5 text files (`file1.txt` to `file5.txt`)
3. Generates a random number of lines (between 10 and 20) in each file
4. Sorts the files by size and displays the list
5. Searches for the word `Victory` and moves matching files to `Victory_Archive`

## Solution

Key concepts used:

```bash
mkdir -p
for loops
nested loops
$RANDOM
grep -q
mv
sort
awk
```

## Takeaways

### Random Number Generation

```bash
random_lines=$(( RANDOM % 11 + 10 ))
```

Generates a random number between 10 and 20.

Breakdown:

```text
RANDOM % 11  → 0 to 10
+ 10         → 10 to 20
```

### Nested Loops

```bash
for ((i=1; i<=5; i++))
```

Creates and processes each file.

```bash
for ((d=1; d<=random_lines; d++))
```

Writes the random number of lines into the current file.

### Clearing File Contents

```bash
> "$file"
```

Creates the file if it does not exist and clears its contents if it already exists.

This prevents data from previous script runs from accumulating.

### Sorting Files by Size

```bash
ls -lh "$HOME/Arena_Boss"/*.txt | sort -k 5,5 -h | awk '{print $5, $9}'
```

* `ls -lh` displays file information.
* `sort -k 5,5 -h` sorts by file size.
* `awk` prints only the size and filename.

### Searching for Text

```bash
grep -q "Victory" "$file"
```

Checks whether the current file contains the word `Victory`.

The `-q` option runs quietly and returns only an exit status.

### Moving Matching Files

```bash
mv "$file" "$HOME/Victory_Archive"
```

Moves files containing the word `Victory` into the archive directory.

## Commands and Concepts Used

* `mkdir -p`
* `for` loops
* Nested loops
* `$RANDOM`
* Arithmetic expansion `$(( ))`
* `grep -q`
* `mv`
* `sort`
* `awk`
* Output redirection (`>`, `>>`)
* Variables

## Lessons Learned

* Broke a larger problem into smaller steps and solved each part separately.
* Learned how to generate random numbers within a specific range.
* Used nested loops to process multiple files and multiple lines.
* Reinforced file sorting and text searching skills from previous levels.
* Learned that `> "$file"` clears a file before writing new content.
* Combined concepts from Levels 1–9 into a single script.
