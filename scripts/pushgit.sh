printf "Message: "
read INPUT
git add .
git commit -m "$INPUT"
printf "PUSHEN"
git push origin master


