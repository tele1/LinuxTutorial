#!/bin/bash


# Destiny: 		    Script to convert .md files (markdown) to html files. 
#
# Licence: GNU GPL v3
# Version: 1
# Dependencies:     This script uses Markdown.pl script which should be delivered together or just download new file from http://daringfireball.net/projects/markdown/
#                   However Markdown.pl it is not my property and I am not responsible for any errors contained therein.
#
# Script use:       bash convert.md.html.sh





mkdir -p HTML/DATA

cd ..
echo "File = MD/Menu.md"
cat MD/Menu.md | sed  's/.md)/.html)/g' | perl Convert.MD.to.HTML/Markdown.pl --html4tags  > Convert.MD.to.HTML/HTML/Menu.html

for K in MD/DATA/*.md ; do
    echo "File = $K"
    FILE_WITHOUT_PATH="${K##*/}"
    FILE_WITHOUT_EXTENSION="${FILE_WITHOUT_PATH%.md}"
    perl Convert.MD.to.HTML/Markdown.pl --html4tags $K > Convert.MD.to.HTML/HTML/DATA/${FILE_WITHOUT_EXTENSION}.html 
    
    ####  Pandoc Converts "list" in file.md wrong
    #pandoc -f markdown "$K" > HTML/${K}.html
done 

echo " - Files should be in HTML folder now."
echo " - You can open ready html file in web browser."

