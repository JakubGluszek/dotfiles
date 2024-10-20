#!/bin/bash

# Check if a directory is provided as an argument
if [ $# -eq 0 ]; then
	# If no argument, use current directory
	DIR="."
else
	# Use the provided directory
	DIR="$1"
fi

# Run the tree command
# tree -L 3 -a -I "$(git -C "$DIR" check-ignore * 2>/dev/null | tr '\n' '|').git" "$DIR"
tree -L 3 -h -I "$(git -C "$DIR" check-ignore * | tr '\n' '|').git"
