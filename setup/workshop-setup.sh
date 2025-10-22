#!/bin/bash
echo "🧬 Setting up for Bioinformatics Git/GitHub Workshop..."

# Check Git installation
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed."
    echo "Please install Git:"
    echo "  • macOS: brew install git"
    echo "  • Ubuntu: sudo apt install git"
    echo "  • Windows: Download from git-scm.com"
    exit 1
fi

echo "✅ Git found: $(git --version)"

# Test GitHub connectivity
if ! curl -s --connect-timeout 5 https://github.com > /dev/null; then
    echo "❌ Cannot connect to GitHub"
    echo "Check your internet connection"
    exit 1
fi

echo "✅ GitHub is accessible"

# Configure Git if needed
if [ -z "$(git config --global user.name)" ]; then
    echo "⚙️  Git needs configuration"
    read -p "Enter your full name: " name
    read -p "Enter your email: " email
    
    git config --global user.name "$name"
    git config --global user.email "$email"
    git config --global init.defaultBranch main
    
    echo "✅ Git configured for: $name <$email>"
else
    echo "✅ Git already configured for: $(git config --global user.name)"
fi

# Set useful aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit

# Create workshop directory
WORKSHOP_DIR="$HOME/workshop-practice"
mkdir -p "$WORKSHOP_DIR"
echo "✅ Workshop directory: $WORKSHOP_DIR"

# Test basic Git functionality
cd "$WORKSHOP_DIR"
if [ ! -d "setup-test" ]; then
    mkdir setup-test
    cd setup-test
    git init
    echo "# Setup Test" > README.md
    git add README.md
    git commit -m "Test commit"
    cd ..
    echo "✅ Basic Git operations working"
fi

echo ""
echo "🎉 Setup complete! Ready for workshop."
echo ""
echo "📋 Pre-workshop checklist:"
echo "  ✅ Git installed and configured"
echo "  ✅ GitHub connectivity confirmed"  
echo "  ✅ Practice directory ready"
echo ""
echo "🎯 Still need to do:"
echo "  • Create GitHub account (if you don't have one)"
echo "  • Consider installing GitHub Desktop"
echo "  • Bring laptop with internet to workshop"
echo ""
echo "❓ Questions? Contact workshop organizers!"
