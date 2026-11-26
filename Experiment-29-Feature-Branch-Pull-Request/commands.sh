#!/usr/bin/env bash
git checkout -b feature-login
git add login.py
git commit -m "Added login function"
git push -u origin feature-login
# After merging PR on GitHub:
git checkout main
git pull origin main
