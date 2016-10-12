printf "\n*** Begin: commit source ***\n\n"

git add .
git commit -m "commit at $(date)"
git push

printf "\n*** End: commit source, Begin: build ***\n\n"

cd _site/
jekyll build

printf "\n*** End: build, Begin: Commit website ***\n\n"

git add .
git commit -m "commit at $(date)"
git push  origin master

printf "\n*** End: Commit website ***\n\n"