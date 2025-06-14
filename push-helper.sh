#!/bin/bash

echo "🔧 Git Automation Script"
read -p "Enter commit message: " msg

echo "📥 Pulling latest changes..."
git pull

echo "📂 Adding changes..."
git add .

echo "✅ Committing..."
git commit -m "$msg"

echo "📤 Pushing..."
git push

echo "🎉 Done!"