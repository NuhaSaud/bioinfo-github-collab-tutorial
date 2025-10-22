# 🧰 Chapter 4 – Essential Daily Operations  
**Time:** 30 minutes | **Format:** Live demo + hands-on practice  

---

## 🎯 Learning Objectives
By the end of this chapter, you will:

- Practice the **daily Git workflow** from start to finish  
- Inspect what changed and undo mistakes safely  
- Work with **branches** to test new ideas or fix bugs  
- Merge, switch, and manage multiple versions of your project  

---

## ⚡ 1. The Core Workflow — Your Everyday Git Loop

| Step | Command | What It Does | Try It Yourself |
|------|----------|--------------|----------------|
| 1️⃣ | `git status` | Shows changed, staged, or untracked files | Edit `scripts/quality_control.py` → run `git status` |
| 2️⃣ | `git add <file>` | Stages a file for commit | `git add scripts/quality_control.py` |
| 3️⃣ | `git add -p` | Lets you choose which changes to stage | Edit multiple lines → run `git add -p` → press `y`/`n` |
| 4️⃣ | `git commit -m "feat: improve QC summary"` | Saves a snapshot with message | Try committing your edit |
| 5️⃣ | `git push origin main` | Uploads your work to GitHub | Push and check your repo online |

🧪 **Mini Practice:**  
1. Add a print statement in `quality_control.py`.  
2. Run `git status`.  
3. Stage and commit the change.  
4. Push to GitHub and verify your commit appears.  

---

## 🔍 2. Inspecting Changes (Before You Commit)

| Command | Description | Practice |
|----------|--------------|-----------|
| `git diff` | Shows unstaged changes | Edit file → run `git diff` |
| `git diff --staged` | Shows staged (about-to-be-committed) changes | Stage a file → run again |
| `git log --oneline --graph --decorate --all` | Displays visual commit tree | Run to see all branches and commit history |

💡 *Tip:* Use `git diff --stat` for a summary view of which files changed.  

---

## 🧹 3. Undo & Recover (Safe Fixes)

| Scenario | Command | Try It |
|-----------|----------|--------|
| You made a wrong edit | `git restore scripts/quality_control.py` | Edit file → run this → it reverts |
| You staged by mistake | `git restore --staged scripts/quality_control.py` | Stage file → unstage it |
| You want to fix your last commit message | `git reset --soft HEAD~1` | Undo last commit but keep changes |
| You want to remove all changes since last commit | `git restore .` | Resets everything in the working directory |

🧪 **Try This:**  
1. Add a typo → `git status`  
2. Restore the file → check again  
3. Stage & unstage to see differences  

---

## 🌳 4. Working with Branches (Your Research Playground)

### 🔹 What is a Branch?
A **branch** lets you experiment safely — like a sandbox copy of your project.

Main use cases:
- Add a new feature without breaking the main project  
- Try alternative analysis methods (e.g., new QC algorithm)  
- Fix a bug, then merge back when stable  

---

### 🔸 Create and Switch Branches
```bash
# Create and switch in one step
git checkout -b feature/new-qc-report
```

Now you’re working on a *new version* of the repo.

Try:
```bash
# Make a small change and commit it
echo "# New QC Report Feature" >> docs/notes.md
git add docs/notes.md
git commit -m "feat: add new QC report notes"
```

Switch back:
```bash
git switch main
```

Your new file disappears (it’s on the other branch) — Git keeps each branch’s version separately.

---

### 🔹 Merging Branches (Bringing Work Together)
Once your feature is tested:
```bash
git switch main
git merge feature/new-qc-report
```
✅ Your changes are now part of `main`.

If everything looks good:
```bash
git branch -d feature/new-qc-report
```

🧪 **Practice Scenario:**
1. Create a branch called `feature/new-plot-style`.  
2. Edit `scripts/quality_control.py` (e.g., change bar colors).  
3. Commit and push.  
4. Switch to `main`.  
5. Merge the branch → verify the new style.  
6. Delete the branch.

---

### 🔸 Explore Branch History
```bash
git log --oneline --graph --all
```
You’ll see something like:
```
* c1d2e3f (HEAD -> main) Merge branch 'feature/new-qc-report'
|\
| * 4b5a6c7 (feature/new-qc-report) feat: add new QC report notes
|/
* 7d8e9f0 feat: initial project setup
```

---

## 🧪 5. Branching Use Cases to Practice

| Scenario | Goal | Commands |
|-----------|------|----------|
| **Feature Development** | Add new feature | `git checkout -b feature/add-filtering` |
| **Bug Fix** | Fix script error | `git checkout -b fix/qc-path-error` |
| **Experiment** | Try different algorithm | `git checkout -b exp/new-normalization` |
| **Documentation Update** | Improve README | `git checkout -b docs/readme-improve` |

Each time:  
- Make edits → commit → test.  
- Merge back to `main` once stable.  

---

## 💡 6. Common Mistakes & Recovery

| Mistake | Recovery |
|----------|-----------|
| Committed to wrong branch | `git checkout main` → `git cherry-pick <commit>` |
| Accidentally deleted branch | `git reflog` → find commit → `git checkout -b branchName <commitHash>` |
| Merge conflict | Open conflicted file, fix markers, `git add`, then `git commit` |

---

## 🧠 Wrap-Up Practice Challenge
1. Create a new branch `feature/test-revert`.  
2. Add a new file `test.txt` → commit → push.  
3. Switch to `main` and merge.  
4. Realize you merged by mistake 😅  
5. Undo merge:  
   ```bash
   git reset --hard HEAD~1
   ```  
6. Branch is restored!  

---

## ✅ Key Takeaways
- `git status` and `git diff` are your radar.  
- Commit early and logically — tell a story in your history.  
- Branches let you test freely without fear.  
- Merge carefully and verify after each integration.  

---

**Author:** Dr. Nuha BinTayyash | **2025**
