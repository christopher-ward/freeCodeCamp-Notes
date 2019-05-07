# !/bin/bash
# Show status of git and prompt User for commit message to commit all the new changes to git and push to github
# Also create conditionals to check for lack of message and also if User wishes to cancel commit after seeing status.
echo ""

git status

echo ""
echo "Enter 'n' to cancel"
echo ""
read -p 'commit -m ' varCommit

if [ -z "$varCommit" ]; then
	echo ""
	echo "Please put in a commit message."
	exit
elif [ "$varCommit" == "n" ] || [ "$varCommit" == "'n'" ]; then
	echo ""
	echo "You canceled the script."
	exit
else
	echo 'Thanks!'
	echo ""
fi

git add .

git commit -m "$varCommit"

git push

echo ""
git status
echo ""

echo "------------------------------Script Complete------------------------------"
echo ""
echo "commit -m: $varCommit"
echo ""
echo "Pushed to github"

exit
