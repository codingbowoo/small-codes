for entry in ./p4
do
    if [ -d "$entry" ]; then
        cd $entry
        for files in ./*
        do 
            NAME=$(echo "${files#*/}")
            newName=$(echo "${NAME%.*}")
            
            #IFS="_" read -ra NAMES <<< "$entry"
            #newName="${NAMES[1]}"

            if [ -f "$newName.out" ]
            then
                for folder in ~/test/final/testcase/"${entry#*/}"
                do
                    var=1
                    for tc in $folder/i*
                    do
                        outName=$(echo "${newName}_o$var")
                        if [ -f "$outName" ]
                        then
                            echo "$outName already exits!"
                            continue
                        else
                            echo "$outName compile"
                            ./$newName.out < $tc > $outName 
                            ((var++))
                        fi
                    done
                done
            else
                echo "no compilation"
                #gcc -o $newName.out $NAME
            fi
        done
        cd ..
        #sh ../testcase/a.sh
    fi
done
