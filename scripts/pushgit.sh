echo "#######################################"
printf "Message: "
read INPUT
echo "#######################################"
git add .
git commit -m "$INPUT"
echo "########################################"
echo "Gebruikersnaam en Wachtwoord alstublieft"
echo "########################################"
git push origin master


