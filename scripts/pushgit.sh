echo "__________________________________________"
read -p "Methode en bericht: " METHODE BERICHT 
echo " ________________________________________"
echo "|Methode: $METHODE"
echo "|Bericht: $BERICHT"
echo "|________________________________________|"
git add .
git commit -m $BERICHT
echo " ________________________________________ "
echo "|Gebruikersnaam en Wachtwoord alstublieft|"
echo "|________________________________________|"
git $METHODE origin master


