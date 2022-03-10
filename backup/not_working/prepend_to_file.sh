# prepend a string to a file
#
# usage
# . prepend_to_file
#
echo "Enter the filename";
read fname;
echo "Entry:";
read changelog_prepend_entry;
echo -e "$changelog_prepend_entry\n$(cat $fname)" > $fname;
