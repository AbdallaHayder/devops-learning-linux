# Bandit Levels 16 → 20

## Level 16 → 17

### Challenge
Find the correct SSL service running on localhost.

### Commands Used

```bash
nmap localhost -p 31000-32000
```
or
```
nmap -p 31000-32000 localhost
```

Then connected using:

```bash
openssl s_client -connect localhost:31790
```

Used the returned SSH private key to log in.

### What I Learned
- `nmap` scans ports and services.
- SSL services can be tested with OpenSSL.

---

## Level 17 → 18

### Challenge
Find the password difference between two files.

### Commands Used

```bash
diff passwords.old passwords.new
```

### What I Learned
- `diff` compares files line by line.

---

## Level 18 → 19

### Challenge
The shell automatically logs out after login.

### Commands Used

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```

### What I Learned
- Commands can be executed directly during SSH login.

---

## Level 19 → 20

### Challenge
Use a setuid program to read the next password.

### Commands Used

```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```

### What I Learned
- Setuid programs run with the permissions of the file owner.

---

## Level 20 → 21

### Challenge
Use a local listening port to send the password.

### Commands Used

Terminal 1:

```bash
nc -lvp 444
```
or
```
nc -l -p 1234
```

Terminal 2:

```bash
./suconnect 4444
```
or
```
./suconnect 1234
```

### What I Learned
- Netcat can listen for incoming connections.
- Localhost networking is important in Linux troubleshooting.
- Ports to use are: 4444 - 5555 - 9000 - 1337 - 1234 (It just needs to be unused)
