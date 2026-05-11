# Process Management Notes

## Viewing Running Processes

```bash
ps aux
```
Shows all running processes on the system.

```bash
ps aux | grep ssh
```
Searches for processes related to SSH.

---

## Real-Time Monitoring

```bash
top
```
Displays real-time system usage and running processes.

```bash
htop
```
Improved interactive version of `top`.

---

## Background Jobs

```bash
sleep 100 &
```
Runs a process in the background.

```bash
jobs
```
Lists background jobs.

```bash
fg %1
```
Brings background job 1 to the foreground.

```bash
bg %1
```
Sends a stopped job back to the background.

---

## Killing Processes

```bash
kill PID
```
Terminates a process using its PID.

```bash
killall sleep
```
Kills all processes named `sleep`.

---

## What I Learned

- Every running program is a process.
- Linux assigns each process a PID.
- Processes can run in foreground or background.
- `top` and `htop` are useful for monitoring system activity.
- `grep` can be combined with `ps` to search for specific processes.
