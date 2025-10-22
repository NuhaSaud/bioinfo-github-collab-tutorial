# 🧬 Git/GitHub Workshop - Participant Handout

**📋 Keep this handy during the workshop!**

## ⚡ Essential Commands Reference

### Git CLI Quick Commands
```bash
# Check what's happening
git status

# Add files
git add filename.py        # Specific file
git add .                  # Everything

# Commit changes  
git commit -m "your descriptive message"

# Push to GitHub
git push origin main

# Create branch
git checkout -b new-branch-name

# Switch branches
git checkout branch-name

# Merge branches
git merge branch-name

# View history
git log --oneline
```

### GitHub Desktop Quick Actions
- **New Repository**: File → New Repository  
- **Clone Repository**: File → Clone Repository  
- **Commit**: Write message → "Commit to main"  
- **Push**: Click "Push origin" button  
- **New Branch**: Current branch → "New Branch"  
- **Switch Branch**: Click branch name in dropdown  

## 📝 Great Commit Messages
Format:
```
type: brief description (50 characters max)

Optional longer explanation of what and why.
```
Types: `feat`, `fix`, `docs`, `improve`, `refactor`

Examples:
```
feat: add quality control analysis script
fix: resolve memory leak in alignment step
docs: update README with installation steps
improve: add error handling to variant calling
```

## 🚨 Emergency Git Help
Stuck? Try these:
```bash
git status          # See current situation
git diff            # See what changed
git log --oneline   # See recent commits
```

Made a mistake?
```bash
# Undo changes to a file
git checkout -- filename.py
# or (newer Git)
git restore filename.py

# Undo last commit (keep changes)
git reset --soft HEAD~1

# See what you're about to commit
git diff --staged
```

### Conflict resolution:
1. Look for `<<<<<<<`, `=======`, `>>>>>>>` markers  
2. Decide what to keep (often both features!)  
3. Remove the conflict markers  
4. Test that code works  
5. `git add filename` then `git commit`

## 📚 Today's Exercises
**Exercise 1: First Repository (15 min)** — Goal: Create `genomics-variant-analysis` repository
- Create repo with proper structure
- Add configuration and analysis scripts
- Make professional commits
- Push to GitHub

**Exercise 2: Daily Operations (30 min)** — Goal: Practice everyday Git workflow
- Edit files and see changes with `git diff`
- Practice `git status` and staging
- Write detailed commit messages
- Learn to undo mistakes safely

**Exercise 3: Team Collaboration (30 min)** — Goal: Master conflict resolution with partner
- Create separate feature branches
- Make conflicting changes to same file
- Intentionally create merge conflict
- Resolve conflict by combining features
- Test final merged result

## ✅ Success Checklist
By end of workshop:
- Created repository from scratch
- Comfortable with commit → push workflow
- Can create and switch branches
- Resolved a merge conflict with partner
- Feel confident using Git for research

## 🔗 Useful Resources
- Workshop materials: `github.com/NuhaSaud/bioinfo-github-collab-tutorial`
- GitHub Desktop: `desktop.github.com`
- Git documentation: `git-scm.com/doc`

## 🆘 Getting Help
- 🤔 Check this reference sheet first
- 👥 Ask your neighbor or workshop partner
- 🙋‍♀️ Raise hand for instructor assistance
- 💬 Use workshop chat (if virtual)

Remember: Everyone makes Git mistakes! The important thing is learning how to recover. Git keeps everything safe - you can't actually lose work! 🚀

**Workshop hashtag:** `#BioinformaticsGit`
