# Level 2 Explanation

## Mission
Create a script that outputs the numbers 1 to 10, one number per line.

## Takeaways

- This is a C-style for loop using arithmetic expressions.

- General syntax:

```bash
for (( start; condition; update ))
```

- In this challenge:

```bash
for (( i=1; i<=10; i++ ))
```

- `i=1` initializes the loop variable.

- `i<=10` is the condition checked before each iteration.

- `i++` increments `i` by 1 after each iteration.

- The loop stops when the condition becomes false. After printing `10`, `i` becomes `11`, making `i<=10` false, so the loop exits.
