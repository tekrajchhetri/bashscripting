#!/bin/bash

DOCGENFILE="all_bash_script"

echo "#!/bin/more" > $DOCGENFILE

ls *.sh > tmpdocfile.txt

while IFS= read -r FILENAME; do
	if [ -f "$FILENAME" ]; then
		echo "===========================================" >> "$DOCGENFILE"
		echo "SCRIPT:  $FILENAME " >> "$DOCGENFILE"
		echo ""
		echo "===========================================" >> "$DOCGENFILE"
		echo "`cat $FILENAME`" >> "$DOCGENFILE" 
	fi
done < tmpdocfile.txt
chmod 755 "$DOCGENFILE"