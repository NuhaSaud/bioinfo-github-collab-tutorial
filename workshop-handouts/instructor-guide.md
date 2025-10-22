# 👩‍🏫 Instructor Guide — Bioinformatics Git/GitHub Workshop (4 hours)

## Goals
- Participants leave with a working repo and confidence using Git (CLI or Desktop).
- Practice real workflows: commits, branches, conflicts, PR-style review.

## Audience
Bioinformatics students/researchers with mixed coding experience.

## Agenda (suggested timing)
1. **Session 1 — Foundation (60 min)**
   - Slides/discussion: Why Git/GitHub, reproducibility, teams.
   - Demo: Git vs GitHub, repos, commits (5–10 min demo).

2. **Session 2 — First Project (60 min)**
   - Create `my-rnaseq-analysis` structure and commit.
   - Verify `quality_control.py` works and produces a plot.

3. **Session 3 — Daily Operations (60 min)**
   - Edit, stage selectively, commit messages, undo, status/diff.
   - Exercise 2 checkpoints and debrief.

4. **Session 4 — Collaboration (60 min)**
   - Branching model; pairs do conflict simulation and resolution.

## Logistics
- Share setup script 30–60 min before:  
  `curl -L <repo-raw-url>/setup/workshop-setup.sh | bash`
- Ensure GitHub logins and internet.
- Room layout: pairs; projector for quick demos.

## Troubleshooting
- **SSH fails** → Use HTTPS remote temporarily.
- **Git not found** → Install Git, restart terminal.
- **Permission denied on push** → Check remote URL/role.
- **Merge conflicts scary** → Open file, search markers, resolve calmly, test.

## Wrap-up
- Showcase a few participant repos.
- Encourage creating issues/PRs on their real projects.
