#!/bin/bash

# Navigate to the project root
cd /Users/chukwudumebi/Development/MealDesk

# Function to clean up a directory
cleanup_directory() {
    local dir=$1
    echo "Cleaning up $dir..."
    
    # Remove .env and node_modules from git tracking
    git rm --cached "$dir/.env" 2>/dev/null
    git rm -r --cached "$dir/node_modules" 2>/dev/null
    
    # Ensure .gitignore exists and contains necessary entries
    if [ ! -f "$dir/.gitignore" ]; then
        touch "$dir/.gitignore"
    fi
    
    grep -qxF ".env" "$dir/.gitignore" || echo ".env" >> "$dir/.gitignore"
    grep -qxF "node_modules" "$dir/.gitignore" || echo "node_modules" >> "$dir/.gitignore"
    
    # Stage the changes
    git add "$dir/.gitignore"
}

# Clean up backend and frontend directories
cleanup_directory "backend"
cleanup_directory "frontend"

# Commit the changes
git commit -m "Remove .env and node_modules from git tracking in both backend and frontend"

# Push the changes
git push

echo "Cleanup complete. Please check your remote repository to ensure everything is correct."