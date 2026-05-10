# Linux File System Notes

## Navigation Commands

### pwd
Prints the current working directory.

```bash
pwd
```

---

### ls -la
Lists all files including hidden files with detailed permissions.

```bash
ls -la
```

---

### cd
Changes directory.

```bash
cd /var/log
```

---

## File Operations

### touch
Creates an empty file.

```bash
touch test.txt
```

---

### mkdir
Creates directories.

```bash
mkdir -p projects/demo
```

---

### cp
Copies files or directories.

```bash
cp test.txt projects/demo/
```

---

### mv
Moves or renames files.

```bash
mv file.txt backup.txt
```

---

### rm
Removes files.

```bash
rm backup.txt
```

---

## Useful Discovery

### Hidden Files
Files beginning with `.` are hidden in Linux.

Example:

```bash
.bashrc
.profile
```

Use:

```bash
ls -la
```

to view them.

---

## What I Learned

Linux navigation becomes much faster when working entirely from the terminal instead of a graphical interface.
