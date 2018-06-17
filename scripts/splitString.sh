#Dit scripts is gemaakt om de Hostnaam en ip input te ontleden uit de salt server
#dit om monitor servers automatisch te deployen met salt

INPUT="string1: string2 string3: string4"
#OUTPUT="$(cut -d' '  -f3 <<< $INPUT)"
for string in $INPUT; do
	IFS=' ' read -a OUTPUT <<< "${INPUT}"
	echo ${OUTPUT[0]} | tr -d
done
