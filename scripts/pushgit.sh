echo "__________________________________________"
printf "Bericht: "
read INPUT
echo "#######################################"
git add .
git commit -m "$INPUT"
echo " ________________________________________ "
echo "|Gebruikersnaam en Wachtwoord alstublieft|"
echo "|________________________________________|"
git push origin master


