# Bandit Levels 11 → 15

## Level 11 → 12

### Challenge
Decode ROT13 encrypted text.

### Commands Used

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

### What I Learned
- `tr` translates characters from one set to another.
- ROT13 shifts letters by 13 positions.

---

## Level 12 → 13

### Challenge
Extract a repeatedly compressed file.

### Commands Used

```bash
file data.txt
mv data.txt data.gz
gzip -d data.gz
```

Repeated with:
- `bzip2`
- `tar`
- `gzip`
- `xxd`

### What I Learned
- `file` identifies actual file types.
- File extensions can be misleading.
- Linux compression tools are important for troubleshooting.

---

## Level 13 → 14

### Challenge
Use SSH private key authentication.

### Commands Used

```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

### What I Learned
- SSH can authenticate using key files instead of passwords.

---

## Level 14 → 15

### Challenge
Submit the current password to a local port using netcat.

### Commands Used

```bash
nc localhost 30000
```

Then pasted the password.

### What I Learned
- `nc` (netcat) is useful for testing network connections and services.

---

## Level 15 → 16

### Challenge
Connect using SSL/TLS to submit the password.

### Commands Used

```bash
openssl s_client -connect localhost:30001
```
```
(cat /etc/bandit_pass/bandit15; sleep 1) | 
```

### What I Learned
- `openssl s_client` can test encrypted services and SSL connections.
- `sleep 1` forces a 1sec delay in order for TLS handshake to complete.
