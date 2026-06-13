# Level 1 Explanation

Mission: 
	Create a directory named Arena and then inside it, create three files: warrior.txt, mage.txt, and archer.txt. 
	List the contents of the Arena directory.

Takeways:
	# Takeways:
	# mkdir -p is better than plain mkdir 
	# This is called making a script idempotent which means:
	   "Running it multiple times produces the same desired state."

	# ~/Arena/{text1,text1,text3}.txt called a brace expansion.
	# A more neat representation which Bash expands into:
	# ~/Arena/text1.txt ~/Arena/text2.txt ~/Arena/text3.txt 
	
