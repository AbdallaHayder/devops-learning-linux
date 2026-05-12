# Permissions and Ownership Notes

## Viewing Permissions

```bash
ls -l
```

Displays file permissions, owner, and group.

Example output:

```text
-rwxr-xr-x 1 root root 32 hello.sh
```

Permission breakdown:
- Owner: `rwx`
- Group: `r-x`
- Others: `r-x`

---

## Changing Permissions

```bash
chmod +x hello.sh
```

Makes a script executable.

```bash
chmod 644 file.txt
```

Sets:
- owner → read/write
- group → read
- others → read

---

## Changing Ownership

```bash
sudo chown root:root hello.sh
```

Changes file owner and group.

---

## Creating a Script

```bash
echo '#!/bin/bash' > hello.sh
echo 'echo "Hello DevOps"' >> hello.sh
```

Runs with:

```bash
./hello.sh
```

---

## Important Permission Symbols

- `r` → read
- `w` → write
- `x` → execute

---

## What I Learned

- Linux permissions control who can access files.
- Executable permissions are required to run scripts.
- `chmod` changes permissions.
- `chown` changes ownership.
- `ls -l` helps inspect permission settings quickly.
