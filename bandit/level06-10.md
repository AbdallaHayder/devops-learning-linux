# Bandit Levels 6 → 10

## Level 6 → 7

### Challenge
Find the file owned by user `bandit7` and group `bandit6` with size 33 bytes.

### Commands Used

```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
cat /var/lib/dpkg/info/bandit7.password
```

### What I Learned
- `find` can filter by owner, group, and file size.
- `2>/dev/null` hides permission errors.

---

## Level 7 → 8

### Challenge
Find the password stored next to the word `millionth`.

### Commands Used

```bash
grep "millionth" data.txt
```

### What I Learned
- `grep` searches text quickly.

---

## Level 8 → 9

### Challenge
Find the only unique line in the file.

### Commands Used

```bash
sort data.txt | uniq -c
```

### What I Learned
- `sort` organizes lines.
- `uniq -c` arranges unique lines with numbers predefined..

---

## Level 9 → 10

### Challenge
Find human-readable strings preceded by several `=` characters.

### Commands Used

```bash
strings data.txt | grep "==="
```

### What I Learned
- `strings` extracts readable text from binary files.

---

## Level 10 → 11

### Challenge
Decode Base64 encoded data.

### Commands Used

```bash
base64 -d data.txt
```

### What I Learned
- Base64 encoding is common in Linux and networking.
