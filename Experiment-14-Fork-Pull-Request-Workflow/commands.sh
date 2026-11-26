#!/usr/bin/env bash
# Experiment 14: Fork-and-Pull-Request Workflow
git clone https://github.com/<your-username>/first-contributions.git
cd first-contributions
git checkout -b update-readme
echo "This README was updated for the GitHub collaboration experiment." >> README.md
git status
git add README.md
git commit -m "Updated README for collaboration experiment"
git push -u origin update-readme
