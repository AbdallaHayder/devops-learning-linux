# Text Processing Notes

## Searching with grep

```bash
grep "error" /var/log/syslog
```

Searches for lines containing the word `error`.

```bash
grep -i "failed" /var/log/auth.log
```

Case-insensitive search for the word `failed`.

```bash
grep -r "TODO" .
```

Recursively searches for `TODO` in files.

---

## Counting Results

```bash
grep -i "failed" /var/log/auth.log | wc -l
```

Counts matching lines using pipes.

---

## Using awk

```bash
ps aux | awk '{print $1, $11}'
```

Prints the user and command columns.

```bash
cat /etc/passwd | awk -F: '{print $1, $6}'
```

Prints usernames and home directories.

---

## Using sed

```bash
sed 's/old/new/g' file.txt
```

Replaces all occurrences of `old` with `new`.

```bash
sed -n '10,20p' file.txt
```

Prints lines 10 to 20.

---

## Piping Commands

```bash
cat /var/log/syslog | grep "error"
```

Uses a pipe to send output from one command into another.

Example chain:

```bash
cat /var/log/syslog | grep "error" | awk '{print $1, $2, $3}'
```

---

## Finding Bash Users

```bash
cat /etc/passwd | grep "/bin/bash"
```

Lists users using the bash shell.

---

## What I Learned

- `grep` is powerful for searching text.
- Pipes (`|`) combine commands together.
- `awk` extracts specific columns from output.
- `sed` edits and filters text streams.
- Text processing is essential in Linux and DevOps automation.
