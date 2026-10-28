#!/usr/bin/env bash
set -e

echo "================================================================="
echo "🛡️ RBI Safe-Loan Scanner - GitHub 1-Click Deployment Helper"
echo "================================================================="

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR"

echo "Directory: $DIR"
echo ""
echo "Select Option:"
echo "1) Create & Push to NEW Repository: 'rbi-approved-instant-loan-scanner-india-2026' (Recommended for #1 Ranking)"
echo "2) Commit & Push into current repository 'nova_marketing'"
echo "3) Start Local Preview (Browser test on http://localhost:8899)"
echo ""
read -p "Enter Choice (1, 2, or 3): " choice

if [ "$choice" == "1" ]; then
    echo ""
    echo "👉 Steps for Maximum Google Ranking:"
    echo "1. Go to https://github.com/new"
    echo "2. Repository Name: rbi-approved-instant-loan-scanner-india-2026"
    echo "3. Description: Official 2026 RBI Whitelist & Instant Loan Safety Checker (Direct Bank Disbursal)"
    echo "4. Set to PUBLIC."
    echo "5. Then run in this directory:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Release v2026.1: Official RBI Whitelist & Safe Instant Loan Scanner'"
    echo "   git branch -M main"
    echo "   git remote add origin https://github.com/<YOUR_USERNAME>/rbi-approved-instant-loan-scanner-india-2026.git"
    echo "   git push -u origin main"
    echo ""
    echo "6. Go to Settings -> Pages -> Source: Deploy from a branch (main) -> Save."
    echo "   Your Live Scanner will be at: https://<YOUR_USERNAME>.github.io/rbi-approved-instant-loan-scanner-india-2026/"
elif [ "$choice" == "2" ]; then
    cd ..
    git add rbi-approved-instant-loan-scanner-india-2026 parasite-seo
    git commit -m "feat(seo): Add RBI Safe-Loan Scanner tool and high-ranking GitHub assets"
    git push origin main
    echo "✅ Successfully committed and pushed to current repo!"
elif [ "$choice" == "3" ]; then
    echo "🌐 Starting preview at http://localhost:8899 ..."
    python3 -m http.server 8899
fi
