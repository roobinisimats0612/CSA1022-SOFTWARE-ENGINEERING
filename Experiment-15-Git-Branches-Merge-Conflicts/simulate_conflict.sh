#!/usr/bin/env bash
# Local simulation of a Git merge conflict and resolution
set -e
DEMO_DIR=$(mktemp -d)
cd "$DEMO_DIR"
git init -b main
git config user.email "student@example.com"
git config user.name "SE Student"
echo "# Project" > README.md
echo "Modules: Core" >> README.md
git add README.md && git commit -m "Initial commit"

git checkout -b feature-update
sed -i 's/Modules: Core/Modules: Core, Login/' README.md
git commit -am "Add Login module on feature branch"

git checkout main
sed -i 's/Modules: Core/Modules: Core, Catalog/' README.md
git commit -am "Add Catalog module on main"

git checkout feature-update
git merge main || echo "Conflict triggered as expected!"
cat > README.md << 'EOF'
# Project
Modules: Core, Login, Catalog
EOF
git add README.md
git commit -m "Resolved merge conflict"
git log --oneline --graph
