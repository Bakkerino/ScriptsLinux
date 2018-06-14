#Dit scripts is gemaakt om de Hostnaam en ip input te ontleden uit de salt server
#dit om monitor servers automatisch te deployen met salt
INPUT="string1: string2"
OUTPUT="$(cut -d':' -f2 <<< $INPUT)"

echo $OUTPUT
