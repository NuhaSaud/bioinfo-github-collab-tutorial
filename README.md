# 📚 Bioinformatics Git & GitHub Collaboration Tutorial for Beginners

## 🎯 What You'll Learn
This tutorial will teach you how to use Git as a version control tool for your bioinformatics projects, even if you have no programming experience. You'll learn three different ways to use Git:
1. **GitHub Desktop** (Graphical Interface - Easiest)
2. **Command Line** (Terminal/Command Prompt)
3. **VSCode Integration** (Visual Code Editor)

## 📖 Table of Contents
1. [What is Git and Why Do We Need It?](#what-is-git-and-why-do-we-need-it)
2. [Setting Up Your Environment](#setting-up-your-environment)
3. [Creating Your First Repository - Different Approaches](#creating-your-first-repository---different-approaches)
4. [Method 1: GitHub Desktop (Beginner-Friendly)](#method-1-github-desktop-beginner-friendly)
5. [Method 2: Command Line Basics](#method-2-command-line-basics)
6. [Method 3: VSCode Integration](#method-3-vscode-integration)
7. [SSH Authentication Setup (Recommended)](#ssh-authentication-setup-recommended)
8. [Essential Git Concepts](#essential-git-concepts)
9. [Practical Examples with VSCode](#practical-examples-with-vscode)
10. [Collaboration Workflows with VSCode](#collaboration-workflows-with-vscode)
11. [Troubleshooting Common Issues in VSCode](#troubleshooting-common-issues-in-vscode)
12. [Quick Reference Guide](#quick-reference-guide)
13. [Additional Resources](#additional-resources)
14. [Conclusion](#conclusion)

---

## What is Git and Why Do We Need It?

### What is Version Control?
Think of version control as a **"time machine"** for your files. Just like you might save different versions of a document as:
- `Protocol_v1.docx`
- `Protocol_v2_final.docx` 
- `Protocol_v2_final_REAL.docx`

Git does this automatically and much more efficiently!

### Why Bioinformatics Researchers Need Git:
- 📄 **Track changes** in analysis protocols, documentation, and data files
- 🤝 **Collaborate** with team members on research projects
- 💾 **Backup** your work automatically
- 🔄 **Restore** previous versions if something breaks
- 📝 **Document** what you did and when you did it

### Real-World Bioinformatics Examples:
- Sharing analysis protocols between lab members
- Tracking changes to experimental procedures
- Collaborating on grant proposals and papers
- Managing data analysis documentation
- Version controlling bioinformatics workflows

---

## Setting Up Your Environment

### Step 1: Create GitHub Account
1. Go to [github.com](https://github.com)
2. Click "Sign up"
3. Choose a professional username (e.g., `firstname-lastname` or `firstnamelastname`)
4. Use your institutional email if available

### Step 2: Choose Your Method

#### For Complete Beginners: GitHub Desktop
- ✅ Visual interface
- ✅ No command line needed 
- ✅ Perfect for document management

#### For Learning Command Line: Git Installation
- Learn industry-standard commands
- Works on all computers
- More powerful features

#### For Code Editors: VSCode
- Great for editing documents
- Built-in Git features
- Professional development environment

---

## Creating Your First Repository - Different Approaches

There are several ways to start a Git repository. Choose the method that best fits your workflow:

### Method 1: Create Local Folder First (Bottom-Up Approach)

This approach is best when you already have files on your computer that you want to version control.

#### Step 1: Create and Navigate to Your Project Folder

**Using File Explorer/Finder:**
1. Create a new folder called `my-bioinfo-project` in your Documents
2. Add some files (protocols, data files, etc.)

**Using Command Line:**
```bash
# Navigate to where you want your project
cd ~/Documents  # or C:\Users\YourName\Documents on Windows

# Create project directory
mkdir my-bioinfo-project
cd my-bioinfo-project

# Create some initial files
echo "# My Bioinformatics Project" > README.md
echo "# Lab Protocol Collection" > protocols.md
```

#### Step 2: Initialize Git Repository

**Command Line:**
```bash
# Initialize Git in current directory
git init

# Add files to staging
git add README.md protocols.md

# Make initial commit  
git commit -m "Initial commit: Add project files"
```

**VSCode Method:**
1. **Open folder in VSCode**: `File` → `Open Folder` → Select your project folder
2. **Initialize Git**: `Ctrl+Shift+P` → **"Git: Initialize Repository"**
3. **Stage files**: Source Control panel (`Ctrl+Shift+G`) → Click `+` next to files
4. **Commit**: Write message and press `Ctrl+Enter`

#### Step 3: Connect to GitHub (Optional but Recommended)

1. **Create repository on GitHub**:
   - Go to [github.com](https://github.com)
   - Click **"New repository"**
   - Name: `my-bioinfo-project`
   - **Don't check** "Initialize with README" (you already have files)
   - Click **"Create repository"**

2. **Connect your local repo to GitHub**:
   ```bash
   # Add GitHub as remote origin
   git remote add origin git@github.com:yourusername/my-bioinfo-project.git
   
   # Push your local commits to GitHub
   git branch -M main  # Rename branch to main if needed
   git push -u origin main
   ```

**VSCode Method:**
1. **Command Palette** (`Ctrl+Shift+P`) → **"Git: Add Remote"**
2. **Enter remote name**: `origin`
3. **Enter URL**: `git@github.com:yourusername/my-bioinfo-project.git`
4. **Push**: Source Control → **"Publish Branch"**

---

### Method 2: Create GitHub Repository First (Top-Down Approach)

This approach is best when starting a completely new project.

#### Step 1: Create Repository on GitHub

1. **Go to GitHub**: [github.com](https://github.com) → **"New repository"**
2. **Repository settings**:
   - **Name**: `lab-protocols-collection`
   - **Description**: `Collection of laboratory protocols for bioinformatics research`
   - **Visibility**: Public (for learning) or Private (for sensitive data)
   - ✅ **Initialize with README**
   - ✅ **Add .gitignore**: Choose "Python" or create custom later
   - ✅ **Add license**: MIT License (for open science) or skip
3. **Click "Create repository"**

#### Step 2: Clone Repository to Your Computer

**Command Line:**
```bash
# Navigate to where you want the project
cd ~/Documents

# Clone the repository (creates folder automatically)
git clone git@github.com:yourusername/lab-protocols-collection.git

# Navigate into the cloned directory
cd lab-protocols-collection

# Check repository status
git status
```

**VSCode Method:**
1. **Command Palette** (`Ctrl+Shift+P`) → **"Git: Clone"**
2. **Enter repository URL**: `git@github.com:yourusername/lab-protocols-collection.git`
3. **Choose local directory**: Select where to save (e.g., Documents)
4. **Open cloned repository**: VSCode will prompt to open the new folder

#### Step 3: Start Adding Your Content

**Add directory structure:**
```bash
# Create organized folder structure
mkdir protocols data-analysis manuscripts

# Create initial protocol file
cat > protocols/dna-extraction.md << 'EOF'
# DNA Extraction Protocol

## Overview
Standard protocol for extracting high-quality genomic DNA from biological samples.

## Materials
- Sample tubes
- Extraction buffer
- Centrifuge

## Protocol Steps
1. Collect sample in sterile tube
2. Add extraction buffer
3. Process according to manufacturer instructions

EOF
```

**Commit and push your additions:**
```bash
git add .
git commit -m "Add initial directory structure and DNA extraction protocol"
git push
```

---

### Method 3: Convert Existing Folder to Git Repository

Sometimes you have an existing project folder that you want to start tracking with Git.

#### Scenario: You Have This Existing Structure
```
my-research-project/
├── field-notes.docx
├── lab-data.xlsx  
├── analysis-script.R
├── protocol-v1.pdf
├── protocol-v2.pdf
└── results/
    ├── blast-output.txt
    └── phylogeny.pdf
```

#### Step 1: Navigate to Existing Folder

**Using Command Line:**
```bash
cd /path/to/my-research-project
```

**Using VSCode:**
1. **File** → **Open Folder** → Select your existing project folder

#### Step 2: Initialize Git

**Command Line:**
```bash
# Initialize Git repository
git init

# Check what files Git sees
git status
```

**VSCode:**
1. **Command Palette** (`Ctrl+Shift+P`) → **"Git: Initialize Repository"**
2. **Source Control panel** (`Ctrl+Shift+G`) shows all files as "Untracked"

#### Step 3: Create .gitignore Before Adding Files

**Important**: Add .gitignore before your first commit to avoid tracking unwanted files.

```bash
# Create .gitignore file
cat > .gitignore << 'EOF'
# Large data files
*.xlsx
results/
temp/

# Document versions (keep only latest)
*-v1.*
*-draft.*

# System files  
.DS_Store
Thumbs.db

# Personal notes
personal-notes.*
TODO.txt
EOF
```

#### Step 4: Stage and Commit Appropriate Files

**Review what will be tracked:**
```bash
git status
# Shows which files are ignored vs tracked
```

**Add and commit files:**
```bash
# Stage files (respects .gitignore)
git add .

# Check what's staged
git status

# Make initial commit
git commit -m "Initial commit: Add research project files

- Added field notes and final protocol
- Excluded large data files and drafts  
- Set up project structure for version control"
```

#### Step 5: Connect to GitHub (Optional)

1. **Create GitHub repository** (as shown in Method 2, Step 1)
2. **Connect local repository:**
```bash
git remote add origin git@github.com:yourusername/my-research-project.git
git branch -M main
git push -u origin main
```

---

### How to Undo Git Initialization (Remove Git from Folder)

Sometimes you might want to stop tracking a folder with Git or you initialized Git by mistake.

#### ⚠️ Warning: This Permanently Removes All Git History

**Before proceeding, understand that this will:**
- ❌ Delete all commit history
- ❌ Remove all branch information
- ❌ Lose connection to remote repositories
- ✅ Keep all your current files intact
- ✅ Remove Git tracking completely

#### Method 1: Command Line (All Operating Systems)

```bash
# Navigate to your Git repository
cd /path/to/your-git-project

# Check that you're in a Git repository
git status
# Should show "On branch main" or similar

# Remove the .git directory (this removes ALL Git data)
rm -rf .git

# Verify Git is removed
ls -la
# Should not show .git directory

# Test that Git is gone
git status
# Should show "fatal: not a git repository"
```

**Windows Command Prompt:**
```cmd
# Navigate to your git repository
cd C:\path\to\your-git-project

# Remove .git directory
rmdir /s .git

# When prompted, type 'Y' to confirm
```

**Windows PowerShell:**
```powershell
# Navigate to repository
cd C:\path\to\your-git-project

# Remove .git directory
Remove-Item -Recurse -Force .git
```

#### Method 2: File Explorer/Finder (Show Hidden Files Required)

**Windows:**
1. **Open your project folder** in File Explorer
2. **Show hidden files**: View → Options → View tab → **"Show hidden files, folders, and drives"**
3. **Find .git folder** (it will appear grayed out)
4. **Right-click .git folder** → **Delete**
5. **Confirm deletion**

**Mac:**
1. **Open project folder** in Finder
2. **Show hidden files**: Press `Cmd+Shift+.` (period)
3. **Find .git folder** (appears translucent)
4. **Drag .git folder to Trash**
5. **Empty Trash**

**Linux:**
1. **Open file manager** and navigate to project folder
2. **Show hidden files**: `Ctrl+H` or View → Show Hidden Files
3. **Delete .git folder**

#### Method 3: VSCode Method

**If you initialized Git through VSCode:**

1. **Open folder in VSCode**
2. **Terminal** (`Ctrl+Shift+``) → Navigate to project folder
3. **Remove Git**:
   ```bash
   rm -rf .git  # Linux/Mac
   # or
   rmdir /s .git  # Windows
   ```
4. **Reload VSCode**: `Ctrl+Shift+P` → **"Developer: Reload Window"**
5. **Verify**: Source Control panel should show "No source control providers registered"

#### What Happens After Removing Git:

**Your folder returns to normal state:**
```
my-project/
├── README.md          # ✅ All files remain
├── protocols.md       # ✅ Content unchanged  
├── data/              # ✅ Directories intact
└── results/           # ✅ No data loss
# ❌ No .git directory
# ❌ No version history
# ❌ No GitHub connection
```

**To verify Git is completely removed:**
```bash
# These commands should fail:
git status          # "fatal: not a git repository"
git log            # "fatal: not a git repository"  
git branch         # "fatal: not a git repository"
```

#### Re-initializing Git (If You Want to Start Over)

If you removed Git but want to start fresh:

```bash
# Start over with clean Git history
git init

# Add files
git add .

# Make new initial commit
git commit -m "Fresh start: Re-initialize Git repository"

# Connect to new GitHub repo if desired
git remote add origin git@github.com:yourusername/new-repo-name.git
git push -u origin main
```

---

### Best Practices for Repository Creation

#### Choose the Right Method:

**Use Method 1 (Local First) when:**
- ✅ You already have files to version control
- ✅ Working offline initially
- ✅ Experimenting with Git locally first
- ✅ Converting existing projects

**Use Method 2 (GitHub First) when:**
- ✅ Starting completely new project
- ✅ Want to establish collaboration early
- ✅ Need repository settings (issues, wiki, etc.)
- ✅ Planning to share immediately

#### Repository Naming Conventions:

**Good repository names:**
- `lab-protocols-2024` (clear, descriptive)
- `dna-barcoding-yellowstone` (project-specific)
- `bioinfo-analysis-pipeline` (descriptive purpose)

**Avoid:**
- `my-stuff` (not descriptive)
- `project1` (not meaningful)
- `temp-repo` (suggests temporary use)

#### Initial File Structure:

**Recommended starting structure:**
```
your-repository/
├── README.md              # Project overview
├── .gitignore            # Files to ignore
├── protocols/            # Lab procedures
├── data/                 # Data files (often ignored)
├── analysis/             # Analysis scripts
├── results/              # Output files
└── docs/                 # Additional documentation
```

#### .gitignore Best Practices:

**Create .gitignore early** to avoid tracking:
- Large data files (*.fastq, *.bam)
- Temporary files (*.tmp, temp/)
- Personal notes (personal-notes.md)
- System files (.DS_Store, Thumbs.db)
- Credentials (passwords.txt, api-keys.txt)

---

## Method 1: GitHub Desktop (Beginner-Friendly)

### Installation
1. Download [GitHub Desktop](https://desktop.github.com/)
2. Install and sign in with your GitHub account
3. Complete the setup wizard

### Your First Repository

#### Step 1: Create a New Repository
1. In GitHub Desktop, click **"Create a New Repository on your hard drive"**
2. **Name**: `my-bioinfo-project`
3. **Local path**: Choose a folder (e.g., Documents/GitHub)
4. **Initialize with README**: ✅ Check this box
5. Click **"Create repository"**

#### Step 2: Add Your First File
1. Click **"Open in Explorer"** (Windows) or **"Open in Finder"** (Mac)
2. Create a new file called `experimental-protocol.md`
3. Add this content:

```markdown
# DNA Extraction Protocol

## Materials Needed
- Sample tubes
- Extraction buffer
- Centrifuge
- Pipettes

## Steps
1. Collect samples in sterile tubes
2. Add 500μL extraction buffer
3. Vortex for 30 seconds
4. Centrifuge at 10,000 rpm for 5 minutes
5. Transfer supernatant to new tube

## Notes
- Keep samples on ice throughout procedure
- Label all tubes clearly
```

#### Step 3: Your First Commit
1. Return to GitHub Desktop
2. You'll see your new file listed under "Changes"
3. In the bottom left:
   - **Summary**: Type "Add DNA extraction protocol"
   - **Description**: Type "Initial version of lab protocol for DNA extraction"
4. Click **"Commit to main"**

#### Step 4: Publish to GitHub
1. Click **"Publish repository"**
2. Keep "Keep this code private" unchecked (for learning)
3. Click **"Publish repository"**

**🎉 Congratulations! You've created your first Git repository!**

### Making Changes and Updates

#### Step 1: Edit Your Protocol
1. Open your `experimental-protocol.md` file
2. Add a new section:

```markdown
## Quality Control
- Check DNA concentration using NanoDrop
- Verify integrity on 1% agarose gel
- Store at -20°C for long-term use
```

#### Step 2: Commit Changes
1. In GitHub Desktop, you'll see the modifications
2. Add commit message: "Add quality control section"
3. Click **"Commit to main"**
4. Click **"Push origin"** to upload to GitHub

### Working with Branches (Advanced)
When you want to make experimental changes without affecting your main protocol:

1. Click **"Current branch: main"**
2. Click **"New branch"**
3. Name it `protocol-improvements`
4. Make your changes
5. Commit to this branch
6. When ready, create a Pull Request to merge back

---

## Method 2: Command Line Basics

### Installation

#### Windows:
1. Download [Git for Windows](https://git-scm.com/download/win)
2. Install with default settings
3. Use "Git Bash" for commands

#### Mac:
```bash
# Install using Homebrew (recommended)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
```

#### Linux:
```bash
# Ubuntu/Debian
sudo apt-get install git

# CentOS/RHEL
sudo yum install git
```

### Essential Commands

#### Setting Up (One-time setup)
```bash
# Set your name and email
git config --global user.name "Your Name"
git config --global user.email "your.email@university.edu"

# Check your settings
git config --list
```

#### Creating Your First Repository
```bash
# Create a new directory
mkdir my-bioinfo-project
cd my-bioinfo-project

# Initialize Git repository
git init

# Create a README file
echo "# My Bioinformatics Project" > README.md

# Stage the file
git add README.md

# Commit the file
git commit -m "Initial commit: Add README"

# Connect to GitHub (create repo on GitHub first)
git remote add origin https://github.com/yourusername/my-bioinfo-project.git
git push -u origin main
```

### Daily Git Commands

#### Checking Status
```bash
# See what files have changed
git status

# See what changed in files
git diff
```

#### Adding and Committing Changes
```bash
# Stage specific file
git add protocol.md

# Stage all changes
git add .

# Commit with message
git commit -m "Update DNA extraction protocol with new buffer"

# Push to GitHub
git push
```

#### Working with Branches
```bash
# Create and switch to new branch
git checkout -b experiment-new-method

# Switch between branches
git checkout main
git checkout experiment-new-method

# List all branches
git branch

# Merge branch back to main
git checkout main
git merge experiment-new-method

# Delete branch after merging
git branch -d experiment-new-method
```

### Practical Command Line Example

Let's create a bioinformatics analysis log:

```bash
# Create new repository
mkdir dna-analysis-log
cd dna-analysis-log
git init

# Create analysis log file
cat > analysis-log.md << 'EOF'
# DNA Analysis Log

## Project: Species Identification Study
**Date Started**: November 8, 2024
**Researcher**: Your Name

## Samples Processed
| Sample ID | Date | Status | Notes |
|-----------|------|---------|-------|
| S001 | 2024-11-08 | Complete | Good quality DNA |
| S002 | 2024-11-08 | In progress | Low concentration |

## Methods Used
- DNA extraction: Modified CTAB method
- PCR amplification: Using COI primers
- Sequencing: Illumina MiSeq

EOF

# Stage and commit
git add analysis-log.md
git commit -m "Start DNA analysis log"

# Later, update the log
echo "| S003 | 2024-11-09 | Complete | High quality sample |" >> analysis-log.md

git add analysis-log.md
git commit -m "Add sample S003 results"
git push
```

---

## Method 3: VSCode Integration

### Installation
1. Download [Visual Studio Code](https://code.visualstudio.com/)
2. Install the following extensions:
   - **GitLens** - Enhanced Git capabilities
   - **Markdown All in One** - For writing documentation
   - **GitHub Pull Requests** - For GitHub integration

### Setting Up Your First Project

#### Step 1: Clone or Create Repository
1. Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
2. Type "Git: Clone" and select it
3. Enter repository URL or create new one

#### Step 2: Using Git in VSCode

##### Source Control Panel
- Press `Ctrl+Shift+G` to open Source Control
- See all changed files
- Stage files by clicking the `+` icon
- Write commit message and press `Ctrl+Enter`

##### Visual Diff
- Click on any changed file to see what changed
- Red lines = removed content
- Green lines = added content

### Practical VSCode Example

#### Step 1: Create Lab Notebook
1. Create new file: `lab-notebook.md`
2. Add content:

```markdown
# Bioinformatics Lab Notebook

## Week 1: November 4-8, 2024

### Monday - Sample Collection
- Collected 15 DNA samples from field site A
- Samples stored at -20°C
- GPS coordinates recorded

### Tuesday - DNA Extraction
- Used QIAGEN DNeasy kit
- All samples showed good yields (>50 ng/μL)
- Quality assessed on NanoDrop

### Wednesday - PCR Amplification  
- Amplified COI gene using universal primers
- PCR conditions: 94°C-3min, 35 cycles (94°C-30s, 55°C-30s, 72°C-1min), 72°C-5min
- Gel electrophoresis confirmed amplification

### Thursday - Sequencing Prep
- Cleaned PCR products using ExoSAP-IT
- Submitted to sequencing facility
- Expected results: Monday

### Friday - Data Analysis Planning
- Reviewed BLAST search protocols
- Prepared reference database
- Set up analysis pipeline in R
```

#### Step 2: Stage and Commit
1. Open Source Control panel (`Ctrl+Shift+G`)
2. Click `+` next to `lab-notebook.md` to stage
3. Type commit message: "Add Week 1 lab activities"
4. Press `Ctrl+Enter` to commit

#### Step 3: Working with Branches in VSCode
1. Click branch name in bottom-left status bar (usually shows "main")
2. Select "Create new branch..."
3. Name it `week2-entries`
4. Make your changes
5. To merge: Use Command Palette → "Git: Merge Branch"

### VSCode Git Features

#### GitLens Integration
- **Inline blame**: See who changed each line and when
- **History view**: Visual representation of commits
- **Compare branches**: Side-by-side comparison

#### GitHub Integration
- Create Pull Requests directly from VSCode
- Review code changes
- Manage issues and discussions

---

## SSH Authentication Setup (Recommended)

### Why Use SSH Instead of HTTPS?

#### HTTPS Authentication:
- ❌ Requires username/password or token every time
- ❌ Tokens expire and need renewal
- ❌ Less secure for frequent use

#### SSH Authentication:
- ✅ **One-time setup** - no repeated authentication
- ✅ **More secure** - uses cryptographic keys
- ✅ **Faster operations** - no credential prompts
- ✅ **Professional standard** - used by developers worldwide

### Step 1: Check for Existing SSH Keys

First, let's see if you already have SSH keys:

#### Windows (Git Bash):
```bash
ls -al ~/.ssh
```

#### Mac/Linux (Terminal):
```bash
ls -al ~/.ssh
```

**Look for these files:**
- `id_rsa` or `id_ed25519` (private key)
- `id_rsa.pub` or `id_ed25519.pub` (public key)

If you see these files, you can skip to [Step 3: Add SSH Key to GitHub](#step-3-add-ssh-key-to-github).

### Step 2: Generate New SSH Key

#### Method A: Using Ed25519 (Recommended - More Secure)
```bash
# Replace with your GitHub email
ssh-keygen -t ed25519 -C "your.email@university.edu"
```

#### Method B: Using RSA (If Ed25519 not supported)
```bash
# Replace with your GitHub email  
ssh-keygen -t rsa -b 4096 -C "your.email@university.edu"
```

**You'll see prompts like this:**
```
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/yourusername/.ssh/id_ed25519):
```

**Press Enter** to accept default location.

```
Enter passphrase (empty for no passphrase):
```

**Options:**
- **With passphrase** (recommended): Extra security, but you'll need to enter it occasionally
- **Without passphrase**: More convenient, slightly less secure

**Press Enter twice** if you want no passphrase, or enter a secure passphrase.

### Step 3: Add SSH Key to GitHub

#### Copy Your Public Key

**Windows (Git Bash):**
```bash
# For Ed25519 key
cat ~/.ssh/id_ed25519.pub
# OR for RSA key
cat ~/.ssh/id_rsa.pub
```

**Mac:**
```bash
# For Ed25519 key
pbcopy < ~/.ssh/id_ed25519.pub
# OR for RSA key  
pbcopy < ~/.ssh/id_rsa.pub
```

**Linux:**
```bash
# For Ed25519 key
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
# OR for RSA key
xclip -selection clipboard < ~/.ssh/id_rsa.pub
```

#### Add to GitHub

1. **Go to GitHub** → Click your profile picture → **Settings**
2. **Click "SSH and GPG keys"** in left sidebar
3. **Click "New SSH key"**
4. **Title**: Give it a descriptive name (e.g., "Lab Computer", "Personal Laptop")
5. **Key type**: Keep "Authentication Key"
6. **Key**: Paste your copied public key
7. **Click "Add SSH key"**
8. **Enter your GitHub password** to confirm

### Step 4: Test SSH Connection

```bash
ssh -T git@github.com
```

**First time, you'll see:**
```
The authenticity of host 'github.com (IP)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

**Type `yes`** and press Enter.

**Success looks like:**
```
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

### Step 5: Configure Repositories to Use SSH

#### For New Repositories:
When cloning, use SSH URL instead of HTTPS:

```bash
# SSH format (use this)
git clone git@github.com:username/repository-name.git

# Instead of HTTPS format
git clone https://github.com/username/repository-name.git
```

#### For Existing Repositories:
Convert existing repos from HTTPS to SSH:

```bash
# Check current remote
git remote -v

# Change to SSH
git remote set-url origin git@github.com:username/repository-name.git

# Verify the change
git remote -v
```

### Step 6: SSH Agent Setup (Optional but Recommended)

If you used a passphrase, set up SSH agent to remember it:

#### Windows (Git Bash):
```bash
# Start ssh-agent
eval $(ssh-agent -s)

# Add your key
ssh-add ~/.ssh/id_ed25519  # or id_rsa
```

#### Mac:
```bash
# Start ssh-agent  
eval "$(ssh-agent -s)"

# Add to keychain (remembers passphrase)
ssh-add --apple-use-keychain ~/.ssh/id_ed25519  # or id_rsa
```

#### Linux:
```bash
# Start ssh-agent
eval "$(ssh-agent -s)"

# Add your key
ssh-add ~/.ssh/id_ed25519  # or id_rsa
```

### SSH Tool Integration

#### GitHub Desktop with SSH
GitHub Desktop automatically uses SSH if:
1. You've set up SSH keys (follow steps above)
2. Your repository is configured for SSH
3. You're signed into GitHub Desktop

#### VSCode with SSH
VSCode uses your system's Git configuration:
1. **Ensure SSH is set up** (follow steps above)
2. **Clone using SSH URL** when prompted
3. **Or convert existing repos:**
   - Open Command Palette (`Ctrl+Shift+P`)
   - "Git: Remote Set URL"
   - Enter SSH URL: `git@github.com:username/repo.git`

#### Command Line with SSH
Once SSH is configured, all Git commands work the same:
```bash
# Clone (using SSH)
git clone git@github.com:username/bioinfo-protocols.git

# Normal workflow
cd bioinfo-protocols
git pull                    # No password needed!
# ... make changes ...
git add .
git commit -m "Add new protocol"
git push                    # No password needed!
```

### SSH Troubleshooting Common Issues

#### Problem: "Permission denied (publickey)"

**Solutions:**
```bash
# Check remote URL format
git remote -v
# Should show: git@github.com:username/repo.git

# If HTTPS, change to SSH:
git remote set-url origin git@github.com:username/repo.git

# Test SSH connection
ssh -T git@github.com
```

#### Problem: SSH prompts for passphrase every time

**Solutions:**
```bash
# Add to SSH agent
ssh-add ~/.ssh/id_ed25519

# For Mac users (permanent keychain storage):
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### SSH Quick Reference

| Action | Command |
|--------|---------|
| Generate SSH key | `ssh-keygen -t ed25519 -C "email@university.edu"` |
| Display public key | `cat ~/.ssh/id_ed25519.pub` |
| Test SSH connection | `ssh -T git@github.com` |
| Add key to SSH agent | `ssh-add ~/.ssh/id_ed25519` |
| Change repo to SSH | `git remote set-url origin git@github.com:user/repo.git` |

**💡 Tip**: Once SSH is set up, you'll never need to enter passwords for Git operations again!

---

## Essential Git Concepts

### Repository (Repo)
A folder that Git tracks. Contains:
- Your files (protocols, data, documentation)
- Hidden `.git` folder (Git's tracking information)

### Commit
A snapshot of your files at a specific time. Like clicking "Save" but with a description of what you changed.

**Good commit messages for bioinformatics:**
- ✅ "Add PCR protocol for COI amplification"
- ✅ "Fix primer sequences in protocol"
- ✅ "Update sample collection procedure"
- ❌ "Changed stuff"
- ❌ "Updates"

### Branch
A parallel version of your project. Useful for:
- Testing new protocols
- Collaborating on different sections
- Experimenting without breaking the main version

**Common branch names:**
- `main` - Your stable, tested version
- `draft-manuscript` - Working on a paper
- `protocol-updates` - Improving procedures
- `data-analysis` - Adding analysis methods

### Remote
The online copy of your repository (usually on GitHub). Allows:
- Backup of your work
- Sharing with collaborators
- Access from multiple computers

### Clone vs Fork

#### Clone
Making a copy of someone's repository to your computer
```bash
git clone git@github.com:username/bioinfo-protocols.git
```

#### Fork
Making your own copy of someone's repository on GitHub (for contributing to open science projects)

---

## Practical Examples with VSCode

### Example 1: Setting Up Your First Lab Protocol Repository in VSCode

#### Complete VSCode Setup from Scratch

**Step 1: Initialize Repository in VSCode**
1. **Open VSCode** and close any existing workspaces
2. **Create new folder**: 
   - `Ctrl+Shift+P` (Command Palette)
   - Type **"File: Open Folder"**
   - Navigate to Documents and create `lab-protocols` folder
   - Click **"Select Folder"**

3. **Initialize Git repository**:
   - **Command Palette** (`Ctrl+Shift+P`) 
   - Type **"Git: Initialize Repository"**
   - Select current folder
   - Notice `.git` folder appears (hidden by default)

**Step 2: Configure VSCode for Git**
1. **Install Essential Extensions**:
   - Open Extensions panel (`Ctrl+Shift+X`)
   - Install these extensions:
     ```
     GitLens — Git supercharged (by GitKraken)
     Markdown All in One (by Yu Zhang)
     Todo Tree (by Gruntfuggly)
     GitHub Pull Requests and Issues (by GitHub)
     ```

2. **Configure VSCode Settings**:
   - `Ctrl+Shift+P` → **"Preferences: Open Settings (JSON)"**
   - Add these settings:
   ```json
   {
       "git.autofetch": true,
       "git.confirmSync": false,
       "git.enableSmartCommit": true,
       "git.suggestSmartCommit": true,
       "gitlens.blame.inline": true,
       "gitlens.currentLine.enabled": true,
       "markdown.preview.breaks": true,
       "files.autoSave": "afterDelay",
       "files.autoSaveDelay": 1000,
       "todo-tree.tree.showScanModeButton": true
   }
   ```

**Step 3: Create Your First Protocol with VSCode Features**

1. **Create directory structure**:
   - **Explorer Panel** (`Ctrl+Shift+E`)
   - **Right-click** in empty space → **"New Folder"**
   - Create these folders:
   ```
   protocols/
   ├── DNA-extraction/
   ├── PCR-amplification/
   ├── Sequencing/
   └── Quality-control/
   ```

2. **Create main README**:
   - **Right-click** in root folder → **"New File"** → `README.md`
   - Type this content (notice VSCode's markdown syntax highlighting):

```markdown
# Lab Protocols Repository

**Maintained by**: Your Lab Name  
**Last Updated**: November 8, 2024  
**VSCode Setup**: See setup instructions below

## 📁 Repository Structure
- `protocols/`: Standard operating procedures
- `templates/`: Protocol templates for consistency
- `troubleshooting/`: Common issues and solutions

## 🚀 Quick Start for Team Members

### VSCode Setup
1. Clone this repository
2. Install recommended extensions (VSCode will prompt)
3. Open workspace file: `lab-protocols.code-workspace`

### Adding New Protocols
1. Use template: `templates/protocol-template.md`
2. Create branch: `add-protocol/[protocol-name]`
3. Follow naming convention in CONTRIBUTING.md

## 📋 Protocol Status Dashboard
- [ ] DNA Extraction Methods (v2.1) - ✅ Complete
- [ ] PCR Optimization (v1.3) - 🔄 In Progress  
- [ ] Sequencing Prep (v1.0) - ⏳ Planned
```

3. **Preview your markdown**:
   - With `README.md` open, press `Ctrl+Shift+V`
   - Or click the "Preview" button in top-right
   - See live preview side-by-side with `Ctrl+K V`

**Step 4: First Commit using VSCode Interface**

1. **Open Source Control Panel**:
   - Click Source Control icon in Activity Bar (left side)
   - Or press `Ctrl+Shift+G`
   - You'll see all new files under "Changes"

2. **Stage files for commit**:
   - **Option A**: Click `+` next to each file individually
   - **Option B**: Click `+` next to "Changes" to stage all
   - **Option C**: Right-click file → **"Stage Changes"**

3. **Write commit message**:
   - In the message box at top of Source Control panel:
   ```
   Initial setup: Add repository structure and README
   
   - Created protocol directory structure
   - Added comprehensive README with setup instructions
   - Configured repository for team collaboration
   ```

4. **Commit the changes**:
   - **Method 1**: Click ✓ (checkmark) button
   - **Method 2**: Press `Ctrl+Enter`
   - **Method 3**: `Ctrl+Shift+P` → "Git: Commit"

**Step 5: Connect to GitHub and Push**

1. **Create GitHub repository**:
   - Go to github.com in browser
   - Create new repository named `lab-protocols`
   - **Don't** initialize with README (we already have one)

2. **Add remote in VSCode**:
   - Open VSCode terminal: `Ctrl+Shift+`` (backtick)
   - Type:
   ```bash
   git remote add origin git@github.com:yourusername/lab-protocols.git
   git branch -M main
   git push -u origin main
   ```

3. **Alternatively, use VSCode's GitHub integration**:
   - `Ctrl+Shift+P` → **"Git: Add Remote"**
   - Enter remote name: `origin`
   - Enter URL: `git@github.com:yourusername/lab-protocols.git`
   - Click "Publish Branch" in Source Control panel

**You'll now see**:
- Branch name `main` in bottom-left status bar
- Sync button (cloud icon) in status bar
- No pending changes in Source Control panel

### Example 2: Daily Protocol Management Workflow in VSCode

#### Morning Routine: Sync and Review

**Step 1: Open VSCode and Get Latest Changes**
1. **Launch VSCode** with your protocol repository
2. **Check for updates** (multiple methods):
   - **Status Bar**: Click sync button (↻ icon)
   - **Command Palette**: `Ctrl+Shift+P` → **"Git: Pull"**
   - **Source Control**: Click "..." → **"Pull"**

3. **Review what changed**:
   - **GitLens Timeline**: Bottom panel shows recent commits
   - **File Explorer**: Modified files show with `M` indicator
   - **Source Control**: Shows if colleagues made changes

**Step 2: Check Team TODOs and Issues**
1. **Todo Tree Panel**:
   - View panel on left sidebar (if Todo Tree extension installed)
   - Shows all TODO, FIXME, REVIEW comments across files

2. **GitHub Issues** (if extension installed):
   - Activity Bar → GitHub icon
   - See assigned issues and pull requests

#### Working on a Protocol Update

**Step 3: Create Feature Branch**
1. **Current branch indicator**:
   - Bottom-left status bar shows current branch (e.g., `main`)
   - Click branch name to see branch options

2. **Create new branch**:
   - Click branch name → **"Create new branch..."**
   - Name it: `update-dna-extraction-v2.2`
   - Choose base branch: `main`
   - VSCode automatically switches to new branch

**Step 4: Edit Protocol with VSCode Features**

Open `protocols/DNA-extraction/CTAB-method.md`:

```markdown
# CTAB DNA Extraction Protocol v2.2

**Last Updated**: November 8, 2024  
**Updated By**: Jane Smith  
**Tested By**: Lab Team  
**Status**: ✅ Validated

## 🔬 Overview
This protocol provides high-quality genomic DNA from plant tissue using CTAB buffer method.

**Expected Time**: 3-4 hours  
**Yield**: 50-200 ng/μL  
**Purity**: A260/A280 = 1.8-2.0

## 🧪 Materials and Equipment

### Reagents
- [ ] **CTAB Buffer (2X)** - See recipe in Appendix A
  - Store at room temperature, stable 6 months
  - ⚠️ **Warning**: Contains β-mercaptoethanol - use in hood
- [ ] **Chloroform:Isoamyl alcohol (24:1)**
  - Keep at 4°C, use within 1 month of opening
- [ ] **Isopropanol** (≥99% pure)
- [ ] **Ethanol (70%)**
- [ ] **TE Buffer (pH 8.0)**

### Equipment  
- [ ] Water bath or heat block (60°C)
- [ ] Centrifuge (≥12,000 RCF)
- [ ] Micropipettes (10-1000 μL)
- [ ] Vortex mixer
- [ ] Liquid nitrogen dewar

## 📋 Step-by-Step Protocol

### Pre-Protocol Preparation (30 min)
1. **Heat CTAB buffer** to 60°C in water bath
2. **Chill materials**:
   - Mortars and pestles in -20°C freezer
   - Centrifuge to 4°C  
   - Chloroform:isoamyl alcohol on ice
3. **Label all tubes** with sample IDs and date

### Sample Preparation (45 min)
#### Step 1: Tissue Collection
```
⚠️ CRITICAL: Work quickly to prevent DNA degradation
```

1. **Collect 100-200mg fresh tissue**
   - Young leaves for best results
   - Avoid flowers or woody material
   - ⏱️ **Timing**: Within 1 hour of collection

2. **Flash freeze immediately**
   - Submerge in liquid nitrogen 30 seconds
   - Transfer to -80°C if storing (up to 6 months)

<!-- TODO: Add photos of proper tissue collection -->

#### Step 2: Tissue Disruption
1. **Pre-chill equipment**
   - Place mortar and pestle in liquid nitrogen
   - Allow 2-3 minutes for thermal equilibration

2. **Grind tissue to powder**
   - Add tissue to pre-chilled mortar
   - Grind with circular motions
   - Continue until fine powder (3-5 minutes)
   - ⚠️ **Critical**: Keep tissue frozen throughout

### DNA Extraction (2 hours)

#### Step 3: CTAB Treatment
1. **Transfer powder to tube**
   - Use pre-chilled spatula
   - Add directly to 2mL microcentrifuge tube

2. **Add CTAB buffer**
   - Volume: 800μL pre-heated CTAB buffer (60°C)
   - Mix immediately by gentle inversion
   - ⏱️ **Timing**: Use buffer within 5 minutes of heating

3. **Incubate with mixing**
   - Temperature: 60°C water bath
   - Duration: 60 minutes
   - **Mix every 15 minutes** by gentle inversion (5x)

<!-- FIXME: Verify optimal incubation time with recent literature -->

#### Step 4: Phase Separation
1. **Cool to room temperature** (5 minutes)

2. **Add chloroform:isoamyl alcohol**
   - Volume: 800μL (equal volume to CTAB buffer)
   - ⚠️ **Safety**: Work in chemical hood
   - Mix by gentle inversion (20x over 2 minutes)

3. **Centrifuge for separation**
   - Speed: 12,000 RCF
   - Duration: 15 minutes  
   - Temperature: 4°C

#### Step 5: DNA Recovery
1. **Transfer aqueous phase**
   - Carefully pipette upper aqueous layer
   - Volume: ~600-700μL (don't disturb interface)
   - Transfer to new labeled tube

2. **Precipitate DNA**
   - Add 0.6 volumes cold isopropanol (~400μL)
   - Mix gently by inversion (10x)
   - Incubate -20°C for 30 minutes (or overnight)

3. **Pellet DNA**
   - Centrifuge 12,000 RCF, 15 minutes, 4°C
   - You should see small white pellet

#### Step 6: DNA Washing and Resuspension
1. **Wash pellet**
   - Remove supernatant carefully (don't disturb pellet)
   - Add 500μL cold 70% ethanol
   - Centrifuge 12,000 RCF, 5 minutes, 4°C

2. **Dry pellet**
   - Remove all ethanol with pipette
   - Air dry 5-10 minutes (don't over-dry)
   - Pellet should be translucent, not white

3. **Resuspend DNA**
   - Add 50-100μL TE buffer (pH 8.0)
   - Incubate 4°C overnight for complete dissolution
   - Store long-term at -20°C

## ✅ Quality Control

### Quantification Methods
1. **NanoDrop Spectrophotometer**:
   - Expected concentration: 50-200 ng/μL
   - A260/A280 ratio: 1.8-2.0 (pure DNA)
   - A260/A230 ratio: 2.0-2.2 (no contamination)

2. **Fluorometric quantification** (Qubit):
   - More accurate for PCR applications
   - Use dsDNA High Sensitivity assay

### Quality Assessment
1. **Agarose gel electrophoresis**:
   - 0.8% agarose gel
   - Load 5μL DNA + 1μL loading dye
   - High molecular weight band indicates intact DNA
   - Smearing suggests degradation

## 🔧 Troubleshooting Guide

| Problem | Possible Cause | Solution |
|---------|---------------|----------|
| **Low yield (<10 ng/μL)** | Insufficient starting material | Increase tissue amount to 200mg |
| | Old tissue samples | Use fresh tissue within 1 hour |
| | Buffer too cold during extraction | Ensure CTAB buffer stays at 60°C |
| **Brown/dark coloration** | Polyphenol oxidation | Add 2% PVP to CTAB buffer |
| | Tissue from woody plants | Use young leaf tissue only |
| **Low A260/A280 ratio (<1.6)** | Protein contamination | Repeat chloroform extraction |
| | Incomplete lysis | Extend CTAB incubation to 90 min |
| **DNA degradation (smearing)** | Over-grinding tissue | Reduce grinding time |
| | Nuclease activity | Ensure all equipment is nuclease-free |

<!-- REVIEW: Team to test troubleshooting solutions -->

## 📚 References and Resources
1. Doyle, J. & Doyle, J. (1987) *Phytochemical Bulletin* 19: 11-15
2. Rogers, S.O. & Bendich, A.J. (1985) *Plant Molecular Biology* 5: 69-76
3. Lab Safety Manual - Section 4.2 (Chemical Hood Procedures)

## 🔄 Protocol Updates
- **v2.2** (2024-11-08): Added detailed troubleshooting, safety warnings - Jane Smith
- **v2.1** (2024-10-15): Updated buffer compositions, timing clarifications - John Doe
- **v2.0** (2024-09-01): Major revision with quality control section - Lab Team
- **v1.0** (2024-08-01): Initial protocol - Original Author

## ✅ Validation Log
| Date | Tester | Tissue Type | Yield | A260/A280 | Notes |
|------|---------|-------------|-------|-----------|-------|
| 2024-11-08 | Jane S. | Arabidopsis leaves | 145 ng/μL | 1.89 | Perfect quality |
| 2024-11-07 | John D. | Rice leaves | 89 ng/μL | 1.85 | Good for PCR |
| 2024-11-06 | Mary K. | Corn leaves | 201 ng/μL | 1.92 | Excellent yield |

---
*Protocol tested and validated by lab team. For questions, contact jane.smith@university.edu*
```

**VSCode Features While Editing:**

1. **Live Markdown Preview**:
   - `Ctrl+K V` for side-by-side preview
   - See formatted version in real-time

2. **Outline Navigation**:
   - `Ctrl+Shift+O` to see document outline
   - Jump to any section quickly

3. **Todo Highlighting**:
   - TODO, FIXME, REVIEW comments highlighted
   - Visible in Todo Tree panel

4. **Spell Checking** (if extension installed):
   - Right-click misspelled words for suggestions
   - `F6` to run spell check on document

**Step 5: Stage and Review Changes in VSCode**

1. **Source Control Panel** (`Ctrl+Shift+G`):
   - See modified file: `protocols/DNA-extraction/CTAB-method.md`
   - `M` indicates modified file

2. **Review changes**:
   - **Click the filename** to see diff view
   - **Green lines**: New content
   - **Red lines**: Deleted content  
   - **Modified lines**: Show side-by-side comparison

3. **Stage specific changes** (if needed):
   - **Stage entire file**: Click `+` next to filename
   - **Stage partial changes**: In diff view, click `+` next to specific hunks

**Step 6: Commit with Good Practices**

1. **Write descriptive commit message**:
```
Update CTAB protocol to v2.2: Add comprehensive troubleshooting

Major improvements:
- Added comprehensive troubleshooting guide
- Enhanced safety warnings and critical steps
- Included validation log with test results  
- Updated timing and temperature specifications
- Added quality control metrics table

Tested by: Jane Smith, John Doe, Mary Kim
All tests successful with high-quality DNA yields
```

2. **Commit the changes**:
   - `Ctrl+Enter` in Source Control panel
   - Or click ✓ checkmark button

**Step 7: Push Changes and Create Pull Request**

1. **Push branch to GitHub**:
   - **Status Bar**: Click sync button
   - **Source Control**: Click "Publish Branch"
   - Creates branch on GitHub automatically

2. **Create Pull Request in VSCode**:
   - **Activity Bar**: Click GitHub icon
   - **Click**: "Create Pull Request"
   - **Fill out PR template**:
   ```markdown
   ## Protocol Update Summary
   Updated CTAB DNA extraction protocol to version 2.2

   ## Changes Made
   - ✅ Added comprehensive troubleshooting section
   - ✅ Enhanced safety warnings throughout protocol
   - ✅ Added validation log with recent test results
   - ✅ Improved timing specifications and critical steps
   - ✅ Updated quality control metrics

   ## Testing Status
   - ✅ Tested by 3 lab members
   - ✅ All quality metrics met expectations
   - ✅ Troubleshooting solutions verified

   ## Review Checklist
   - [ ] Protocol steps are clear and detailed
   - [ ] Safety warnings are prominent
   - [ ] Troubleshooting covers common issues
   - [ ] Version history is updated
   - [ ] References are current and accurate

   ## Additional Notes
   This update addresses feedback from the last lab meeting about needing better troubleshooting guidance. All suggested improvements have been incorporated.
   ```

### Example 3: Collaborative Analysis Documentation

#### Scenario: Multi-researcher DNA Barcoding Project

**VSCode Multi-root Workspace Setup**

1. **Create workspace file**:
   - `File` → `Save Workspace As` → `dna-barcoding-project.code-workspace`
   - Configure multiple project folders:

```json
{
    "folders": [
        {
            "name": "📋 Project Management",
            "path": "./project-docs"
        },
        {
            "name": "🧪 Lab Protocols", 
            "path": "./protocols"
        },
        {
            "name": "📊 Data Analysis",
            "path": "./analysis"
        },
        {
            "name": "📝 Manuscripts",
            "path": "./manuscripts"
        }
    ],
    "settings": {
        "git.autofetch": true,
        "files.associations": {
            "*.md": "markdown"
        },
        "todo-tree.general.tags": ["TODO", "FIXME", "REVIEW", "ANALYSIS", "DATA"],
        "gitlens.blame.inline": true
    },
    "extensions": {
        "recommendations": [
            "eamodio.gitlens",
            "yzhang.markdown-all-in-one",
            "gruntfuggly.todo-tree",
            "github.vscode-pull-request-github"
        ]
    }
}
```

**Branch Strategy Visualization in VSCode**

1. **GitLens Graph View**:
   - `Ctrl+Shift+P` → **"GitLens: Show Graph"**
   - Visual representation of branch structure:
   ```
   main ──────●──────●──────●
              │       │       │
   jane-blast ───●──●        │
                              │
   john-phylogeny ────────●──●
                              │
   mary-stats ────────────────●
   ```

2. **Create Analysis Branches**:
   - **Jane's BLAST analysis**: `analysis/blast-species-id`
   - **John's phylogeny**: `analysis/phylogenetic-tree`
   - **Mary's statistics**: `analysis/diversity-stats`

#### Jane's BLAST Analysis Workflow

**Step 1: Create and Switch to Analysis Branch**
1. **Status bar branch switcher**:
   - Click `main` in bottom-left
   - **"Create new branch from..."** → `main`
   - Name: `analysis/blast-species-identification`

2. **Set up analysis structure**:
```
analysis/
├── blast-analysis/
│   ├── blast-results.md
│   ├── species-identification.md
│   └── methodology.md
└── shared-data/
    ├── sample-metadata.csv
    └── sequence-data.md
```

**Step 2: Document BLAST Analysis**

Create `analysis/blast-analysis/blast-results.md`:

```markdown
# BLAST Analysis Results - COI Gene Sequences

**Analyst**: Jane Smith  
**Analysis Period**: November 4-8, 2024  
**Database Version**: NCBI GenBank nt (accessed Nov 8, 2024)  
**Branch**: `analysis/blast-species-identification`

## 🔍 Analysis Overview
Performed BLAST searches on COI sequences from thermal spring samples to identify microbial species present in Yellowstone thermal features.

**Samples Analyzed**: 48 sequences  
**Analysis Tool**: BLASTn (NCBI online + local)  
**Database**: GenBank nucleotide collection  
**Quality Filter**: E-value < 1e-5, Identity > 80%

## ⚙️ Methodology

### BLAST Parameters
```bash
# Local BLAST command (when online was slow):
blastn -query coi_sequences.fasta \
       -db nt \
       -out blast_results.xml \
       -outfmt 5 \
       -evalue 1e-5 \
       -max_target_seqs 10 \
       -word_size 28 \
       -dust no
```

### Quality Control Steps
1. **Sequence validation**:
   - Minimum length: 300 bp
   - No ambiguous bases (>5%)
   - PHRED quality scores >20

2. **BLAST filtering**:
   - E-value threshold: 1e-5
   - Minimum identity: 80%
   - Query coverage: >70%

<!-- TODO: Add automated quality filtering script -->

## 📊 Results Summary

### Species Identification Success Rate
- ✅ **High confidence** (>95% identity): 23 sequences (48%)
- ⚠️ **Moderate confidence** (90-95% identity): 15 sequences (31%)  
- ❓ **Low confidence** (<90% identity): 10 sequences (21%)

### Taxonomic Distribution
| Phylum | Species Count | Percentage | Notes |
|--------|---------------|------------|-------|
| Deinococcus-Thermus | 18 | 37.5% | Dominant thermophiles |
| Thermotogae | 12 | 25.0% | Hyperthermophiles |
| Aquificae | 8 | 16.7% | Chemolithotrophs |  
| Bacteroidetes | 6 | 12.5% | Moderate thermophiles |
| Unknown/Uncultured | 4 | 8.3% | Novel organisms? |

## 🧬 Detailed Results

### High Confidence Identifications

#### *Thermus* Species Complex
| Sample | Species | Identity | E-value | Accession | Environment |
|---------|---------|----------|---------|-----------|-------------|
| YS-A-001 | *T. aquaticus* | 98.5% | 0.0 | MH123456 | Spring edge, 45°C |
| YS-A-004 | *T. thermophilus* | 97.8% | 0.0 | CP002775 | Center pool, 72°C |
| YS-B-003 | *T. scotoductus* | 96.2% | 0.0 | AB056542 | Outflow, 52°C |

**Analysis Notes:**
- Clear separation of *Thermus* species by temperature preference
- *T. aquaticus* in moderate temperatures (40-50°C)
- *T. thermophilus* in high temperatures (70-80°C)
- Matches expected ecological distribution

#### *Thermotoga* Species
| Sample | Species | Identity | E-value | Accession | Unique Features |
|---------|---------|----------|---------|-----------|----------------|
| YS-C-007 | *T. maritima* | 94.8% | 2e-147 | CP001234 | Unusual for terrestrial spring |
| YS-C-012 | *T. neapolitana* | 94.2% | 1e-142 | AE000512 | High sulfur tolerance |

<!-- ANALYSIS: Need to investigate T. maritima occurrence in terrestrial system -->

### Moderate Confidence Results
These require additional validation:

| Sample | Best Match | Identity | E-value | Next Steps |
|---------|------------|----------|---------|------------|
| YS-D-008 | *Aquifex aeolicus* | 92.3% | 1e-125 | 16S rRNA verification |
| YS-D-015 | *Hydrogenobacter* sp. | 90.8% | 3e-118 | Additional gene markers |

### Novel/Unknown Organisms
Potentially new species requiring further study:

| Sample | Best Match | Identity | Coverage | Research Priority |
|---------|------------|----------|----------|------------------|
| YS-E-003 | Uncultured bacterium | 87.2% | 78% | 🔴 High - unique sequence |
| YS-E-009 | Environmental sample | 85.1% | 82% | 🟡 Medium - similar to known |
| YS-E-014 | Not classified | 82.4% | 75% | 🟡 Medium - partial sequence |

## 🔬 Ecological Insights

### Temperature-Species Relationships
```
Temperature Zones:
• 40-50°C: T. aquaticus dominant (8/12 samples)
• 50-65°C: Mixed Thermus/Aquifex (15/20 samples)  
• 65-80°C: T. thermophilus + novel species (6/10 samples)
• >80°C: Mostly uncultured organisms (4/6 samples)
```

### pH Tolerance Patterns
- **Neutral pH (6.5-7.5)**: Traditional thermophiles
- **Alkaline pH (8.0-9.5)**: Novel alkalithermophiles  
- **Extreme alkaline (>9.5)**: Unidentified organisms

## 🚨 Quality Concerns and Follow-up

### Samples Requiring Re-analysis
<!-- FIXME: These samples had technical issues -->

| Sample | Issue | Resolution |
|---------|-------|------------|
| YS-F-001| Low quality sequence | Re-sequence with new primers |
| YS-F-007 | Possible contamination | Re-extract DNA, repeat PCR |
| YS-F-012 | Chimeric sequence | Use chimera detection tools |

### Database Limitations
- Many thermal spring organisms remain uncultured
- GenBank bias toward model organisms
- Need specialized thermophile databases

<!-- REVIEW: Team meeting Nov 15 to discuss novel findings -->

## 📈 Next Steps

### Immediate Actions (This Week)
- [ ] **John**: Incorporate sequences into phylogenetic analysis
- [ ] **Mary**: Statistical analysis of diversity patterns
- [ ] **Jane**: Re-analyze problematic sequences
- [ ] **Team**: Literature review of novel findings

### Future Research Directions
1. **Novel species characterization**:
   - 16S rRNA gene sequencing
   - Whole genome sequencing (if culturable)
   - Physiological characterization

2. **Ecological studies**:
   - Seasonal variation sampling
   - Biogeochemical correlations
   - Community structure analysis

## 📚 References and Resources
1. Altschul, S.F. et al. (1990) *J. Mol. Biol.* 215: 403-410
2. NCBI BLAST Database: https://blast.ncbi.nlm.nih.gov/
3. Hugenholtz, P. et al. (2021) *Nat. Rev. Microbiol.* 19: 499-515

---
**Analysis Status**: ✅ Complete - Ready for team review  
**Data Location**: `shared-drive/blast-results/2024-11-08/`  
**Questions**: Contact jane.smith@university.edu
```

**Step 3: VSCode Collaboration Features**

1. **Live Share for Real-time Discussion**:
   - `Ctrl+Shift+P` → **"Live Share: Start Collaboration Session"**
   - Share with John and Mary for immediate feedback
   - Both can see and edit the analysis simultaneously

2. **Commenting and Review**:
   - **Add comments**: Right-click in editor → **"Add Comment"**
   - **Resolve discussions**: Mark as resolved when addressed
   - **Suggest changes**: Highlight text and suggest alternatives

**Step 4: Commit Analysis Results**

1. **Stage changes**:
   - Source Control panel shows modified files
   - Review diff to ensure all changes are intentional
   - Stage files with `+` button

2. **Comprehensive commit message**:
```
Complete BLAST analysis of COI sequences

Results Summary:
- Analyzed 48 samples from Yellowstone thermal springs  
- Identified 23 high-confidence species matches (48%)
- Found 4 potentially novel thermophilic organisms
- Documented clear temperature-species relationships

Key Findings:
- Thermus species dominate moderate temperatures (40-65°C)
- Novel alkalithermophiles in extreme conditions (>80°C)
- Strong correlation between pH and species diversity

Next Steps:
- Coordinate with John for phylogenetic analysis
- Share data with Mary for statistical analysis
- Schedule team meeting to discuss novel findings

Data Quality: All sequences passed QC filters
Analysis Tools: BLAST+ 2.14.0, NCBI nt database
```

3. **Push and create PR**:
   - Push branch: **"Publish Branch"** in Source Control
   - GitHub extension: Create pull request directly in VSCode

---

## Collaboration Workflows with VSCode

### Workflow 1: Small Lab Team (2-5 people) - VSCode Focused

#### Initial Setup in VSCode

**Team Lead Sets Up Repository:**
1. **Create new repository**: `Ctrl+Shift+P` → "Git: Initialize Repository"
2. **Add team workspace configuration**:
```json
// .vscode/settings.json
{
    "git.autofetch": true,
    "git.confirmSync": false,
    "files.autoSave": "afterDelay",
    "markdown.preview.breaks": true,
    "todo-tree.general.tags": ["TODO", "FIXME", "REVIEW"],
    "gitlens.blame.inline": true
}
```

3. **Create team README**:
```markdown
# Lab Protocols Repository

## VSCode Setup for Team
1. Install required extensions:
   - GitLens
   - Markdown All in One  
   - Todo Tree
   - Live Share Extension Pack

2. Clone repository: 
   ```bash
   git clone git@github.com:labname/protocols.git
   ```

3. Open in VSCode and install recommended extensions when prompted

## Workflow
- Pull changes every morning: `Ctrl+Shift+P` → "Git: Pull"
- Create branches for major changes: Click branch name → "Create new branch" 
- Commit frequently with clear messages
- Use Live Share for real-time collaboration

## Branch Naming Convention
- `protocol-updates/protocol-name`
- `analysis/dataset-name`  
- `docs/section-name`
```

#### Daily VSCode Workflow

**Morning Routine:**
1. **Open VSCode** to your protocol repository
2. **Sync changes**: Status bar "Sync" button or `Ctrl+Shift+P` → "Git: Pull"
3. **Check notifications**: VSCode shows if conflicts need resolution

**Working on Protocols:**
1. **Create feature branch**: 
   - Click branch name in status bar
   - **"Create new branch from..."** 
   - Name: `protocol-updates/dna-extraction-v3`

2. **Edit files** with VSCode's markdown features:
   - Live preview: `Ctrl+Shift+V`
   - Outline navigation: `Ctrl+Shift+O`
   - Search across files: `Ctrl+Shift+F`

3. **Track changes visually**:
   - Modified files show `M` in Explorer
   - Gutter shows additions (green) and deletions (red)
   - GitLens shows inline blame information

**End of Day:**
1. **Review changes**: Source Control panel (`Ctrl+Shift+G`)
2. **Stage files**: Click `+` next to changed files
3. **Commit**: Write message and `Ctrl+Enter`
4. **Push**: Click "Sync Changes" or publish branch

#### VSCode Team Collaboration Features

**Real-time Collaboration:**
```markdown
## When to Use Live Share:
- Editing protocols together
- Reviewing analysis results
- Troubleshooting Git conflicts
- Training new team members

## Start Live Share Session:
1. Ctrl+Shift+P → "Live Share: Start Collaboration Session"  
2. Share link via lab Slack/email
3. Collaborators join and can edit simultaneously
4. Share terminal for Git commands if needed
```

**Pull Request Review in VSCode:**
1. Install **GitHub Pull Requests** extension  
2. **View PRs**: Activity bar → GitHub icon
3. **Review changes**: See diff, add comments, approve/request changes
4. **Merge from VSCode**: No need to switch to browser

### Workflow 2: Large Research Collaboration - VSCode Integration

#### Multi-Repository Management

**VSCode Multi-root Workspaces:**
```json
// research-collaboration.code-workspace
{
    "folders": [
        {
            "name": "Main Protocol Repo",
            "path": "./bioinfo-protocols"
        },
        {
            "name": "Analysis Scripts",  
            "path": "./analysis-pipeline"
        },
        {
            "name": "Shared Documentation",
            "path": "./project-docs"
        }
    ],
    "settings": {
        "git.autofetch": true,
        "git.fetchOnPull": true
    }
}
```

#### Fork-based Contribution Workflow

**Setting Up Your Fork in VSCode:**
1. **Fork** repository on GitHub
2. **Clone your fork**: 
   ```bash
   git clone git@github.com:yourusername/bioinfo-protocols.git
   cd bioinfo-protocols
   ```
3. **Add upstream remote** in VSCode terminal:
   ```bash
   git remote add upstream git@github.com:original-owner/bioinfo-protocols.git
   ```
4. **Configure VSCode** to show both remotes:
   - Command Palette → "Git: Show Git Output"
   - Both `origin` (your fork) and `upstream` (original) visible

**Contributing Process in VSCode:**

**Step 1: Sync with Upstream**
```bash
# In VSCode terminal (Ctrl+`)
git checkout main
git fetch upstream
git merge upstream/main
git push origin main
```

**Step 2: Create Feature Branch**
- Click branch name → "Create new branch from..."
- Name: `add-microscopy-protocol`
- Base: `main`

**Step 3: Make Changes**
- Edit files using VSCode's features
- Use markdown preview for documentation
- Leverage IntelliSense for consistent formatting

**Step 4: Commit and Push**
- Source Control panel workflow
- Push to your fork: `origin/add-microscopy-protocol`

**Step 5: Create Pull Request**
- **GitHub Pull Requests** extension
- In Activity Bar → GitHub → "Create Pull Request"  
- Fill details directly in VSCode
- Link to issues if applicable

#### Advanced VSCode Collaboration

**Code Review in VSCode:**
```markdown
## Review Checklist Template
Create `.github/PULL_REQUEST_TEMPLATE.md`:

## Protocol Review Checklist
- [ ] All steps clearly numbered and described
- [ ] Safety warnings included where appropriate  
- [ ] Materials list complete with quantities
- [ ] Expected results/troubleshooting included
- [ ] References cited properly
- [ ] Formatting consistent with lab style

## Testing (if applicable)
- [ ] Protocol tested in lab
- [ ] Results match expected outcomes
- [ ] Edge cases considered

## Documentation  
- [ ] Version history updated
- [ ] README updated if needed
- [ ] Related protocols cross-referenced
```

**Branch Protection and Reviews:**
```json
// .vscode/settings.json for reviewers
{
    "githubPullRequests.defaultMergeMethod": "squash",
    "githubPullRequests.pullBranch": "never",
    "git.showPushSuccessNotification": true,
    "gitlens.codeLens.enabled": true,
    "gitlens.currentLine.enabled": true
}
```

### Workflow 3: Open Science Projects - VSCode Community Features

#### Community Contribution Setup

**VSCode Configuration for Open Source:**
```json
// .vscode/settings.json
{
    "git.inputValidation": "always",
    "git.branchProtection": ["main", "master"],
    "markdown.validate.enabled": true,
    "markdown.validate.fileLinks": "error",
    "spellright.language": ["en"],
    "spellright.documentTypes": ["markdown", "plaintext"]
}
```

**Extensions for Community Projects:**
- **Spell Right**: Spell checking for protocols
- **Markdown Lint**: Ensure consistent formatting  
- **GitHub Actions**: View CI/CD status
- **GitLens**: Track contributions and history

#### Documentation Standards

**Contributing Guidelines Template:**
```markdown
# Contributing to Community Protocols

## VSCode Setup
1. Fork and clone the repository
2. Install recommended VSCode extensions (prompt will appear)
3. Open command palette: `Ctrl+Shift+P`
4. Run: "Preferences: Open Workspace Settings"
5. Verify spell-check and markdown validation enabled

## Adding New Protocols
1. Create branch: `add-protocol/technique-name`  
2. Use protocol template in `templates/protocol-template.md`
3. Preview markdown: `Ctrl+Shift+V`
4. Run spell-check: `F6` (with Spell Right extension)
5. Validate links: `Ctrl+Shift+P` → "Markdown: Validate Links"

## Quality Standards
- All protocols must include safety warnings
- Use consistent formatting (check with Markdown Lint)
- Include troubleshooting section
- Add references section
- Test protocol before submitting (if possible)
```

**Community Review Process:**
1. **Draft PR in VSCode**: Use GitHub PR extension
2. **Request community review**: Tag relevant experts
3. **Address feedback**: Use VSCode's suggestion interface  
4. **Final review**: Maintainers approve via GitLens integration

---

## Troubleshooting Common Issues in VSCode

### Problem 1: VSCode Not Showing Git Changes

#### Symptoms:
- Source Control panel empty
- No file modification indicators
- Git operations not working

#### VSCode-Specific Solutions:

**Check Git Repository Status:**
1. **Command Palette** (`Ctrl+Shift+P`) → "Git: Show Git Output"
2. Look for error messages in Git output panel

**Reinitialize Git in VSCode:**
```bash
# In VSCode terminal (Ctrl+`)
cd your-project-folder
git status  # Check if in Git repo
ls -la      # Look for .git folder
```

**VSCode Settings Check:**
1. **File** → **Preferences** → **Settings**
2. Search for "git.enabled" 
3. Ensure it's set to `true`
4. Check "git.path" points to correct Git installation

**Quick Fixes:**
```json
// In .vscode/settings.json
{
    "git.enabled": true,
    "git.decorations.enabled": true,
    "git.autorefresh": true
}
```

### Problem 2: Authentication Issues in VSCode

#### HTTPS Token Problems:

**VSCode Credential Manager:**
1. **Command Palette** → "Git: Clone"
2. When prompted for credentials:
   - Username: Your GitHub username
   - Password: Personal Access Token (not your password!)

**Update Stored Credentials:**
1. **Windows**: Control Panel → Credential Manager → Windows Credentials
2. **Mac**: Keychain Access → GitHub entries → Update
3. **Linux**: 
   ```bash
   git config --global credential.helper store
   ```

#### SSH Setup for VSCode:

**Test SSH in VSCode Terminal:**
```bash
# Open terminal in VSCode (Ctrl+`)
ssh -T git@github.com
```

**Convert Repository to SSH:**
1. **Command Palette** → "Git: Remote Set URL"
2. Enter SSH URL: `git@github.com:username/repo.git`
3. **Or use terminal:**
   ```bash
   git remote set-url origin git@github.com:username/repo.git
   ```

### Problem 3: Merge Conflicts in VSCode

#### VSCode Merge Conflict Interface:

**Visual Conflict Resolution:**
1. **Conflicted files** show with `!C` indicator
2. **Click the file** to open merge editor
3. **VSCode shows**:
   - **Current Change** (your changes)
   - **Incoming Change** (others' changes)  
   - **Result** (combined result)

**Resolution Options:**
- **Accept Current Change**
- **Accept Incoming Change**  
- **Accept Both Changes**
- **Ignore**
- **Edit manually**

**Step-by-Step Resolution:**
```markdown
## In conflict file, you'll see:
<<<<<<< HEAD
Your version of the text
=======
Their version of the text  
>>>>>>> branch-name

## VSCode provides clickable options above each section:
Accept Current Change | Accept Incoming Change | Accept Both Changes...
```

**After Resolving:**
1. **Stage resolved files**: Click `+` in Source Control
2. **Commit**: Write merge commit message
3. **Push**: Sync changes

#### Advanced Merge Tools in VSCode:

**Install GitLens for Better Conflict Resolution:**
1. **Extensions** → Search "GitLens"
2. **Features unlocked**:
   - Line-by-line history
   - Blame annotations  
   - Better diff views
   - File history comparison

### Problem 4: Large Files and Performance

#### .gitignore Configuration in VSCode:

**Create .gitignore:**
1. **Right-click** in Explorer → **New File** → `.gitignore`
2. **Use template** for bioinformatics projects:

```bash
# .gitignore for Bioinformatics Projects

## Large Data Files
*.fastq
*.fastq.gz
*.fasta.gz
*.fasta
*.fa
*.bam
*.sam
*.vcf
*.vcf.gz
*.bcf

## Analysis Output
results/
output/
temp/
tmp/
cache/

## Sequence Analysis
*.blast
*.blastx
*.blastn
*.psi
*.phi

## R/Statistical Analysis
.Rhistory
.RData
.Rproj.user/
*.Rproj

## Python
__pycache__/
*.pyc
*.pyo
.env

## IDEs and Editors
.vscode/launch.json
.vscode/tasks.json
*.swp
*.swo
*~

## OS Generated
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

## Personal Notes
personal-notes.md
TODO.md
scratch.md

## Credentials and Keys
*.key
*.pem
api-keys.txt
passwords.txt
.env.local
.secrets

## Large Reference Files
reference-genomes/
databases/
*.gb
*.gbk
*.gff
*.gtf

## Temporary Analysis Files
*.tmp
*.temp
*.log
analysis_*.txt
temp_analysis/

## Compressed Archives (if large)
*.tar.gz
*.tar.bz2  
*.zip
*.7z

## Jupyter Notebooks (checkpoints)
.ipynb_checkpoints/

## Documentation builds
docs/_build/
site/
```

**VSCode Features for .gitignore:**
1. **File Association**: VSCode recognizes `.gitignore` syntax
2. **IntelliSense**: Autocomplete for common patterns
3. **Extensions**: "gitignore" extension provides templates

#### Git LFS Integration in VSCode:

**For Large Files That Must Be Tracked:**
```bash
# Install Git LFS
git lfs install

# Track specific file types
git lfs track "*.fastq.gz"
git lfs track "*.bam"

# Add .gitattributes to repository
git add .gitattributes
git commit -m "Configure Git LFS for large files"
```

### Problem 5: Branch Management Issues

#### VSCode Branch Operations:

**Branch Switching Problems:**
1. **Uncommitted changes**: 
   - VSCode prompts to commit or stash
   - **Stash**: `Ctrl+Shift+P` → "Git: Stash"
   - **Commit**: Stage and commit in Source Control

2. **Branch not appearing**:
   - **Fetch**: `Ctrl+Shift+P` → "Git: Fetch"  
   - **Refresh**: `Ctrl+Shift+P` → "Git: Refresh"

**Create Branch from Specific Commit:**
1. **GitLens Graph View**: Shows visual commit history
2. **Right-click commit** → "Create Branch from Commit"
3. **Or Command Palette**: "Git: Create Branch From..."

### Problem 6: VSCode Git Extension Issues

#### Reset Git Extensions:

**Disable/Re-enable Git:**
1. **Command Palette** → "Developer: Reload Window"
2. **Extensions** → Find Git-related extensions
3. **Disable** → **Enable** → **Reload**

**Check Git Path:**
```json
// Settings.json
{
    "git.path": "/usr/bin/git",  // Linux/Mac
    "git.path": "C:\\Program Files\\Git\\bin\\git.exe"  // Windows
}
```

#### Common Extension Conflicts:

**Conflicting Extensions:**
- Multiple Git extensions can conflict
- **Disable unnecessary ones**:
  - Git History vs GitLens (choose one)
  - Multiple GitHub extensions

**Reset VSCode Git State:**
```bash
# Close VSCode completely
# Delete VSCode workspace settings
rm -rf .vscode/
# Reopen and reconfigure
```

### Problem 7: Performance Issues with Large Repositories

#### VSCode Optimization for Large Repos:

```json
// .vscode/settings.json for performance
{
    "git.decorations.enabled": false,
    "git.autorefresh": false,  
    "search.useIgnoreFiles": true,
    "search.exclude": {
        "**/data/**": true,
        "**/results/**": true,
        "**/*.fastq": true,
        "**/*.bam": true
    },
    "files.watcherExclude": {
        "**/data/**": true,
        "**/results/**": true
    }
}
```

**Exclude Large Directories from VSCode:**
1. **Settings** → **Files: Watcher Exclude**
2. **Add patterns** for data directories
3. **Restart VSCode** for changes to take effect

---

## Quick Reference Guide

### VSCode Git Cheat Sheet

#### 🎯 Essential VSCode Git Shortcuts

| Action | Shortcut | Alternative Method |
|--------|----------|-------------------|
| **Open Source Control** | `Ctrl+Shift+G` | Activity Bar → Source Control icon |
| **Command Palette** | `Ctrl+Shift+P` | View → Command Palette |
| **Quick Open** | `Ctrl+P` | File → Quick Open |
| **Git Commands** | `Ctrl+Shift+P` → "Git:" | Source Control → "..." menu |
| **Stage All Changes** | `Ctrl+Shift+A` | Source Control → "+" next to Changes |
| **Commit** | `Ctrl+Enter` | Source Control → ✓ checkmark |
| **Push/Pull** | `Ctrl+Shift+P` → "Git: Push/Pull" | Status bar sync button |

#### 📁 VSCode Panel Navigation

| Panel | Shortcut | Usage |
|--------|----------|-------|
| **Explorer** | `Ctrl+Shift+E` | File and folder management |
| **Search** | `Ctrl+Shift+F` | Find across all files |
| **Source Control** | `Ctrl+Shift+G` | Git operations |
| **Extensions** | `Ctrl+Shift+X` | Install/manage extensions |
| **Terminal** | `Ctrl+Shift+`` | Command line access |

#### 🔄 Git Workflow in VSCode

| Task | VSCode Method | Command |
|------|---------------|---------|
| **Initialize Repository** | Command Palette → "Git: Initialize Repository" | `git init` |
| **Clone Repository** | Command Palette → "Git: Clone" | `git clone [url]` |
| **Create Branch** | Status bar branch → "Create new branch" | `git checkout -b [name]` |
| **Switch Branch** | Status bar branch → Select branch | `git checkout [branch]` |
| **Stage Changes** | Source Control → Click `+` | `git add [file]` |
| **Unstage Changes** | Source Control → Click `-` | `git reset [file]` |
| **Commit Changes** | Source Control → Write message + `Ctrl+Enter` | `git commit -m "message"` |
| **Push Changes** | Source Control → "Sync Changes" | `git push` |
| **Pull Changes** | Source Control → "..." → "Pull" | `git pull` |

#### 🔍 Viewing Git Information

| Information | VSCode Location | Description |
|-------------|-----------------|-------------|
| **Current Branch** | Status bar (bottom-left) | Shows active branch name |
| **File Status** | Explorer panel | M=Modified, U=Untracked, D=Deleted |
| **Pending Changes** | Source Control badge | Number of uncommitted changes |
| **Git History** | GitLens → File History | Commit history for current file |
| **Blame Information** | GitLens inline annotations | Who changed each line |
| **Repository Status** | Source Control panel | All changed files |

#### 🌟 GitLens Features (Extension)

| Feature | Access Method | Description |
|---------|---------------|-------------|
| **Blame Annotations** | Inline in editor | See author and date for each line |
| **File History** | Right-click file → "GitLens: Show File History" | Visual commit history |
| **Repository Graph** | Command Palette → "GitLens: Show Graph" | Visual branch structure |
| **Compare Changes** | Command Palette → "GitLens: Compare References" | Compare branches/commits |
| **Search Commits** | GitLens sidebar → Search | Find commits by message/author |

#### 📝 Markdown Features for Documentation

| Feature | Shortcut | Usage |
|---------|----------|-------|
| **Preview Markdown** | `Ctrl+Shift+V` | View formatted version |
| **Side-by-side Preview** | `Ctrl+K V` | Edit and preview simultaneously |
| **Document Outline** | `Ctrl+Shift+O` | Navigate to sections quickly |
| **Bold Text** | `Ctrl+B` | **Bold formatting** |
| **Italic Text** | `Ctrl+I` | *Italic formatting* |
| **Insert Link** | `Ctrl+K` | [Link text](URL) |

#### 🔧 Useful VSCode Settings for Git

```json
{
    // Git settings
    "git.autofetch": true,
    "git.confirmSync": false,
    "git.enableSmartCommit": true,
    "git.suggestSmartCommit": true,
    "git.showPushSuccessNotification": true,
    
    // GitLens settings
    "gitlens.blame.inline": true,
    "gitlens.currentLine.enabled": true,
    "gitlens.codeLens.enabled": true,
    
    // File management
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    
    // Markdown settings
    "markdown.preview.breaks": true,
    "markdown.validate.enabled": true
}
```

#### 🚨 Git Problem Solving in VSCode

| Problem | VSCode Solution | Command Alternative |
|---------|-----------------|-------------------|
| **Authentication Failed** | Command Palette → "Git: Clone" → Enter credentials | Set up SSH keys |
| **Merge Conflicts** | Click conflicted file → Use merge editor | Manual editing |
| **Uncommitted Changes** | Source Control → Stash changes | `git stash` |
| **Wrong Branch** | Status bar → Switch branch | `git checkout [branch]` |
| **Undo Last Commit** | Command Palette → "Git: Undo Last Commit" | `git reset --soft HEAD~1` |
| **Discard Changes** | Source Control → Right-click file → "Discard Changes" | `git checkout -- [file]` |

#### 📊 GitHub Integration (Extension)

| Feature | Access Method | Description |
|---------|---------------|-------------|
| **View Pull Requests** | Activity Bar → GitHub icon | See open PRs |
| **Create Pull Request** | Source Control → "Create Pull Request" | Direct PR creation |
| **Review Changes** | GitHub panel → Select PR | Review and comment |
| **View Issues** | GitHub panel → Issues tab | See assigned issues |
| **Merge PR** | GitHub panel → Merge button | Complete PR workflow |

#### 🎨 VSCode Themes for Git Work

| Theme | Description | Best For |
|-------|-------------|----------|
| **Dark+ (default)** | High contrast, easy on eyes | Long coding sessions |
| **Light+ (default)** | Clean, professional look | Documentation work |
| **GitHub Dark** | Matches GitHub interface | Consistent experience |
| **Monokai** | Popular programmer theme | Code and markdown |

#### 🔍 Advanced Search and Navigation

| Feature | Shortcut | Usage |
|---------|----------|-------|
| **Search in Files** | `Ctrl+Shift+F` | Find text across repository |
| **Go to File** | `Ctrl+P` | Quick file opening |
| **Go to Symbol** | `Ctrl+Shift+O` | Navigate to headings in markdown |
| **Go to Line** | `Ctrl+G` | Jump to specific line number |
| **Find and Replace** | `Ctrl+H` | Replace text in current file |

#### 📱 VSCode Git Status Indicators

| Indicator | Meaning | Location |
|-----------|---------|----------|
| **M** | Modified file | File Explorer |
| **U** | Untracked file | File Explorer |
| **D** | Deleted file | File Explorer |
| **A** | Added file | File Explorer |
| **C** | Conflicted file | Source Control |
| **!** | Ignored file | File Explorer |
| **Number badge** | Pending changes count | Activity Bar icon |

### Command Line Cheat Sheet
| Command | Purpose | Example |
|---------|---------|---------|
| `git status` | Check what's changed | `git status` |
| `git add` | Stage changes | `git add protocol.md` |
| `git commit` | Save changes | `git commit -m "Add PCR protocol"` |
| `git push` | Upload to GitHub | `git push` |
| `git pull` | Download from GitHub | `git pull` |
| `git branch` | List branches | `git branch` |
| `git checkout` | Switch branches | `git checkout -b new-feature` |
| `git merge` | Combine branches | `git merge feature-branch` |

### SSH Quick Reference
| Action | Command |
|--------|---------|
| Generate SSH key | `ssh-keygen -t ed25519 -C "email@uni.edu"` |
| Test SSH | `ssh -T git@github.com` |
| Clone with SSH | `git clone git@github.com:user/repo.git` |

### GitHub Desktop Cheat Sheet
| Action | How To |
|--------|--------|
| See changes | Changes tab shows modified files |
| Stage files | Files are auto-staged |
| Commit | Write message → Commit to main |
| Push | Push origin button |
| Pull | Fetch origin button |
| Branch | Current branch dropdown → New branch |
| Merge | Create pull request on GitHub |

---

## Additional Resources

### Learning Git
- [GitHub's Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Pro Git Book](https://git-scm.com/book) (Free online)

### Bioinformatics-Specific Resources
- Git and Github (while separate) are often used together to organize code for projects, allow collaborators to contribute to the project, and most importantly, manage multiple versions of code/documents. We will use Git and GitHub for our projects in lab. While most of the commands are fairly straightforward Git/GitHub uses specific terminology that you'll need to familiarize yourself with.
- Understanding how to use Git to version your work can be hugely beneficial and is generally not taught in other courses. Version Control with Git should get you up to speed.
- [Bioinformatics workflows with Git](https://www.melbournebioinformatics.org.au/tutorials/tutorials/using_git/Using_Git/)

### Community Support
- Stack Overflow (tag: git)
- GitHub Community Discussions
- Your local bioinformatics community
- University IT support

---

## Conclusion

Git is an essential tool for modern bioinformatics research. Whether you're managing lab protocols, collaborating on analyses, or sharing methods with the community, version control will make your work more organized, reproducible, and collaborative.

**Remember:**
- Start simple with GitHub Desktop or VSCode
- Set up SSH for convenience and security
- Practice with non-critical files first  
- Don't be afraid to experiment - Git makes it safe!
- Ask for help from colleagues or online communities
- Keep learning - Git has many powerful features

**Next Steps:**
1. Choose your preferred method (Desktop, Command Line, or VSCode)
2. Create your first repository using one of the three approaches
3. Consider setting up SSH for easier authentication
4. Add a simple protocol or document
5. Practice the basic workflow
6. Invite a colleague to collaborate

Git might seem complicated at first, but with practice, it becomes second nature. Your future self (and your collaborators) will thank you for taking the time to learn version control!

---

*This tutorial is designed for bioinformatics researchers with varying levels of technical experience. For questions or suggestions, please open an issue in this repository.*
