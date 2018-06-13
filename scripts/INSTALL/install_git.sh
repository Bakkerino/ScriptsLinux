apt-get install git
read -p "Gebruikersnaam: " NAAM
read -p "Email: " EMAIL
read -p "Github link: " GITLINK

git config --global user.name $NAAM
git config --global user.email $EMAIL
echo "####################################"
echo "Repository wordt aangemaakt in ~/git"
echo "####################################"
mkdir ~/git
git init ~/git
cd ~/git
git remote add origin $GITLINK
