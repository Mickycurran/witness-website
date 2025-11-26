#!/bin/bash

# Deploy Witness website to public GitHub Pages repository
# This script creates/updates a separate public repo for the website

set -e  # Exit on error

echo "🚀 Deploying Witness Website to Public GitHub Pages"
echo ""

# Get current directory (docs folder)
DOCS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DOCS_DIR"

echo "📂 Current directory: $DOCS_DIR"
echo ""

# Check if we're already in a git repo (the docs folder shouldn't be)
if [ -d .git ]; then
    echo "✅ Git repo already exists in docs folder"
    echo "   Using existing repository..."
else
    echo "📝 Initializing new git repository..."
    git init
fi

# Add all files
echo "📦 Adding files..."
git add .

# Commit
echo "💾 Committing..."
if git diff-index --quiet HEAD --; then
    echo "ℹ️  No changes to commit"
else
    git commit -m "Update Witness website: $(date '+%Y-%m-%d %H:%M')" || echo "ℹ️  Nothing to commit"
fi

# Check if remote exists
if git remote | grep -q origin; then
    echo "🔗 Remote 'origin' already configured"
    echo "   Pushing to existing repository..."
    git push origin main || git push -u origin main
else
    echo ""
    echo "⚠️  No remote repository configured yet!"
    echo ""
    echo "👉 NEXT STEPS:"
    echo ""
    echo "1. Go to: https://github.com/new"
    echo "2. Repository name: witness-website"
    echo "3. Visibility: PUBLIC ✅"
    echo "4. Click 'Create repository'"
    echo ""
    echo "5. Then run these commands:"
    echo ""
    echo "   cd $DOCS_DIR"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/witness-website.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
    echo ""
    echo "6. Enable GitHub Pages:"
    echo "   Settings → Pages → Source: main branch, / (root) folder"
    echo ""
    exit 0
fi

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🌐 Your site should be live at:"
echo "   https://YOUR_USERNAME.github.io/witness-website/"
echo ""
echo "   (Replace YOUR_USERNAME with your actual GitHub username)"
echo ""
echo "📝 Next steps:"
echo "   1. Wait 1-2 minutes for GitHub Pages to deploy"
echo "   2. Visit your site and test all pages"
echo "   3. Update App Store Connect with the URLs"
echo ""

