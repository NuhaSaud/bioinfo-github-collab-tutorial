# 🚀 Chapter 2: Account Setup & Configuration

**Time**: 40 minutes | **Format**: Guided hands-on setup

## 🎯 Learning Goals
- Create professional GitHub account
- Install Git or GitHub Desktop
- Set up secure authentication
- Test that everything works

## 📝 Part 1: GitHub Account (10 minutes)

### Step 1: Sign Up
1. Go to [github.com](https://github.com)
2. Click "Sign up"

### Step 2: Choose Professional Username

✅ Good examples:
```
sarah-chen-lab
mjohnson-bioinfo
alex-genomics
```
❌ Avoid:
```
coolcoder123
temporary-account
```

### Step 3: Complete Profile
- Real name
- Bio: "PhD student in Bioinformatics at XYZ University"
- Upload professional photo

## 🛠️ Part 2: Choose Your Method (25 minutes)

### Option A: GitHub Desktop (Recommended for beginners)

**Install:**
1. Download from [desktop.github.com](https://desktop.github.com)
2. Install and sign in with GitHub account
3. Configure name and email

**Quick Test:**
1. File → New Repository → "test-setup"
2. Add README, commit, publish to GitHub
3. Check GitHub.com - your repo should appear!

### Option B: Command Line (For advanced users)

**Install Git:**
```bash
# macOS
brew install git

# Ubuntu/Linux  
sudo apt install git

# Windows: Download from git-scm.com
```

**Configure:**
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@university.edu"
git config --global init.defaultBranch main
```

**Set Up SSH (Optional but recommended):**
```bash
ssh-keygen -t ed25519 -C "your.email@university.edu"
cat ~/.ssh/id_ed25519.pub
# Add this to GitHub: Settings → SSH Keys → New SSH Key
```

**Quick Test:**
```bash
mkdir test-setup
cd test-setup
git init
echo "# Test" > README.md
git add README.md
git commit -m "Initial test"
# Create repo on GitHub first, then:
git remote add origin git@github.com:USERNAME/test-setup.git
git push -u origin main
```

## ✅ Success Check (5 minutes)
You should have:
- GitHub account with professional profile
- Git or GitHub Desktop installed and working
- Test repository created and visible on GitHub
- Comfortable with your chosen method (GUI or CLI)

**Problems? Ask for help now before we move on!**

**Next:** Create your first real bioinformatics project!
