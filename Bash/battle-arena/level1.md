# Level 1 Explanation

## Mission: 
Create a directory named Arena and then inside it, create three files: warrior.txt, mage.txt, and archer.txt. 
List the contents of the Arena directory.

## Takeways:
```bash
mkdir -p 
``` 
- is better than plain 

```bash
mkdir
```
- This is called making a script idempotent which means:
	"Running it multiple times produces the same desired state."

```bash
~/Arena/{text1,text1,text3}.txt
```
- called a brace expansion.

- A more neat representation which Bash expands into:

```bash
~/Arena/text1.txt ~/Arena/text2.txt ~/Arena/text3.txt
```
	
