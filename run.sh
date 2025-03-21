#!/bin/bash

# Define directory and repository
LOCAL_DIR="/c/Users/tayhar/Escritorio/Practica-2"
REMOTE_REPO="https://github.com/Hextayz/Practica-2.git"

# Navigate to the directory
cd "$LOCAL_DIR" || exit

# Initialize Git repository if not already initialized
if [ ! -d ".git" ]; then
    git init
fi

# Add remote repository if not already added
if ! git remote | grep -q "origin"; then
    git remote add origin "$REMOTE_REPO"
fi

# Pull latest changes from remote before pushing
git pull origin main --rebase

# Add all files, commit, and push to GitHub
git add .
git commit -m "Updated changes"
git push origin main