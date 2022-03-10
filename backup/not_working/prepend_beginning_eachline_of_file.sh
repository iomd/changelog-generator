# prepend a string to the beginning of each line in a file
#
# usage
# . prepend_beginning_eachline_of_file.sh
#
echo "Enter the filename";
read fname;
echo "Entry:";
read prepend_line_entry;
sed -i -e 's/^/$prepend_line_entry/' $fname
