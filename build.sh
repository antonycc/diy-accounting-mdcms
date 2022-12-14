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
ls -1 *.md | while read line; do
  echo "<a href=\"$line\">$line</a><br/>" >> './index.html'
  echo "$line" >> './index.txt'
done
echo "</body>" >> './index.html'
echo "</html>" >> './index.html'
cat './index.html'
cd ..
