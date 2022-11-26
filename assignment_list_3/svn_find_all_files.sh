# Mateusz Pelechaty 261737
#!/bin/bash

rev="$1"
dir="$2"

# loop over the files in this directory recursively
for file in $(svn ls $dir -R -r "$rev"); do
    # if it is not a directory — print out its full path
    if [ "${file: -1}" != "/" ]; then
        echo $file
    fi
done
