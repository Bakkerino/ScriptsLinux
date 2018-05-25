echo -e "*****************************************
*****************************************"
read -p "Methode en bericht: " METHODE BERICHT 
echo -e "*****************************************
******************************************"
echo "|Methode: $METHODE|"
echo "|Bericht: $BERICHT|"
git add .
git commit -m $BERICHT
echo -e "****************************************
 |Gebruikersnaam en Wachtwoord|
*****************************************"
git $METHODE origin master


