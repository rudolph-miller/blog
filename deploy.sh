git clean -f
git fetch
git checkout gh-pages
git clean -f
git rebase master
sh build.sh
cd public
git add . -f
git commit -m "Update $(date +%s). [ci skip]"
git push origin gh-pages
