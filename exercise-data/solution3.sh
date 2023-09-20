filename="fullroster.csv"

for group_id in $(seq 1 9)
do
	echo "Group $group_id" > "rosters_group$group_id.csv"
	echo "Name Email_Address" >> "rosters_group$group_id.csv"
	cat fullroster.csv | grep $group_id | cut -d ' ' -f 1,2 >> "rosters_group$group_id.csv" 
done
