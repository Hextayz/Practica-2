#!/bin/bash

# Define directory and repository
LOCAL_DIR="/c/Users/tayhar/Desktop/Practica-2"
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

# Add all files, commit, and push to GitHub
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main