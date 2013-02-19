#! /bin/bash
# Post a blog article

filename=`ls *.md | cut -f 1 -d.`
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" 

cd /home/todd/octopress/

echo "##Start copy files"
cp ${dir}/${filename}.md source/_posts/
#cp ${dir}/.+(?!\.md) source/require/
for file in `ls ${dir}/ | grep -P "\w+(?<!\.md)$"`
do
	cp ${dir}/${file} source/require/
done
