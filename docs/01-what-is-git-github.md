# 📚 Chapter 1: What is Git and GitHub?

**Time**: 20 minutes | **Format**: Interactive presentation

## 🎯 Learning Goals
- Understand what version control solves
- Know Git vs GitHub difference  
- See bioinformatics examples
- Get motivated to learn these tools

## 🤔 The Problem: File Version Chaos

**Show of hands**: Who has folders that look like this?
```
my-analysis/
├── analysis.py
├── analysis_v2.py
├── analysis_final.py
├── analysis_FINAL_REAL.py
├── analysis_actually_final.py
└── analysis_submitted_version.py
```

## 🛠️ What Git/GitHub Solve

### Version Control = Time Machine for Code
- 📸 Every change is a snapshot
- 🔄 Go back to any previous version
- 👥 Multiple people can work simultaneously
- 📝 Track who changed what and when

### Real Example: RNA-seq Analysis Evolution
```
v1.0: "Initial pipeline" ← Jan 15
↓
v1.1: "Add quality filtering" ← Jan 22
↓
v1.2: "Fix memory leak" ← Jan 28
↓
v2.0: "Switch to DESeq2" ← Feb 05
```

## 🎭 Git vs GitHub

**Git** = Software on your computer (tracks changes)  
**GitHub** = Website for sharing and collaboration

**Analogy**: 
- Git = Microsoft Word
- GitHub = OneDrive/Google Drive

## 🧬 Why Bioinformatics NEEDS This

### 1. **Reproducible Research**
- Know exactly which version created Figure 2
- Share code with publications
- Others can verify your results

### 2. **Team Collaboration**  
- 5 people working on same analysis
- No more email attachments!
- Systematic code review

### 3. **Experiment Management**
- Try different algorithms safely
- Compare approaches easily
- Never lose working code

## 💡 Key Concepts Preview

- **Repository**: Your project folder with superpowers
- **Commit**: Save a snapshot with description
- **Branch**: Parallel version for experiments  
- **Push/Pull**: Sync with online version

## ❓ Discussion Questions

1. What version control problems do you face?
2. How do you currently collaborate on code?
3. What would make your research more reproducible?

---
**Next**: Setup your accounts and tools!
