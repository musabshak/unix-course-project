all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Make run on: $(shell date)" >> README.md
	echo "Number of lines of code in guessinggame.sh: $(shell cat guessinggame.sh | wc -l)" >> README.md


clean:
	rm README.md
