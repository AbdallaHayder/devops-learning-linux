# Bash Scripting Challenges

This folder contains the scripts I completed during the Bash Scripting module of my DevOps learning journey.

The challenges focused on automating common Linux tasks using Bash while reinforcing core scripting concepts such as variables, conditional statements, loops, file operations, user input, and command-line utilities.

---

## Scripts Included

### 1. Arithmetic Calculator (`calculator.sh`)
A simple calculator that:

- Prompts the user for two numbers
- Performs addition, subtraction, multiplication, and division
- Prevents division by zero

---

### 2. File Operations (`file_operations.sh`)

Automates basic file management by:

- Creating a directory
- Creating a text file
- Writing the current date to the file
- Displaying the file contents

---

### 3. File Permission Checker (`file_permissions.sh`)

Checks whether a file:

- Exists
- Is readable
- Is writable
- Is executable

Also supports paths beginning with `~`.

---

### 4. Text File Backup (`txt_backup.sh`)

Creates timestamped backups by:

- Prompting for a source directory
- Creating a timestamped backup directory
- Copying only `.txt` files
- Displaying the number of files backed up

---

### 5. System Monitor (`system_monitor.sh`)

Collects basic system information including:

- CPU usage
- Memory usage
- Disk usage
- Top 5 processes by memory usage

The report is saved to a timestamped log file.

---

## Bash Concepts Practiced

- Variables
- Command substitution
- User input (`read`)
- Positional parameters
- Conditional statements (`if`, `case`)
- Loops (`for`, `while`)
- File test operators (`-f`, `-d`, `-r`, `-w`, `-x`)
- Command-line utilities (`find`, `grep`, `awk`, `cut`, `sort`, `head`, `wc`)
- Input/output redirection (`>`, `>>`, pipes)
- Basic error handling using exit codes

---

## Key Learnings

- Automating repetitive Linux tasks with Bash
- Writing scripts that validate user input
- Working with files and directories safely
- Building timestamped backups
- Generating basic system reports
- Organizing scripts for readability and maintainability

---

## Biggest Challenge

The most challenging part was learning to combine multiple Linux commands into a single solution. Understanding how commands can work together using pipes, command substitution, and redirection was a major step forward.

---

## Why Bash Matters in DevOps

Bash is one of the core tools used by DevOps engineers. It enables automation of system administration tasks, deployment workflows, backups, monitoring, and CI/CD pipelines. Learning Bash provides a strong foundation for working with Linux servers and cloud environments.

---

## Additional Practice

Before completing these challenges, I also completed a 15-level Bash Battle Arena consisting of progressively harder scripting exercises covering:

- Variables
- Loops
- File manipulation
- Log parsing
- Backup rotation
- Menu-driven scripts
- Configuration file parsing
- Disk usage monitoring

This additional practice helped reinforce the concepts used throughout these challenges.