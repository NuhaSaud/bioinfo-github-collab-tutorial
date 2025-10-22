# 🧰 Chapter 4: Essential Daily Operations

**Time**: 30 minutes | **Format**: Live demo + practice

## Core Loop
```bash
git status
git add <files>     # or: git add -p (select hunks)
git commit -m "type: short message"
git push origin main
```

## Inspecting Changes
```bash
git diff                 # unstaged changes
git diff --staged        # staged changes
git log --oneline --graph --decorate --all
```

## Undo Safely
```bash
git restore <file>       # discard working changes
git restore --staged <f> # unstage
git reset --soft HEAD~1  # undo last commit, keep changes
```

## Branch Basics
```bash
git checkout -b feature/my-change
git switch feature/my-change
git merge feature/my-change
```
