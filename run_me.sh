#!/bin/bash

{
echo "# Notes, slides and stuff"
echo " "
echo "## Articles"
echo " "
} > README.md
find . -name "*.article" | while read -r line; do
    A_LINK=$(echo '- ' && echo "$line" | cut -d "." -f 2 -f 3 | xargs -L 1 echo " http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' ')
    echo "$A_LINK" >> README.md
done
{
echo " "
echo "## Slides"
echo " "
} >> README.md
find . -name "*.slide" | while read -r line; do
    A_LINK=$(echo '- ' && echo "$line" | cut -d "." -f 2 -f 3 | xargs -L 1 echo "http://go-talks.appspot.com/github.com/jecnua/notes-presentations" | tr -d ' ')
    echo "$A_LINK" >> README.md
done
