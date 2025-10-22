# 🏋️ Exercise 2: Master Daily Git Operations

**Time**: 30 minutes | **Format**: Guided practice with checkpoints

## 🎯 Learning Goals
- Practice the Git commands you'll use every day
- Learn to write great commit messages
- Understand file states (modified, staged, committed)
- Get comfortable with undoing changes

## 🔄 Part 1: Making Changes (15 minutes)

Continue with your `genomics-variant-analysis` repository.

### Task 1: Add Error Handling

Update `scripts/variant_calling.py` to be more robust:
```python
#!/usr/bin/env python3
"""
Variant Calling Analysis Pipeline
Enhanced with error handling and validation
"""

import yaml
import sys
from pathlib import Path

def load_config(config_file="config/variant_config.yaml"):
    """Load and validate analysis configuration"""
    try:
        with open(config_file, 'r') as f:
            config = yaml.safe_load(f)
        print(f"✅ Configuration loaded: {config['project_name']}")
        
        # Validate required fields
        required_fields = ['reference_genome', 'variant_caller', 'quality_threshold']
        missing_fields = [field for field in required_fields if field not in config]
        
        if missing_fields:
            print(f"❌ Missing required configuration: {missing_fields}")
            sys.exit(1)
            
        return config
        
    except FileNotFoundError:
        print(f"❌ Configuration file not found: {config_file}")
        sys.exit(1)
    except yaml.YAMLError as e:
        print(f"❌ Error parsing configuration file: {e}")
        sys.exit(1)

def validate_parameters(config):
    """Validate analysis parameters"""
    print("🔍 Validating parameters...")
    
    if config['quality_threshold'] < 20:
        print("⚠️  Quality threshold is quite low - results may be unreliable")
    
    if config['min_depth'] < 5:
        print("⚠️  Minimum depth is very low - consider increasing")
        
    print("✅ Parameter validation completed")

def run_variant_analysis(config):
    """Main variant analysis pipeline"""
    print(f"🧬 Starting variant analysis: {config['project_name']}")
    print(f"   Reference: {config['reference_genome']}")
    print(f"   Caller: {config['variant_caller']}")
    print(f"   Quality threshold: {config['quality_threshold']}")
    print(f"   Min depth: {config['min_depth']}")
    
    # Create results directory
    results_dir = Path("results")
    results_dir.mkdir(exist_ok=True)
    
    print("📊 Analysis pipeline:")
    print("   1. 🔍 Quality control of raw reads...")
    print("   2. 🧬 Alignment to reference genome...") 
    print("   3. 📋 Variant calling...")
    print("   4. 🔬 Variant filtering and annotation...")
    
    # Create a simple log file
    log_file = results_dir / "analysis.log"
    with open(log_file, 'w') as f:
        f.write(f"Analysis started for {config['project_name']}\n")
        f.write(f"Reference genome: {config['reference_genome']}\n")
        f.write(f"Quality threshold: {config['quality_threshold']}\n")
    
    print(f"📝 Log file created: {log_file}")
    print("✅ Pipeline completed successfully!")

if __name__ == "__main__":
    config = load_config()
    validate_parameters(config)
    run_variant_analysis(config)
```

### Task 2: Practice Git Status and Diff
Before committing, explore what changed:
```bash
# See what files are modified
git status

# See exactly what changed
git diff scripts/variant_calling.py
# The diff shows you:
# - Lines removed (in red, starting with -)
# - Lines added (in green, starting with +)
```

### Task 3: Commit Your Improvements
Write a detailed commit message:
```bash
git add scripts/variant_calling.py
git commit -m "improve: add comprehensive error handling to variant calling\n\n- Add try/catch blocks for file loading and YAML parsing\n- Validate required configuration fields at startup\n- Add parameter validation with helpful warnings\n- Create analysis log file for tracking runs\n- Provide clear error messages for troubleshooting"
```

## 🔄 Part 2: File State Practice (15 minutes)

### Task 4: Add Multiple Features
Let's practice staging files selectively.

Add a new filtering script `scripts/filter_variants.py`:
```python
#!/usr/bin/env python3
"""
Variant Filtering Utilities
"""

def filter_by_quality(quality_threshold=30):
    """Filter variants by quality score"""
    print(f"🔍 Filtering variants with QUAL >= {quality_threshold}")
    # In real implementation, would process VCF files
    print("✅ Quality filtering completed")

def filter_by_depth(min_depth=10):
    """Filter variants by read depth"""
    print(f"📊 Filtering variants with DP >= {min_depth}")
    print("✅ Depth filtering completed")

def filter_by_frequency(min_freq=0.05):
    """Filter variants by allele frequency"""
    print(f"📈 Filtering variants with AF >= {min_freq}")
    print("✅ Frequency filtering completed")

if __name__ == "__main__":
    print("🧬 Running variant filtering pipeline")
    filter_by_quality()
    filter_by_depth()
    filter_by_frequency()
    print("🎉 All filtering steps completed!")
```

Also update `requirements.txt`:
```
pyyaml>=6.0
pandas>=1.5.0
numpy>=1.21.0
matplotlib>=3.5.0
scipy>=1.9.0
click>=8.0.0
```

### Task 5: Practice Selective Staging
```bash
# Check status - you should see 2 modified files
git status

# Add only the new script first
git add scripts/filter_variants.py

# Check status again - filter_variants.py is staged, requirements.txt is not
git status

# See what's staged for commit
git diff --staged

# Add requirements.txt too
git add requirements.txt

# Commit both files
git commit -m "feat: add variant filtering utilities\n\n- Create filter_variants.py with quality, depth, and frequency filters\n- Update requirements.txt with additional analysis dependencies\n- Prepare for advanced filtering pipeline integration"
```

### Task 6: Practice Undoing Changes
Intentionally break something—then undo it:
```yaml
# Edit config/variant_config.yaml and add some bad content:
project_name: "Genomics Variant Analysis"
reference_genome: "GRCh38"
variant_caller: "GATK"
quality_threshold: 30
min_depth: 10
max_missing: 0.1
broken_field: "this will cause problems"
another_bad_field: [1, 2, 3, "mixed types"]
```

Now undo it:
```bash
# See what you changed
git diff config/variant_config.yaml

# Undo the changes (restore the file)
git checkout -- config/variant_config.yaml
# Or with newer Git:
git restore config/variant_config.yaml

# Check that it's back to normal
git status
```

### Task 7: Test Everything Works
```bash
# Test both scripts
python scripts/variant_calling.py
python scripts/filter_variants.py

# If both work, push everything
git push origin main
```
## ✅ Exercise Completion Checklist
- Enhanced variant calling script with error handling
- Created new filtering script with multiple functions
- Practiced git status and git diff commands
- Made commits with detailed, professional messages
- Practiced selective staging of files
- Successfully undid unwanted changes
- Both scripts run without errors
- All changes pushed to GitHub

## 💡 Key Takeaways
- `git status` is your friend - use it constantly
- `git diff` shows exactly what changed - review before committing
- Good commit messages explain WHY, not just WHAT
- Selective staging lets you make focused commits
- Undoing changes is safe and easy with Git
- Test your code before pushing to shared repositories

**Next:** Team collaboration and conflict resolution!
