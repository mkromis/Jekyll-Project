#!/usr/bin/env fish

# Globals
# Path to JSON file
set json_file "Settings/restore.jsonc"

# # Sanity Checks
# if not test -f $restore
#     echo "Error: File '$restore' was not found."
#     exit 1
# end


# # read portions of the settings file
# set moveFolders(jq -r '.moveFolders[]' $restore)
# #set moveFolders(jq -r '.[].moveFolders' $restore)

# # Output Test
# for moveFolder in moveFolders
#     echo " * '$moveFolder'"
# end

# # $argv holds all arguments passed to the script
# echo "All arguments: $argv"

# # Access individual arguments
# echo "First argument: $argv[1]"
# echo "Second argument: $argv[2]"

# # Access a range (from 2nd to last)
# echo "Remaining arguments: $argv[2..-1]"

# Check if file exists
if not test -f $json_file
    echo "Error: Setting file: '$json_file' not found."
    exit 1
end

# Read and parse JSON using jq

# Extract array values into a Fish list
set folders (jq -r '.foldersToMove[]' $json_file)

# Output results
echo "Moving Folders:"
for folder in $folders
    echo " * $folder"
end
