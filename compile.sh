#entry is folders in home directory
for entry in ./*
do
    if [ -d "$entry" ]; then
        cd $entry
        #files is files in $entry directory
        for files in ./*
        do 
            # reconstruct filename 
            # check http://mindspill.net/computing/linux-notes/working-with-filenames-in-bash/
            NAME=$(echo "${files#*/}")
            newName=$(echo "${NAME%.*}")
            
            #IFS="_" read -ra NAMES <<< "$entry"
            #newName="${NAMES[1]}"
            
            gcc -o $newName.out $NAME
        done
        cd ..
    fi
done
