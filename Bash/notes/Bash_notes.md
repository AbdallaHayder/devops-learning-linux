# What is Bash?
```
A command-line tool to interact with your computer
```

# What is bash script?
```
A file containing a series of commands you want the computer to execute automatically
```

# Why Learn it?
```
Automate tasks, Manage systems, and Boost efficiency.
```

# Getting Started:

1. Shebang (#!):
- The shebang, also known as hash bang or interpreted directive.
- The first line in your script: #!/bin/bash
- It tells the computer to use Bash to run the script.

2. Run Your Script:
- Make it executable: chmod +x your_script.sh
- Run it: ./your_script.sh
or
sh your_script.sh 
bash your_script.sh 
If you didn't specify the shebang inside your script

# Benifits of Shebang:
- It specifies the shell/interpreter to handle the script
- It enables consistent executional scripts across different environment regardless of whatever shell you're using. (Even as I'm using the zsh shell)
- You can specify different interpreters for different types of scripts.

# Basic Concepts:
* Variables:
	- Store Values: *name="Ahmed"*
	- Use them: *echo "Hello, $name"
* Comments:
	- Add explanations with *#*.
	Example: # This line says hello
* Conditionals:
	- Make decisions with *if* statements.
	Example:
```
if [ $name == "Alice" ]; then echo "Hi Alice!" fi
```

* Loops:
	- Repeat actions with *for* or *while*.
	Example:
```
for i in 1 2 3; do echo "Number $i" done
```

* Functions:
	- Group commands for reuse.
	Example:
```
greet() { echo "Hello, $1!" } greet "Alice"
```

* User Input:
	- Get input from users.
compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "Checksums match. File is intact."
    else
        echo "Checksums do not match. File integrity is compromised."
    fi 
}

compare_checksums "123" "123"	Example:
```
read -p "Enter your name: " name echo "Hello, $name!"
```

-----------------------------------------------------------------------------

Files ending in .sh means they are bash scripts.

* #!/usr/bin/python3
A directive to the operating system to interpret the script as a python script.

*  #!/usr/bin/ruby
A directive to the operating system to interpret the script as a ruby script.

-----------------------------------------------------------------------------

# Comments in scripts.

In Bash, there are two types of comments:
1) single line comment -->  #          2) multi-line comment --> :'         ' 


-----------------------------------------------------------------------------

# Running Scripts from ANYWHERE!

- To do so, you place the script in one of the directories that's in our PATH environment variable.
- PATH: is an environment variable that tells the shell which directories to search for executable files in response to commands.

- echo $PATH any directories seperated by colons can have executable files in them. One common directory to place executable files is /usr/local/bin/
- Steps: 
1- sudo mv your_script.sh /usr/local/bin/shortcut-name-for-script
2- sudo chmod +x /usr/local/bin/shortcut-name-for-script

------------------------------------------------------------------------------

# if Statements

- if statements start with if > condition > then > code block being executed > fi
*if condition*
*then*
	# Code block beind executed
*fi*

- Conditions in if statements are formed using comparision operators, ex:
# eq = equals "="
# ne = not equal to "!="
# lt = less than "<"
# gt = greater than ">"
# le = less than or equal to "<="
# ge = greater than or equal to ">="

- Logical operators :
# && = AND
# || = OR

------------------------------------------------------------------------------

# else and elif

# else :
*if [ condition ]*
*then*
        # Code block if condition is true
*else*
	# Code block if condition is false
*fi*

# elif:
*if [ condition ]*
*then*
        # Code block if condition is true
*elif [ condition ]*
*then*
        # Code block if condition is false
*elif [ condition ]*
*then*
        # Code block if elif1 condition is false
*else*
	# Code block if elif2 condition is false
*fi*

------------------------------------------------------------------------------


# Nested if Statements

*if [ condition ]*
*then*
    # Code block if condition is true
   *if [ condition ]*
   *then*
      # Code block if if1 condition is true 
   *else*
      # Code block if if2 condition is false
   *fi*
*else*
        # Code block if1 condition is false
*fi*

------------------------------------------------------------------------------

# while Loops

*while* [ condition ]
*do*
	# Code block while condition is true
*done*

example:
fruits=("apple" "banana" "orange)
index=0

while [ $index -lt ${#fruits[@]} ]
do
	echo "Fruit: ${fruits[index]}"
	((index++))
done

------------------------------------------------------------------------------

# for Loops

*for* [ variable ] *in* [ sequence ]
*do*
	# Code block to be executed
*done*

example:
*for* (( i=1; 1<=5; i++ ))
*do*
	echo "Number: $i"
*done*

------------------------------------------------------------------------------

# break and continue
- break : Exits the loop.
- continue : Skips the rest of iteration and moves onto the next.


------------------------------------------------------------------------------

# Basics of Functions

function_name() {

	# Code block to be executed
}

function_name 

------------------------------------------------------------------------------

# Parameters
- There are two types of Parameters:
	- Positional Parameters *allows to pass data to functions and access them using numbered variables like $1 & $2*
	- Special Parameters *provides additional information about the script and the arguments passed to it, such as $#, $0 and $@*
example:
greet_person() { *function*
   local name=$1 *positional parameter = name*
   echo "Hello, $name"
}

greet_person "Ahmed" *Calling the function with an "Ahmed" as an argument*

print_args() {
   echo "Numnber of arguments: $#" *special parameter*
   echo "Script name: $0" *special parameter* *special parameter*
   echo "First argument : $1" *positional parameter*
   echo "Second argument: $2" *positional parameter*
   echo "All arguments: $@" *special parameter*
}

print_args "Alice" "Bob" "Ahmed"

------------------------------------------------------------------------------

# User Inputs

- read takes user input from users
example:
greet() {
   local name

   if [ $# -eq 0 ]; then
     echo "What is your name?"
     read name
   else
     name="$1"
   fi

   echo "Hello, $name!"
}

greet 

------------------------------------------------------------------------------

# Handling Bad Data

- Bad data refers to:
   -Invalid user inputs
   -Unexpected user inputs

*if [[ ! $age =~ ^[0-9]+$ ]]* the ^[0-9]+$ is an irregular expression to check if the parameter is a number
return 1 = is a non 0 exit code (suggesting that we have encountered an error)
*exit_code=$?* = will deal with the return 0/1 through an *if* statement

- sanitized_input=${input//[^a-zA-Z0-9]/} = pattern substitution to remove any characters that are not alphanumeric

------------------------------------------------------------------------------

# Piping

- Piping allows us to pass the outout of one command as an input for another command. 
- Piping within functions enables us to perform advanced data operations and store the results in variables.
- You can combine piping with other commands or functions to create more complex data manipulation pipelines.

------------------------------------------------------------------------------

# Introduction to Error Handling

- Error handling in scripts is about foreseeing where things can go wrong and taking appropriate measures to handle those situations rather than letting the scrip crash or continue in an erroneous state.

------------------------------------------------------------------------------

# if Statements Recap for Error Handling

if [ $num2 -eq 0 ]; then
     echo "Error: Division by zero is not allowed"
     exit 1 # (this exits from the script)
 fi

------------------------------------------------------------------------------

# Exit Codes

- 0 = indicates success
- 1 or any other number = indicates error
example:
#!/bin/bash
command -v git 2>/dev/null
if [[ $? -ne 0 ]]; then
    echo "git is not installed. Please install git."
    exist 1
else
    echo "git is installed."
fi

# command: to check if a binary is installed
# -v: dash view option to check if a command exists in the system
# git: checking whether git exists or not
# 2>/dev/null: silencing the output by sending it to /dev/null

------------------------------------------------------------------------------
# Set -e

- Set -e will force the script to stop executing as soon as any command returns a non-zero exit code.


------------------------------------------------------------------------------
# Set -u

- set -u forces the script to stop if it encounters an uninitialized variable.
- It prevents your script from running into potential problems due to missing data

------------------------------------------------------------------------------
# Set -x

- set -x prints each command that will be executed to the terminal before it is actually executed.
- set +x disables the option of debugging your script.

------------------------------------------------------------------------------
# Set -eux

- set -eux combines all -e -u -x in one line

------------------------------------------------------------------------------
# More Set Commands

- set -o nounset (no unset) similar to -u it helps you catch uninitialized variables.
- set -o errexit (error exit) similar to -e it causes the shell to exit if any invovked command fails.
- set -o pipefail causes the pipeline to return the exit status of the last command in the pipeline that exited with non-zeri status.
- So with set -o pipefail, a failure is propagated and causes the entire pipeline to fail.

------------------------------------------------------------------------------
# Change PATH Permanently

- The path environment variable is a critical system variable that specifies the directories where the shell should look for executable files.
- Changes made to PATH in the terminal are temporary and lost when the shell session ends.
- To make it permemant you add it to ZSHRC or BASHRC file.
How to add permenantly in zshrc:
	echo "export PATH=$PATH:~/your_script_directory" >> ~/.zshrc
	Then relod ZSHRC file: 
	source ~/.zshrc
Done

-Same steps for bashrc, only difference you add it to /.bashrc

------------------------------------------------------------------------------
# Reading Environment Variables

- To access an environment variable you propend it by the dollar sign $
- You can environment variable to local variables within our scripts to reference them later.

------------------------------------------------------------------------------
# Standard Environment Variables

- Standard environment variables provide valuable information about the system, user, and runtime environment.
- Some standard environment variables: 
- $LOGNAME = represents the login name of the current user.
- $SHELL = which stores the path of the current user's shell. 
- $PWD = to print the current working directory.
- $PATH = For the systems executable search paths.
- $LANG = for the default language settings.

------------------------------------------------------------------------------
# Reading Files

- Reading files is an important task that allows us to access and extract valuable information from various type of files.
example(1):
*reading files using simple redirection*
read_file() {
    local file_path="$1"

    while IFS= read -r line; do
        echo "$line"
    done < "$file_path"
}

read_file "./log.txt"
# IFS = (Internal Field Separator) ensures that leading and trading white spaces characters are preserved.
# read = a command that reads each line of the file.
# -r = prevents back slashes from being interpreted as escape characters.


example(2);
*Using cat command to process line by line*
process_file() {
    local file_path="$1"

    cat "$file_path" | while IFS= read -r line; do
        echo "Processing line: $line"
        # additional processing logic
    done
}

process_file "./log.txt"


------------------------------------------------------------------------------
# Writing Files

- writing files allows us to create, modify and store information in various formats.
example:
*Creating a file and writing data to it using simple redirection*
write_to_file() {
    local file_path="$1"
    local data="$2"

    echo "$data" > "$file_path"
}

write_to_file "read.txt" "Hello"

------------------------------------------------------------------------------
# File Checksums

- Checksums: are cryptographic hashes that provide a unique fingerprint for a file, which allows us to verify the authenticity of the file
- Each file has a file checksum that is different from another file.
example:
calculate_md5sum "read.txt"
example:
calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path"

}

calculate_md5sum "read.txt"

- Another command for generating checksums is sha256sum
- Make sure to brute force install sha256sum command

calculate_sha256sum() {
    local file_path="$1"
    msha256sum "$file_path"

}

calculate_sha256sum "read.txt"

- Checksums are also useful for comparing different checksums to check the integrity of a file over time or across different systems.
example:
compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "Checksums match. File is intact."
    else
        echo "Checksums do not match. File integrity is compromised."
    fi 
}

compare_checksums "123" "123"