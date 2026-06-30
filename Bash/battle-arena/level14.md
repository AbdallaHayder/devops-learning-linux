# Level 14 Explanation

## Mission

Create an interactive Bash menu that allows the user to execute different system administration tasks.

## Solution

```bash
#!/bin/bash

while true
do
    clear

    echo "1. Check disk space"
    echo "2. Show uptime"
    echo "3. List users"
    echo "4. List logged-in users"
    echo "5. Exit"

    read -p "Choose an option: " choice

    case "$choice" in
        1)
            df -h
            read -p "Press Enter to continue..."
            ;;
        2)
            uptime
            read -p "Press Enter to continue..."
            ;;
        3)
            cut -d: -f1 /etc/passwd
            read -p "Press Enter to continue..."
            ;;
        4)
            who
            read -p "Press Enter to continue..."
            ;;
        5)
            echo "Goodbye"
            break
            ;;
        *)
            echo "Invalid option."
            read -p "Press Enter to continue..."
            ;;
    esac
done
```

## Takeaways

### Infinite Menu Loop

```bash
while true
```

Keeps the program running until the user chooses to exit.

### Reading User Input

```bash
read -p "Choose an option: " choice
```

Prompts the user to enter a menu option.

### Case Statement

```bash
case "$choice" in
```

Selects and executes the appropriate command based on the user's input.

### Exit the Menu

```bash
break
```

Terminates the infinite loop when the Exit option is selected.

### Clearing the Terminal

```bash
clear
```

Refreshes the terminal before displaying the menu again, making the interface easier to read.

### Listing User Accounts

```bash
cut -d: -f1 /etc/passwd
```

Displays all user accounts configured on the Linux system by extracting the first field from `/etc/passwd`.

### Listing Logged-in Users

```bash
who
```

Displays users who are currently logged into the system.

## Commands and Concepts Used

* `while true`
* `read -p`
* `case`
* `esac`
* `break`
* `clear`
* `df -h`
* `uptime`
* `cut`
* `who`

## Lessons Learned

* Learned how to build an interactive menu-driven Bash application.
* Used `case` to execute different commands based on user input.
* Learned that `case` is cleaner than multiple `if`/`elif` statements when handling many fixed options.
* Used `while true` together with `break` to repeatedly display the menu until the user chooses to exit.
* Learned the difference between listing all Linux user accounts (`/etc/passwd`) and listing only users currently logged into the system (`who`).
* Improved the user experience by clearing the screen and pausing after each action.
