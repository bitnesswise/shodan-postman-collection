#!/bin/bash

#
# This little bash script removes the screenshots from the Readme.md file and creates another readme without them
# It also fixes the introduction text of the readme accordingly
#

sed 's/\* !\[.*\](.*)//g' Readme.md > "Readme-without-visuals.md"
sed 's/!\[.*\](.*)//g' Readme-without-visuals.md > "Readme-without-visuals-temp.md"
sed 's/lots of screenshots have been added./there is also a version of this readme with screenshots:/g' Readme-without-visuals-temp.md > "Readme-without-visuals.md"
sed 's/While.*well ://g' Readme-without-visuals.md > "Readme-without-visuals-temp.md"
sed 's/Readme-without-visuals/Readme/g' Readme-without-visuals-temp.md > "Readme-without-visuals.md"
rm -f Readme-without-visuals-temp.md
