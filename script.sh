#!/bin/bash

# script.sh

#!/bin/bash

echo "Hello world!"
# Assuming apps_in_json_format contains the JSON array
projects="project1 project2" 
apps_in_json_format=$(echo $projects| jq -Rc 'split(" ")')

# Count the number of elements in the JSON array
num_projects=$(echo "$apps_in_json_format" | jq 'length')

# Print the result
echo "Number of projects: $num_projects"

if [ "$num_projects" -gt 1 ]; then
    exit 1
    echo "something"
elif [ "$num_projects" -eq 1 ]; then
    echo $apps_in_json_format
fi
