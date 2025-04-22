#!/bin/bash

# Navigate to the base directory where all your projects are located
BASE_DIR="$(pwd)"

for dir in "$BASE_DIR"/*/; do
    if [ -f "$dir/package.json" ]; then
        echo "Found Node project in $dir"

        # Extract the start command from package.json
        startCmd=$(jq -r '.scripts.start' "$dir/package.json")

        if [ "$startCmd" != "null" ]; then
            echo "Starting project in $dir with: $startCmd"

            # Run the start command in the background
            (
                cd "$dir" || exit
                npm install
                npm run start
            ) &
        else
            echo "No start script found in $dir"
        fi
    fi
done

wait
