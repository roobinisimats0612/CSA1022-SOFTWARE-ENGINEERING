#!/usr/bin/env bash
git clone https://github.com/<username>/My-Personal-Project.git
cd My-Personal-Project
git status
git add README.md
git commit -m "Updated README with project description"
git push origin main
