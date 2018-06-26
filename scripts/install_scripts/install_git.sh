#Installeert git
sudo apt-get install git
#Vraagt variabelen op aan de gebruiker
#read -p "Gebruikersnaam: " NAAM
#read -p "Email: " EMAIL
#read -p "Github link: " GITLINK

#optioneel gebruiksnaam etc vastzetten
NAAM="bakkerino"
EMAIL="k.m.bakker@st.hanze.nl"
GITLINK="https://github.com/Bakkerino/ScriptsLinux.git"

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
echo "################################"
echo "Pullen van inhoud git repository"
echo "################################"
git pull origin master
