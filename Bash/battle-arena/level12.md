# Level 12 Explanation

## Mission

Write a script that reads a configuration file in the format `KEY=VALUE` and prints each key-value pair.

## Solution

```bash
#!/bin/bash

CONFIG_FILE="$HOME/Config/settings.conf"

if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "Configuration file does not exist."
    exit 1
fi

while IFS='=' read -r key value
do
    echo "Key: $key, Value: $value"
done < "$CONFIG_FILE"
```

## Takeaways

### Configuration Files

Configuration files often store settings in the format:

```text
KEY=VALUE
```

Example:

```text
USERNAME=abdalla
ENVIRONMENT=dev
PORT=8080
```

### File Validation

```bash
[[ ! -f "$CONFIG_FILE" ]]
```

Checks whether the configuration file exists before attempting to read it.

### Reading a File Line by Line

```bash
while IFS='=' read -r key value
```

Reads the configuration file one line at a time.

### IFS (Internal Field Separator)

```bash
IFS='='
```

Temporarily changes the field separator from whitespace to `=`.

This allows Bash to automatically split each line into:

* `key`
* `value`

For example:

```text
USERNAME=abdalla
```

becomes:

```text
key   = USERNAME
value = abdalla
```

### The `-r` Option

```bash
read -r
```

Prevents backslashes (`\`) from being interpreted as escape characters while reading input.

### Input Redirection

```bash
done < "$CONFIG_FILE"
```

Redirects the contents of the configuration file into the `while` loop.

This is the preferred Bash style over using:

```bash
cat file | while ...
```

## Commands and Concepts Used

* `while`
* `read`
* `read -r`
* `IFS`
* `-f`
* `[[ ]]`
* Input redirection (`<`)
* Variables

## Lessons Learned

* Learned how configuration files commonly store data using the `KEY=VALUE` format.
* Used `IFS` to split each line into multiple variables automatically.
* Practiced reading a file line by line using a `while` loop.
* Learned why `read -r` is recommended when reading text files.
* Learned that redirecting a file into a loop (`done < file`) is the preferred Bash approach over piping `cat`.
