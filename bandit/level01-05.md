# Bandit Levels 1–5

---

## Level 0 → Level 1

### Goal
Read the password stored in the `README` file.

### Commands Used

```bash
ls
cat README
```

### What I Learned
- `ls` lists files in the current directory
- `cat` displays file contents

---

## Level 1 → Level 2

### Goal
Read the password stored in a file named `-`.

### Commands Used

```bash
cat ./-
```

### What I Learned
Files with special names may require paths like `./`.

---

## Level 2 → Level 3

### Goal
Read the password stored in a file with spaces in its name.

### Commands Used

```bash
cat "spaces in this filename"
```

### What I Learned
Quotes help handle spaces in filenames.

---

## Level 3 → Level 4

### Goal
Find the hidden file inside the `inhere` directory.

### Commands Used

```bash
cd inhere
ls -la
cat ...Hiding-From-You
```

### What I Learned
- Hidden files begin with `.`
- `ls -la` reveals hidden files

---

## Level 4 → Level 5

### Goal
Find the only human-readable file in the `inhere` directory.

### Commands Used

```bash
cd inhere
file ./*
cat ./-file07
```

### What I Learned
The `file` command identifies file types and readable content.
