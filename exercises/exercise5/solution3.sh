data=$(grep -o -E "[0-9]{4}(\/|-)(0[1-9]|1[0-2])(\/|-)(0[1-9]|(1|2)[0-9]|3[0|1])" officeInfo.txt | cut -d '-' -f 2,3)

filename="birthdate.txt"
if [ -e $filename ]; then
    rm $filename
fi

for i in $data
do
    month="${i:0:2}"
    day="${i:3:2}"
    if [[ $month == "01" ]]; then
        month="January"
    fi
    if [[ $month == "02" ]]; then
        month="February"
    fi
    if [[ $month == "03" ]]; then
        month="March"
    fi
    if [[ $month == "04" ]]; then
        month="April"
    fi
    if [[ $month == "05" ]]; then
        month="May"
    fi
    if [[ $month == "06" ]]; then
        month="June"
    fi
    if [[ $month == "07" ]]; then
        month="July"
    fi
    if [[ $month == "08" ]]; then
        month="August"
    fi
    if [[ $month == "09" ]]; then
        month="September"
    fi
    if [[ $month == "10" ]]; then
        month="October"
    fi
    if [[ $month == "11" ]]; then
        month="November"
    fi
    if [[ $month == "12" ]]; then
        month="December"
    fi

    echo "$month $day" >> $filename

done