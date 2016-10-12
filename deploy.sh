echo "\n*** Begin: commit source ***\n"

git add .
git commit -m "commit at $(date)"
git push

echo "\n*** End: commit source, Begin: build ***\n"

cd _site/
jekyll build

echo "\n*** End: build, Begin: Commit website ***\n"

git add .
git commit -m "commit at $(date)"
git push  origin master

echo "\n*** End: Commit website ***\n"