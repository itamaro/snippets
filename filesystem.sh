# Figuring out some files / dirs size stats for some base dir
cd /foo/bar
# Show largest top-level directories
du -hs * | sort -rh | head
# Show largest files / dirs in entire tree
du -Sh | sort -rh | head
# Show largest files in entire tree
find -type f -exec du -Sh {} + | sort -rh | head
