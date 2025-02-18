#!/bin/sh

# Variables
REMOTE_REPO="your_remote_repository_url"
BRANCH="main" # Change this to your branch name if it's different

# Change to your local repository directory
cd /path/to/your/local/repository

# Add all files to the staging area
git add .

# Commit the changes with a message
git commit -m "Automated commit"

# Push the changes to the remote repository
git push $REMOTE_REPO $BRANCH

echo "Changes have been pushed to $REMOTE_REPO on branch $BRANCH"
