#Installeert git
sudo apt-get install git
#Vraagt variabelen op
read -p "Gebruikersnaam: " NAAM
read -p "Email: " EMAIL
read -p "Github link: " GITLINK

#Zet variabelen naam en email weg
sudo git config --global user.name $NAAM
sudo git config --global user.email $EMAIL
echo "####################################"
echo "Repository wordt aangemaakt in ~/git"
echo "####################################"

#creeert directory
sudo mkdir ~/git
#initialiseert repository
sudo git init ~/git
#wisselt van map en koppelt de repository met de git link
cd ~/git
sudo git remote add origin $GITLINK
