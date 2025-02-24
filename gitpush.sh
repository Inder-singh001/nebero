#!/bin/bash

# Function to check the last command status
check_error() {
    if [ $? -ne 0 ]; then
        echo "❌ Error: $1"
        exit 1
    fi
}

# Check if commit message is provided
if [ -z "$1" ]; then
    echo "❌ Error: Commit message is required."
    echo "Usage: $0 \"Your commit message\""
    exit 1
fi

commit_msg="$1"

# Initialize Git if not already initialized
if [ ! -d ".git" ]; then
    git init
    check_error "Failed to initialize Git repository."
    echo "✅ Initialized a new Git repository."
fi

# Add all changes
git add .
check_error "Failed to add files."

# Commit changes
git commit -m "$commit_msg"
check_error "Commit failed."

# Check if remote exists
git remote -v | grep origin > /dev/null
if [ $? -ne 0 ]; then
    read -p "Enter Git remote URL: " remote_url
    git remote add origin "$remote_url"
    check_error "Failed to add remote."
    echo "✅ Remote added."
fi

# Ask for branch name
read -p "Enter branch name (default: master): " branch
branch=${branch:-master}

# Ensure the branch exists
git branch | grep "$branch" > /dev/null
if [ $? -ne 0 ]; then
    git branch -M "$branch"
fi

# Push changes
git push -u origin "$branch"
check_error "Failed to push to remote repository."

echo "✅ Code pushed successfully to branch '$branch'!"