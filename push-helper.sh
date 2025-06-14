#!/bin/bash

read -p "Commit message: " msg
git add .
git commit -m "$msg"
branch=$(git rev-parse --abbrev-ref HEAD)
git push origin $branch