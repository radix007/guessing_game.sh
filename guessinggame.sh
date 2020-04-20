#!/usr/bin/env bash
# File : guessinggame.sh

z=$(ls -l | wc -l ) 
echo "How Many Files Are in The Current Directory ??? "
echo "Please Enter Your Guess ::" 
read numfiles
echo "" 
function guess { 
echo "Please Enter Your Guess ::" 
read numfiles
echo ""
}
while [[ $numfiles -ne $z ]] 
do
if [[ $numfiles -gt $z ]] 
then 
	echo "Guess Too High , Please Try Again "
	echo "" 
        guess
elif [[ $numfiles -lt $z ]]
then
	echo "Guess Too Low , Please Try Again"
	echo ""
 	guess
fi
done
	echo "Congratulations! $numfiles is the correct answer"
