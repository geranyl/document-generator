#!/bin/bash

#=====================================================================
#          FILE:  buildpandoc.sh
#         USAGE:  Run manually to generate html output
#   DESCRIPTION:  Uses Pandoc to pull together Markdown documents
#                 and process them with Pandoc to generate a website
#                 including directory contents as a toc
#        AUTHOR:  modification of the CV generator example
#                 by Scott Granneman (RSG), http://www.chainsawonatireswing.com/2013/05/28/how-i-create-manage-my-cv-using-markdown-pandoc/
#       VERSION:  0.1
#       CREATED:
#      REVISION:
#=====================================================================

###
## Variables
#

# Directory for MD Files
mdDir="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"

# Directory for HTML output
buildDir="${mdDir}builds"

echo $buildDir


# Markdown content
contentDir=content

toc=$(echo -e "\t<ul class=\"nav\">\r")


###
## Remove all files from the builds folder
#
rm -rf $buildDir/*


###
## Create HTML files for each Markdown file
#


for i in $(find "$mdDir$contentDir" -name '*.md');do
    echo "$i";

    # Get subdirectories
    thedir=$(dirname "$i")
    subfolders=${thedir#*"$contentDir"*}
    if [[ "$subfolders" != "" ]] ; then
        mkdir -p $buildDir/$subfolders
        subfolders="$subfolders/"
    else
        subfolders="/"
    fi

    #build a table of main contents using file names for links
    filefull=$(basename "$i")
    directory=$(dirname "$i")
    extension="${filefull##*.}"
    filename="${filefull%.*}"
    buildpath="$buildDir"${directory#*"$contentDir"*}"/$filename.html"
    #create a link title from the file name
    linktext=$(echo $filename | awk 'BEGIN{ FS = "_" }{mystr=""; for (i=1; i<=NF; i++) {mystr=mystr" "toupper(substr($i,1,1))substr($i,2)}; print mystr}')
    linktext=${linktext: 1} #remove extra white space in front of text
    #build the absolute link to webroot
    link=${buildpath#*"$buildDir/"*}
    #assign item to main toc
    toc="$toc$(echo -e "\t\t<li><a href=\"/$link\">$linktext</a></li>\r")"
     # Get the name of the file, sans extension, for generating HTML file
    fileBuildName=$(basename "$i" .md)
    # Convert to HTML
    pandoc --template=$mdDir/template.html  -o $buildDir$subfolders$fileBuildName.html $i  --highlight-style=pygments --variable=desc:'tips for js' --variable=contents:'<a href="tips.html">Tips</a>'
    pandoc --template=$mdDir/template.html  -o $buildDir$subfolders$fileBuildName.html $i  --highlight-style=pygments --toc -t html5
done

toc=$(echo -e "$toc\r\t</ul>")


for f in $(find $buildDir -name '*.html'); do
   sed -i '' "s;__mastertable;$toc;" "$f"
done



###
## Copy Files from main to builds
#

cp -r $mdDir/css $buildDir/css
cp -r $mdDir/images $buildDir/images



