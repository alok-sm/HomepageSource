git add .
git commit -m "commit at $(date)"
git push


cd _site/
jekyll build
git add .
git commit -m "commit at $(date)"
git push