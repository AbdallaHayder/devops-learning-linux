# Bandit Levels 31 → 33

## Level 31 → 32

### Challenge
Push a specific file to the remote Git repository.

### Commands Used

```bash
echo "May I come in?" > key.txt
git add -f key.txt
git commit -m "Add key file"
git push
```

### What I Learned
- `.gitignore` can block files from being added.
- `git add -f` forces Git to track ignored files.
- Git remotes can validate pushed content automatically.

---

## Level 32 → 33

### Challenge
Escape the uppercase shell.

### Commands Used

```bash
$0
whoami
cat /etc/bandit_pass/bandit33
```

### What I Learned
- `$0` runs the current shell.
- Using commands that are not affected by uppercase to escape uppercase shell.
- Restricted shells may still expose escape methods.
- Understanding shell behavior is important in Linux security.

---

## Final Thoughts

Completing the Bandit wargame improved my Linux command-line skills significantly. I practiced:

- File navigation
- Permissions and ownership
- Networking tools
- Text processing
- SSH and authentication
- Git and version control
- Shell behavior and troubleshooting

Bandit was a practical way to build confidence using Linux in real scenarios.
