gen_readme:
	echo "# GuessingGame" > README.md
	echo "" >> README.md
	echo "make last run: $$(date)" >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains: $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines of code" >> README.md