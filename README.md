# 📚 Bioinformatics Git & GitHub Collaboration Tutorial for Beginners

## 🎯 What You'll Learn
This tutorial will teach you how to use Git as a version control tool for your bioinformatics projects, even if you have no programming experience. You'll learn three different ways to use Git:
1. **GitHub Desktop** (Graphical Interface - Easiest)
2. **Command Line** (Terminal/Command Prompt)
3. **VSCode Integration** (Visual Code Editor)

## 📖 Table of Contents
1. [What is Git and Why Do We Need It?](#what-is-git)
2. [Setting Up Your Environment](#setup)
3. [Method 1: GitHub Desktop (Beginner-Friendly)](#github-desktop)
4. [Method 2: Command Line Basics](#command-line)
5. [Method 3: VSCode Integration](#vscode)
6. [🔐 SSH Authentication Setup (Recommended)](#ssh-setup)
7. [Essential Git Concepts](#concepts)
8. [Practical Examples](#examples)
9. [Collaboration Workflows](#collaboration)
10. [Troubleshooting Common Issues](#troubleshooting)

---

## 🤔 What is Git and Why Do We Need It? {#what-is-git}

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

## 🛠️ Setting Up Your Environment {#setup}

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

## 🖥️ Method 1: GitHub Desktop (Beginner-Friendly) {#github-desktop}

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

## 💻 Method 2: Command Line Basics {#command-line}

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

## 🎨 Method 3: VSCode Integration {#vscode}

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

## 🔐 SSH Authentication Setup (Recommended) {#ssh-setup}

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

### Step 3: Add SSH Key to GitHub {#step-3-add-ssh-key-to-github}

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

## 🧠 Essential Git Concepts {#concepts}

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

## 🧪 Practical Examples {#examples}

### Example 1: Managing Lab Protocols

#### Scenario
Your lab needs to maintain and update standard operating procedures (SOPs) that everyone can access and contribute to.

#### Setup
1. Create repository: `lab-protocols`
2. Structure:
```
lab-protocols/
├── DNA-extraction/
│   ├── CTAB-method.md
│   ├── kit-based-method.md
│   └── troubleshooting.md
├── PCR/
│   ├── standard-PCR.md
│   ├── qPCR.md
│   └── primer-design.md
└── README.md
```

#### Sample Protocol File (`CTAB-method.md`):
```markdown
# CTAB DNA Extraction Method

**Version**: 2.1
**Last Updated**: November 8, 2024
**Updated By**: Jane Smith

## Materials
- 2x CTAB buffer (see appendix for recipe)
- Chloroform:isoamyl alcohol (24:1)
- Isopropanol
- 70% ethanol
- TE buffer (pH 8.0)

## Protocol
### Sample Preparation
1. Collect 100mg fresh tissue
2. Flash freeze in liquid nitrogen
3. Grind to powder using mortar and pestle

### DNA Extraction
1. Add 600μL 2x CTAB buffer (preheated to 60°C)
2. Incubate at 60°C for 30 minutes
3. Add 600μL chloroform:isoamyl alcohol
4. Mix gently for 10 minutes
5. Centrifuge at 12,000g for 10 minutes

[Continue with remaining steps...]

## Quality Control
- Expected yield: 50-200 ng/μL
- A260/A280 ratio: 1.8-2.0
- Integrity check: Run on 1% agarose gel

## Troubleshooting
| Problem | Cause | Solution |
|---------|-------|----------|
| Low yield | Insufficient tissue | Increase sample size |
| Brown color | Oxidation | Add more β-mercaptoethanol |
| Degraded DNA | Over-mixing | Reduce mixing time |

## Version History
- v2.1: Added quality control section
- v2.0: Updated buffer composition
- v1.0: Initial protocol
```

### Example 2: Research Project Documentation

#### Repository Structure:
```
dna-barcoding-project/
├── field-notes/
├── lab-work/
├── analysis/
├── protocols/
└── README.md
```

### Example 3: Collaborative Analysis Documentation

#### Branching Strategy:
- `main` - Final, reviewed analyses
- `jane-blast-analysis` - BLAST searches and species identification
- `john-phylogeny` - Phylogenetic tree construction  
- `mary-stats` - Statistical analyses

---

## 🤝 Collaboration Workflows {#collaboration}

### Workflow 1: Small Lab Team (2-5 people)

#### Setup
1. One person creates the main repository
2. Add collaborators as team members
3. Everyone clones the repository

#### Daily Workflow
```bash
# Start of day - get latest changes
git pull

# Make your changes
# Edit files, add new protocols, etc.

# End of day - share your changes
git add .
git commit -m "Add new genotyping protocol"
git push
```

### Workflow 2: Large Research Collaboration

#### Setup
1. Main repository owned by project lead
2. Contributors fork the repository
3. Work on their own forks

#### Contributing Process
1. **Fork** the repository on GitHub
2. **Clone** your fork locally
3. **Create branch** for your contribution
4. **Make changes** and commit
5. **Push** to your fork
6. **Create Pull Request** from your fork to main repository

---

## 🚨 Troubleshooting Common Issues {#troubleshooting}

### Problem 1: "Permission denied" when pushing
**Cause**: Authentication issues
**Solution**: Set up SSH authentication (see [SSH section](#ssh-setup))

### Problem 2: "Your branch is X commits behind"
**Cause**: Others have made changes since you last pulled
**Solution**:
```bash
git pull  # Download latest changes
```

### Problem 3: Merge Conflicts
**Cause**: Two people changed the same lines
**Solution**: Edit conflicted files, then:
```bash
git add conflicted-file.md
git commit -m "Resolve merge conflict"
```

### Problem 4: Wrong commit message
**Solution**:
```bash
# If you haven't pushed yet
git commit --amend -m "Correct message"
```

---

## 📋 Quick Reference Guide

### GitHub Desktop Cheat Sheet
| Action | How To |
|--------|--------|
| See changes | Changes tab shows modified files |
| Stage files | Files are auto-staged |
| Commit | Write message → Commit to main |
| Push | Push origin button |
| Pull | Fetch origin button |
| Branch | Current branch dropdown → New branch |

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

### SSH Quick Reference
| Action | Command |
|--------|---------|
| Generate SSH key | `ssh-keygen -t ed25519 -C "email@uni.edu"` |
| Test SSH | `ssh -T git@github.com` |
| Clone with SSH | `git clone git@github.com:user/repo.git` |

---

## 🎯 Best Practices for Bioinformatics

### File Organization
```
research-project/
├── README.md                 # Project overview
├── protocols/               # Lab procedures
├── data/                   # Raw data (consider .gitignore)
├── analysis/               # Analysis scripts and results  
├── manuscripts/            # Papers and presentations
└── .gitignore             # Files to ignore
```

### .gitignore for Bioinformatics
```bash
# Large data files
*.fastq
*.fasta.gz
*.bam
*.vcf.gz

# Temporary files  
tmp/
*.tmp

# Sensitive information
api-keys.txt
passwords.txt
```

---

## 🎓 Additional Resources

### Learning Git
- [GitHub's Git Handbook](https://guides.github.com/introduction/git-handbook/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Pro Git Book](https://git-scm.com/book) (Free online)

---

## 🎉 Conclusion

Git is an essential tool for modern bioinformatics research. Whether you're managing lab protocols, collaborating on analyses, or sharing methods with the community, version control will make your work more organized, reproducible, and collaborative.

**Remember:**
- Start simple with GitHub Desktop or VSCode
- Set up SSH for convenience and security
- Practice with non-critical files first  
- Don't be afraid to experiment - Git makes it safe!

**Next Steps:**
1. Choose your preferred method (Desktop, Command Line, or VSCode)
2. Create your first repository
3. Consider setting up SSH for easier authentication
4. Add a simple protocol or document
5. Practice the basic workflow
6. Invite a colleague to collaborate

---

*This tutorial is designed for bioinformatics researchers with varying levels of technical experience. For questions or suggestions, please open an issue in this repository.*

