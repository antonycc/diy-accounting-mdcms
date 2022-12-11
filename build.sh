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

cat './index.html' | sed '$d' | sed '$d' | sed '$d' | sed '$d' > './build/content.html'
cd './build'
ls -1 *.md | while read line; do
  echo "<a href=\"$line\">$line</a><br/>" >> './content.html'
  echo "$line" >> './content.txt'
done
echo "</body>" >> './content.html'
echo "</html>" >> './content.html'
cat './content.html'
cd ..
