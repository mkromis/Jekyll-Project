#!/usr/bin/env fish

# Globals
# Path to JSON file
set json_file (realpath "Settings/restore.jsonc")

# Check if file exists
if not test -f $json_file
    echo "Error: Setting file: '$json_file' not found."
    exit 1
end


# Check if exactly 2 arguments were passed
set argc (count $argv)
if test $argc -ne 2
    echo "Usage: $argv[1] <arg1> <arg2>"
    echo "This will attempt to move from old config directory to new config directory"
    exit 1
end

echo $json_file
set source (realpath $argv[1])
set dest (realpath $argv[2])

# Read and parse JSON using jq
# Extract array values into a Fish list
set folders (jq -r '.foldersToMove[]' $json_file)

# Output results
echo "Moving Folders:"
for folder in $folders
    set src (realpath "$source/$folder")
    set dst (realpath "$dest/$folder")
    if test -d $src
        echo " * $src -> $dst"
    end
end
