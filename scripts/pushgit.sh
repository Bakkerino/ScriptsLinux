echo -e "
*************************************************
*************************************************
"
read -p "Bericht: " BERICHT 
echo -e "
*************************************************
*************************************************
"
git add .
git commit -m $BERICHT
echo " ________________________________________ "
echo "|Gebruikersnaam en Wachtwoord alstublieft|"
echo "|________________________________________|"
git push origin master


