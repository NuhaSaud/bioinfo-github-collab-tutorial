# 🌳 Chapter 5: Branching & Conflict Resolution

**Time**: 30 minutes | **Format**: Short theory + pair exercise

## Branching Model
- `main` is always deployable.
- Feature branches for isolated work.
- Merge only after testing.

## Handling Conflicts
1. `git merge feature-x` → conflict markers appear.
2. Open the file; decide how to combine.
3. Remove markers, test locally.
4. `git add <file>` → `git commit`.
5. Push and verify.

See **Exercise 3** for a full, realistic simulation.
