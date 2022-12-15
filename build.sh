#!/usr/bin/env bash
# Purpose: Rebuild the package zips
# Usage:
#    build.sh
# Examples:
#    ./build.sh 

rm -rf './build'
mkdir -p './build'

cp -r 'content/'* './build/.'

ls -lrt './build'

cat './index.html' | sed '$d' | sed '$d' | sed '$d' | sed '$d' > './build/index.html'
cd './build'
echo "<ol>" >> './index.html'
ls -1 *.md | while read line; do
  echo "<li><a href=\"$line\">$line</a></li>" >> './index.html'
  echo "$line" >> './index.txt'
done
echo "</ol>" >> './index.html'
echo "</body>" >> './index.html'
echo "</html>" >> './index.html'
cat './index.html'
cd ..

cp './catalogueBundlePrices.properties' './build/.'
cp './catalogueNameContentItemName.properties' './build/.'

