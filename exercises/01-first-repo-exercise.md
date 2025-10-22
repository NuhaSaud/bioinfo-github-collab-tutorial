# 🏋️ Exercise 1: Create Your Own Repository

**Time**: 15 minutes | **Format**: Independent practice

## 🎯 Your Mission
Create a `genomics-variant-analysis` repository from scratch!

## 📋 Step-by-Step Checklist

### 1. Repository Creation
- [ ] Create new repo on GitHub: `genomics-variant-analysis`
- [ ] Description: "Variant calling and analysis pipeline"
- [ ] Public, with README and Python .gitignore
- [ ] Clone to your computer

### 2. Project Structure
Create these directories:
```
genomics-variant-analysis/
├── config/
├── scripts/
├── data/
└── results/
```

### 3. Add Configuration
**Create config/variant_config.yaml:**
```yaml
project_name: "Genomics Variant Analysis"
reference_genome: "GRCh38"
variant_caller: "GATK"
quality_threshold: 30
min_depth: 10
max_missing: 0.1
```

### 4. Create Analysis Script
Create `scripts/variant_calling.py`:
```python
#!/usr/bin/env python3
"""
Variant Calling Analysis Pipeline
"""

import yaml
from pathlib import Path

def load_config(config_file="config/variant_config.yaml"):
    """Load analysis configuration"""
    with open(config_file, 'r') as f:
        config = yaml.safe_load(f)
    print(f"✅ Configuration loaded: {config['project_name']}")
    return config

def run_variant_analysis(config):
    """Main variant analysis pipeline"""
    print(f"🧬 Starting variant analysis")
    print(f"   Reference: {config['reference_genome']}")
    print(f"   Caller: {config['variant_caller']}")
    print(f"   Quality threshold: {config['quality_threshold']}")
    print(f"   Min depth: {config['min_depth']}")
    
    # Create results directory
    Path("results").mkdir(exist_ok=True)
    
    print("📊 Analysis steps:")
    print("   1. Quality control of raw reads")
    print("   2. Alignment to reference genome") 
    print("   3. Variant calling")
    print("   4. Variant filtering and annotation")
    
    print("✅ Pipeline setup complete!")

if __name__ == "__main__":
    config = load_config()
    run_variant_analysis(config)
```

### 5. Update Requirements
Create `requirements.txt`:
```
pyyaml>=6.0
pandas>=1.5.0
numpy>=1.21.0
matplotlib>=3.5.0
```

### 6. Professional README
Update your main `README.md`:
```md
# Genomics Variant Analysis Pipeline

A comprehensive pipeline for genomic variant calling and analysis.

## Quick Start

```bash
# Install dependencies
pip install -r requirements.txt

# Run analysis
python scripts/variant_calling.py
```
## Configuration
Edit `config/variant_config.yaml` to customize analysis parameters.

## Project Structure
- `config/` - Analysis parameters and settings
- `scripts/` - Analysis pipeline scripts
- `data/` - Input data files (not tracked in Git)
- `results/` - Analysis outputs and reports
```

### 7. Commit Everything
Write a comprehensive commit message:
```
feat: initialize genomics variant analysis pipeline

Add YAML-based configuration system
Create variant calling script framework
Set up professional project structure
Add comprehensive documentation
Configure Python environment requirements
```

### 8. Test and Push
```bash
# Test the script
python scripts/variant_calling.py

# Push to GitHub
git push origin main
```

## ✅ Success Criteria
- Repository created and well-structured
- Python script runs without errors
- Professional README with clear instructions
- Good commit message following conventions
- Visible on GitHub with complete file structure

🆘 **Need Help?**
- Check with your neighbor
- Review the chapter materials
- Raise your hand for instructor help

_Time limit: 15 minutes - then we move on together!_
