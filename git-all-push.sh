#!/bin/bash
# Show status of git and prompt User for commit message to commit all the new changes to git and push to github
# Also create conditionals to check for lack of message and also if User wishes to cancel commit after seeing status.

git status

read -p 'commit -m ' varCommit

#if [ -z "$varCommit" ]; then
#	echo "Please put in a commit message."
#	exit
#elif [""$varCommit"" == "n"]; then
#	echo "You canceled the script."
#	exit
#else
#	echo ""$varCommit""
#fi

git add .

git commit -m "$varCommit"

git push

git status

echo "It's done."



