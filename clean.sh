#!/bin/bash

# List of file patterns to remove from git index
patterns=(
    "*.aux"
    "*.fls"
    "*.log"
    "*.synctex.gz"
    "*.fdb_latexmk"
)

# Remove each matching file from the git index
for pattern in "${patterns[@]}"; do
    git rm --cached $pattern
done

echo "Specified files have been removed from the Git index."

