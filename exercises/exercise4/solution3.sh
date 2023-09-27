filename="fullroster.csv"

for group_id in $(seq 1 9)
do
        output_file="rosters_group$group_id.csv"
        echo "Group $group_id" > $output_file
        echo "Name Email_Address" >> $output_file
        cat fullroster.csv | grep $group_id | cut -d ' ' -f 1,2 >> $output_file
done
