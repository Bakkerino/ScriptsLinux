#!/bin/bash

#Delen gekopieerd van https://davehope.co.uk/Blog/sorting-your-photos-with-bash/
#All credit goes to him, I just changed some of the variable names and the way the week is found.


#Source en destination directory
dir=/home/azureuser/photos
#read -p "Source dir: " dir
destdir=/home/azureuser/photos/sorted
#read -p "Destenation dir: " destdir


#Checken of de directory overeenkomt met een bestaande directory
if [ -d "$dir" ]; then
	echo "this is a valid directory"
else
	echo "this is not a valid directory"
exit
fi

for i in $(find $dir -iname "*.jpg" )
do

 	#Checken of de file bestaat
        if [ -f $i ]; then
             creationdate=$(ls -l --time-style='+%d-%m-%y' "$i" | awk '{print $6}')
	     weeknum=$(date -d "$creationdate" +%V)

	destfile=$destdir/$weeknum/$(basename $i)

	if [ ! -d $destdir/$weeknum ]; then
		mkdir "$destdir/$weeknum" -p
	fi

	if [ -f $destfile ]; then
		md5src=$(md5sum $i)
		md5src=${md5src% *}
		md5dst=$(md5sum $destfile)
		md5dst${md5dst% *}
		if [ $md5src = $md5dst ]; then
			echo "Duplicate found, discarding identical file"
			rm $i
		else
			sizeSrc=$(stat -c%s $i)
			sizeDST=$(stat -c%s $destfile)
			if [ $sizeSrc -gt $sizeDst ]; then
				echo "Duplicate found, keeping the larger file."
				mv $i $destfile
			else
				rm $i
			fi
		fi
	else
		mv $i $destfile
		echo "Moved $i to $destfile"
	fi
fi

done
