# Level 11 Explanation

## Mission

Create a script that checks the disk space usage of a specified directory and sends an alert if the usage exceeds a given threshold.

## Solution

```bash
#!/bin/bash

directory="$1"
threshold="$2"

if [[ -z "$directory" || -z "$threshold" ]];
then
    echo "Usage: ./level11.sh <directory> <threshold>"
    exit 1
fi

if [[ ! -d "$directory" ]];
then
    echo "Directory does not exist."
    exit 1
fi

usage=$(du -s "$directory" | awk '{print $1}')

if [[ "$usage" -gt "$threshold" ]];
then
    echo "Alert! Disk usage ($usage KB) exceeded the threshold of $threshold KB."
else
    echo "Disk usage ($usage KB) is within the threshold of $threshold KB."
fi
```

## Takeaways

### Positional Parameters

```bash
directory="$1"
threshold="$2"
```

The script accepts two arguments:

* `$1` = directory path
* `$2` = threshold value

Example:

```bash
./level11.sh ~/Arena_Boss 15
```

### Input Validation

```bash
[[ -z "$directory" || -z "$threshold" ]]
```

Checks whether the user provided both required arguments.

### Directory Validation

```bash
[[ ! -d "$directory" ]]
```

Checks whether the provided directory exists before trying to measure it.

### Checking Disk Usage

```bash
du -s "$directory"
```

Displays the total disk usage of the directory.

### Extracting the Usage Number

```bash
usage=$(du -s "$directory" | awk '{print $1}')
```

Stores only the numeric disk usage value in a variable.

### Numeric Comparison

```bash
[[ "$usage" -gt "$threshold" ]]
```

Checks whether the usage is greater than the threshold.

## Commands and Concepts Used

* Positional parameters (`$1`, `$2`)
* `du -s`
* `awk`
* Command substitution (`$( )`)
* `if`
* `[[ ]]`
* `-z`
* `-d`
* `-gt`
* `exit 1`

## Lessons Learned

* Learned how to check disk usage using `du`.
* Used `awk` to extract only the numeric value from command output.
* Practiced validating user input before using it.
* Learned why scripts should check for missing arguments before checking directory existence.
* Used numeric comparison to trigger an alert when disk usage exceeds a threshold.
