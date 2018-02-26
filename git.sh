# Rewrite the commit date of last commit with arbitrary date
export WHEN="$( date -R --date "yesterday 12:34:56 am" )"
GIT_COMMITTER_DATE="$WHEN" git commit --amend --date "$WHEN"
