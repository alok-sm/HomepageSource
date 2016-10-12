echo "*** Begin: commit source ***"

git add .
git commit -m "commit at $(date)"
git push

echo "*** End: commit source, Begin: build ***"

cd _site/
jekyll build

echo "*** End: build, Begin: Commit website ***"

git add .
git commit -m "commit at $(date)"
git push  origin master

echo "*** End: Commit website ***"