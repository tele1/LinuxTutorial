#!/bin/bash


# Destiny: 		    Script to convert .md files (markdown) to html files. 
#
# Licence:          GNU GPL v3
# Version:          2
# Dependencies:     This script uses Markdown.pl script which should be delivered together
#                    or just download new file from http://daringfireball.net/projects/markdown/
#                   However Markdown.pl it is not my property and I am not responsible for any errors contained therein.
#
# Script use:       bash convert.md.html.sh


#=======================================================================
# Check if script starts from path ... LinuxTutorial/Convert.MD.to.HTML
Folder_Start="$(pwd)"

if ! grep -q "LinuxTutorial/Convert.MD.to.HTML$" <<< "$Folder_Start" ; then
    echo "Path: $Folder_Start"
    echo "  Error: Script need start from path LinuxTutorial/Convert.MD.to.HTML ."
    exit 1   
fi

if [ -d "HTML" ]; then
    echo "Path: $(pwd)"
    echo "  Error: Folder HTML exist."
    echo "  Remove this folder if it is old."
    exit 1 
fi

mkdir -vp HTML/DATA
cd ..

if [ ! -f "Menu.md" ]; then
    echo "Path: $(pwd)"
    echo "  Error: File Menu.md not found."
    exit 1 
fi

sed  's/.md)/.html)/g' Menu.md | perl Convert.MD.to.HTML/Markdown_1.0.1/Markdown.pl --html4tags  > Convert.MD.to.HTML/HTML/Menu.html

if [ ! -s "Convert.MD.to.HTML/HTML/Menu.html" ]; then
    echo "Path: Convert.MD.to.HTML/HTML/Menu.html"
    echo "  Error: File Menu.html is empty."
    exit 1 
fi

for K in $(find DATA -name \*.md) ; do
    echo "File = $K"
    FILE_WITHOUT_PATH="${K##*/}"
    FILE_WITHOUT_EXTENSION="${FILE_WITHOUT_PATH%.md}"
    
    FOLDER=$(dirname "$K")
    if [[ ! "FOLDER" == "DATA" ]] ;then
        mkdir -vp Convert.MD.to.HTML/HTML/${FOLDER}
    fi
    
    perl Convert.MD.to.HTML/Markdown_1.0.1/Markdown.pl --html4tags $K > Convert.MD.to.HTML/HTML/${FOLDER}/${FILE_WITHOUT_EXTENSION}.html 
    
    ####  Pandoc Converts "list" in file.md wrong
    #pandoc -f markdown "$K" > HTML/${K}.html
done 

echo " - Files should be in HTML folder now."
echo " - You can open ready HTML/Menu.html file in web browser."

