# 📁 Chapter 3: Your First Bioinformatics Repository

**Time**: 45 minutes | **Format**: Guided project creation

## 🎯 Learning Goals
- Build a real bioinformatics project structure
- Make meaningful commits with good messages
- Push complete project to GitHub
- Have template for future projects

## 🧬 Project: RNA-seq Analysis Starter

We'll create a repository you can actually use for real research!

### Step 1: Create Repository (5 minutes)

**Everyone does this:**
1. Go to GitHub.com → New Repository
2. Name: `my-rnaseq-analysis` 
3. Description: "RNA-seq analysis pipeline for [your project]"
4. Public ✅, Add README ✅, Python .gitignore ✅
5. Create repository

**Then get it locally:**
- **GitHub Desktop**: Clone the repository
- **Command Line**: `git clone git@github.com:USERNAME/my-rnaseq-analysis.git`

### Step 2: Create Project Structure (15 minutes)

**Create these folders:**
```
my-rnaseq-analysis/
├── config/ # Analysis parameters
├── scripts/ # Analysis code
├── notebooks/ # Jupyter notebooks
├── data/ # Data files
├── results/ # Output files
└── tests/ # Code testing
```
by running 
```
mkdir config scripts notebooks data results tests
```
**Add data/samples.csv:**
```csv
sample_id	condition	replicate	batch
sample01	control	    1	        batch1
sample02	control	    2	        batch1
sample03	control	    3	        batch2
sample04	treatment	1	        batch1
sample05	treatment	2	        batch1
sample06	treatment	3	        batch2

```

**Add scripts/quality_control.py:**
```python
#!/usr/bin/env python3
"""
RNA-seq Quality Control Analysis

This script analyzes sample metadata and performs basic QC checks.
"""

import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

def load_samples(samples_file):
    """Load and validate sample metadata"""
    samples = pd.read_csv(samples_file)
    print(f"📊 Loaded {len(samples)} samples")
    
    # Check for required columns
    required_cols = ['sample_id', 'condition', 'replicate']
    missing_cols = [col for col in required_cols if col not in samples.columns]
    
    if missing_cols:
        print(f"❌ Missing required columns: {missing_cols}")
        return None
        
    print(f"✅ Found conditions: {list(samples['condition'].unique())}")
    return samples

def create_sample_overview(samples, output_dir="results"):
    """Create overview plots of sample distribution"""
    Path(output_dir).mkdir(exist_ok=True)
    
    # Sample counts by condition
    condition_counts = samples['condition'].value_counts()
    
    plt.figure(figsize=(10, 6))
    condition_counts.plot(kind='bar', color=['skyblue', 'lightcoral'])
    plt.title('Sample Distribution by Condition')
    plt.ylabel('Number of Samples')
    plt.xlabel('Condition')
    plt.xticks(rotation=45)
    plt.tight_layout()
    
    output_file = Path(output_dir) / "sample_distribution.png"
    plt.savefig(output_file, dpi=300, bbox_inches='tight')
    print(f"📈 Plot saved: {output_file}")
    
    return condition_counts

def main():
    """Main analysis function"""
    print("🧬 Starting RNA-seq Quality Control Analysis")
    
    # Load sample data
    samples = load_samples("data/samples.csv")
    if samples is None:
        return
    
    # Create overview plots
    condition_counts = create_sample_overview(samples)
    
    # Print summary
    print(f"\n📋 Analysis Summary:")
    print(f"   Total samples: {len(samples)}")
    print(f"   Conditions: {len(condition_counts)}")
    print(f"   Batches: {len(samples['batch'].unique()) if 'batch' in samples.columns else 'Not specified'}")
    
    print("✅ Quality control analysis completed!")

if __name__ == "__main__":
    main()
```

**Add requirements.txt:**
```
pandas>=1.5.0
matplotlib>=3.5.0
numpy>=1.21.0
seaborn>=0.11.0
biopython>=1.79
jupyter>=1.0.0
```
### Step 3: First Commit (15 minutes)

**GitHub Desktop Method:**
1. Open GitHub Desktop - it shows all your new files
2. Review changes in the diff panel
3. Write commit message:

```
feat: initialize RNA-seq analysis project structure

- Add professional directory organization
- Create sample metadata template with 6 samples
- Add quality control script with plotting functionality
- Set up Python requirements for bioinformatics analysis
```
4. Commit to main  
5. Push origin

**Command Line Method:**
```bash
# Check what we're adding
git status

# Add everything
git add .

# Commit with detailed message
git commit -m "feat: initialize RNA-seq analysis project structure\n\n- Add professional directory organization\n- Create sample metadata template with 6 samples  \n- Add quality control script with plotting functionality\n- Set up Python requirements for bioinformatics analysis"

# Push to GitHub
git push origin main
```

### Step 4: Test Your Project (10 minutes)

Let's make sure it works:
```bash
# Test the script (it should work!)
python quality_control.py
```
You should see Errors go to https://colab.research.google.com/ then fix the code using Gemini then save the new version
You should see output like:
```
🧬 Starting RNA-seq Quality Control Analysis
📊 Loaded 6 samples
✅ Found conditions: ['control', 'treatment']
📈 Plot saved: results/sample_distribution.png
...
✅ Quality control analysis completed!
```

If it worked, commit the results:
```
feat: add sample distribution analysis output

- Generate sample overview plot
- Create results directory for outputs  
- Verify analysis pipeline functionality
```
## ✅ Success Criteria
You should now have:
- Repository with professional bioinformatics structure
- Working Python script that analyzes sample data
- Generated plot in results directory
- Multiple commits with good messages
- Everything pushed to GitHub and visible online

**Check GitHub.com - your repository should look professional and complete!**

**Next:** Practice exercise to reinforce your learning
