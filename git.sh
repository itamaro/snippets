# Rewrite the commit date of last commit with arbitrary date
export WHEN="$( date -R --date "yesterday 12:34:56 am" )"
GIT_COMMITTER_DATE="$WHEN" git commit --amend --date "$WHEN"

# List remote branches
git branch -r

# Cleanup local references to deleted remotes
git remote prune origin
# or do this automatically with fetch
git fetch -p

# List remote branches that were merged / not-merged to master
git checkout master
git branch -r --merged
git branch -r --no-merged

# Delete a remote branch "foo"
git push origin --delete foo

# List branches that were merged / not-merged with last commit date & author,
# sorted by the last commit date on the branch, from most recent to least
for branch in $( git branch -r --merged | grep -v HEAD ); do echo -e $( git show --format="%ci %cr %an" $branch | head -n 1 ) \\t$branch; done | sort -r
for branch in $( git branch -r --no-merged | grep -v HEAD ); do echo -e $( git show --format="%ci %cr %an" $branch | head -n 1 ) \\t$branch; done | sort -r
