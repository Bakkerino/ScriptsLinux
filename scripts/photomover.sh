#!bin/bash

echo "Hello, welcome to photoMoverV1. Enjoy your time!"

dir=$1

if [ -d "$dir" ]; then
echo "This is a valid directory."
else
echo "This is not a valid directory, please try again."
exit
fi

for i in "$dir"/*
do
#Registreer filenaam
filename="${i##*/}"
echo $filename

#Datum uitrekenen
creationdate=$(ls -l --time-style='+%d-%m-%y' "$i" | awk '{print $6}')
weeknum=$(date -d "$creationdate" +%V)
echo $weeknum
if [[ $(find . -wholename "$filename"] -mtime +100 -print) ]]; then

mkdir "$dir/$num"

fi
#copyfile
#cp "$i" "$dir/$num/$filename"
done

#creationdate=$(ls -l --time-style='+%d-%m-%y' "$i" | awk '{print $6}')
#weeknum$(date --date="$creationdate")

#if [[ $(find"$filename" -mtime +100 -print) ]]; then

#mkdir "$dir/$num"

#fi
#copyfile
#cp "$i" "$dir/$num/$filename"

#check hash
#originalhash=$(sudo md5sum "$i" | cut -d " " =f1)
#movedhash=$(sudo md5sum "$dir/$num/$filename" | cut -d " " -f1)

#remove file
#sudo rm "$i" 


