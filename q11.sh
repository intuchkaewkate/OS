for file in $(find . -type f -name "*.c")
do
    trimmedName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    gcc -o $trimmedName $file
    if [ -f $trimmedName ]
    then
        if [ `./$trimmedName` = "20" ]
        then
            printf "%s\t%s\n" $file "10"
        else
            printf "%s\t%s\n" $file "7"
        fi
    else
        printf "%s\t%s\n" $file "5"
    fi
done 