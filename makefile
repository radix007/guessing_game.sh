all : Readme.md

Readme.md :
	
	echo  "# Guessing Game Using Bash " > Readme.md
	echo  ""
	echo  "### Date and Time at which make was run ::"  >> Readme.md
	echo  ""
	date >> Readme.md
	echo  ""
	echo  "#### Number of lines of code contained in guessinggame.sh ::" >> Readme.md
	wc -l guessinggame.sh  | egrep -o "[0-9]+" >> Readme.md

clean :
	rm Readme.md
