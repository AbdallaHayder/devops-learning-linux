# Level 9 Explanation

## Mission

Write a script that monitors a directory for file creation, modification, and deletion events, then logs those events with a timestamp.

## Solution

```bash
#!/bin/bash

DIR_PATH="$HOME/ArenaLogs"
log_file="$HOME/changes.log"

inotifywait -m -e create -e modify -e delete "$DIR_PATH" | while read event;
do
    timestamp="$(date "+%Y-%m-%d %H:%M:%S")"
    echo "$timestamp - $event" >> "$log_file"
done
```

## Takeaways

### Monitoring Directory Changes

```bash
inotifywait -m
```

The `-m` option puts `inotifywait` into monitor mode, allowing it to continuously watch a directory for changes.

### Selecting Events

```bash
-e create -e modify -e delete
```

The `-e` option specifies which events to monitor.

In this level, I monitored:

* File creation
* File modification
* File deletion

### Command Substitution

```bash
timestamp="$(date "+%Y-%m-%d %H:%M:%S")"
```

Command substitution stores the output of a command inside a variable.

### Logging Output

```bash
>> "$log_file"
```

The `>>` operator appends output to a file instead of overwriting it.

## Commands and Concepts Used

* `inotifywait`
* `date`
* Command substitution (`$( )`)
* Variables
* Pipes (`|`)
* `while read`
* Output redirection (`>>`)
* Event monitoring

## Lessons Learned

* Read the `inotifywait --help` page and explored the `-m` and `-e` options.
* Tested `inotifywait` manually in the terminal before writing the script.
* Discovered that monitoring a directory while writing the log file inside the same directory creates an infinite feedback loop.
* Fixed the issue by moving the log file outside the monitored directory.
* Learned that real-world monitoring scripts require careful consideration of what is being monitored and where logs are written.
