# Level 3 Explanation

## Mission

Write a script that checks if a file named `hero.txt` exists in the Arena directory. If it does, print `Hero found!`; otherwise, print `Hero missing!`.

## Takeaways

* Bash uses conditional statements with `if`, `then`, `else`, and `fi`.
* The `[[ ]]` syntax is commonly used for conditional tests in Bash.
* File test operators can be used to check properties of files and directories.

### File Existence Check

```bash
[[ -f file_path ]]
```

* `-f` checks whether a file exists and is a regular file.
* If the condition is true, the code inside the `then` block executes.
* Otherwise, the code inside the `else` block executes.

### Commands and Concepts Used

* `if`
* `then`
* `else`
* `fi`
* `[[ ]]`
* `-f` (file test operator)
* Variables (optional improvement using a path variable)

## Lessons Learned

* I initially tried to use an `in` operator to check whether a file was inside a directory, but Bash does not support this syntax.
* Reading the `test` manual page (`man test`) helped me discover file test operators.
* The condition should check whether the file path exists, not whether a filename is "inside" a directory.
