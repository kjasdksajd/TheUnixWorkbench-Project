README.md : guessinggame.sh
	echo "#Project: Bash, Make, Git, and GitHub" > README.md
	echo -n "This file was created on: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

