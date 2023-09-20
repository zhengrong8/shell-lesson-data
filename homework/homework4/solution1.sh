# Get all lines from the given CSV file.
# Expected format of CSV: <some_field>,<animal_name>,<animal_count>
text=$(cat animals.csv)

# The animal name that we are querying for is passed as the first argument to the script
query_animal_name=$1
# Initialize a counter to store the total count of the queried animal
query_cnt=0

# Loop through each line in the CSV file
for item in $text
do
    # Extract the animal name from the current line
    animal_name=$(echo $item | cut -d , -f 2)
    # Check if the extracted animal name matches our query
    if [[ $animal_name == $query_animal_name ]]; then
        # If there's a match, extract the animal count from the current line
        animal_cnt=$(echo $item | cut -d , -f 3)
        # Add the count of the current line to our total query count
        query_cnt=$(( query_cnt + animal_cnt ))
    fi
done

# Finally, display the total count of the queried animal name
echo $query_cnt
