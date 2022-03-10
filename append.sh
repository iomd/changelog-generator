#!/bin/bash
# this script appends to end of filename apon user input

echo "Enter file name:\c"
read fname
# if file exists
if [ -f $fname ]
then
        # check file for write permission
        if [ -w $fname ]
        then
                # type text to append to file
                clear
                echo "***EXAMPLE***:"
                echo ""
                echo "# CHANGELOG"
                echo ""
                echo "## 1.0.0"
                echo "* Initial release"
                echo ""
                echo "## 1.0.1"
                echo "* NEW: Vocal Recordings"
                echo "* REMOVED: Vocal Breaths"
                echo ""
                echo "## 1.0.2"
                echo "* NEW: SFX"
                echo "* IMPROVED: Vocal Mix"
                echo ""
                echo "To cancel press ctrl+c"
                echo "To quit press ctrl+d"
                echo ""
                echo "Type What Changed on this 'Version' of the Project?"
                # append to file command
                cat >> $fname
                # add blank line for spaceing
                echo "" >> $fname
        else
                # write permission is not allowed. use "chmod u=rw,g=rw,o=rw" terminal command to set permissions to read & write for user,group,others.
                echo "You do not have permission to write to this file."
        fi
fi
