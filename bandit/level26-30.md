# Bandit Levels 26 → 30

## Level 26 → 27

### Challenge
Escape the restricted shell and retrieve the password.

### Commands Used

```bash
:set shell=/bin/bash
:shell
```

Then:

```bash
cat /etc/bandit_pass/bandit26
```

### What I Learned
- Vim can launch shell commands.
- Restricted environments may still have escape paths.

---

## Level 27 → 28

### Challenge
Clone a Git repository and find the password.

### Commands Used

```bash
git clone ssh://bandit27-git@localhost/home/bandit27-git/repo
cd repo
cat README
```

### What I Learned
- Git repositories can contain sensitive information.
- `git clone` copies repositories locally.

---

## Level 28 → 29

### Challenge
Find hidden information in Git commit history.

### Commands Used

```bash
git log
git show <commit-id>
```

### What I Learned
- Old commits may contain deleted secrets.
- Git history is very important in security investigations.

---

## Level 29 → 30

### Challenge
Check other Git branches for hidden information.

### Commands Used

```bash
git branch -a
git checkout dev
cat README.md
```

### What I Learned
- Different branches can contain different project states.
- `git checkout` switches branches.

---

## Level 30 → 31

### Challenge
Find hidden information stored in Git tags.

### Commands Used

```bash
git tag
git show secret
```

### What I Learned
- Git tags can reference important commits or hidden data.
- `git show` displays objects inside Git repositories.
