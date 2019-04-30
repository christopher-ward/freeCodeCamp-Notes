#!/bin/bash
# Show status of git and prompt User for commit message to commit all the new changes to git and push to github
# Also create conditionals to check for lack of message and also if User wishes to cancel commit after seeing status.

git status

read -p 'commit -m ' varCommit

if [ -z "$varCommit" ]; then
	echo "Please put in a commit message."
	exit
elif ["$1" == "n"]; then
	echo "You canceled the script."
	exit
else
	echo $varCommit
fi

#git add .

#git commit -m ""$1""

#git push

echo "After the conditional."



