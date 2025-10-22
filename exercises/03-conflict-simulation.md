# ⚔️ Exercise 3: Master Conflict Resolution

**Time**: 30 minutes | **Format**: Pairs exercise

## 🎯 The Ultimate Git Challenge
Work with a partner to intentionally create and resolve merge conflicts like professionals!

## 👥 Partner Setup
**Find a partner** - you'll simulate real collaborative development.

## 🌳 Part 1: Branch Creation (10 minutes)

### Step 1: Both Partners Create Feature Branches

**Partner A** (Advanced Logging):
```bash
cd genomics-variant-analysis
git checkout -b feature-logging-system
git branch  # Verify you're on the new branch
```
**Partner B** (Performance Metrics):
```bash
cd genomics-variant-analysis  
git checkout -b feature-performance-tracking
git branch  # Verify you're on the new branch
```

### Step 2: Make Different Changes to Same File
Both partners will modify `scripts/variant_calling.py` in different ways.

**Partner A - Add Logging System:**

Add these imports at the top:
```python
import logging
from datetime import datetime
```

Add this function after the imports:
```python
def setup_logging(log_level="INFO"):
    """Set up comprehensive logging system"""
    log_filename = f"results/analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.log"
    
    logging.basicConfig(
        level=getattr(logging, log_level),
        format='%(asctime)s - %(levelname)s - %(funcName)s - %(message)s',
        handlers=[
            logging.FileHandler(log_filename),
            logging.StreamHandler()
        ]
    )
    
    logging.info(f"🔧 Logging system initialized")
    logging.info(f"📝 Log file: {log_filename}")
    return log_filename
```

Update the main section:
```python
if __name__ == "__main__":
    log_file = setup_logging()
    logging.info("🚀 Starting genomics variant analysis")
    
    config = load_config()
    validate_parameters(config)
    run_variant_analysis(config)
    
    logging.info("🎉 Analysis pipeline completed successfully")
```

**Partner B - Add Performance Tracking:**

Add these imports at the top:
```python
import time
from datetime import datetime
import psutil  # For memory tracking
```

Add this function after the imports:
```python
def track_performance(func):
    """Decorator to track function performance"""
    def wrapper(*args, **kwargs):
        start_time = time.time()
        start_memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
        
        print(f"⏰ Started {func.__name__} at {datetime.now().strftime('%H:%M:%S')}")
        print(f"💾 Initial memory usage: {start_memory:.1f} MB")
        
        result = func(*args, **kwargs)
        
        end_time = time.time()
        end_memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
        duration = end_time - start_time
        memory_diff = end_memory - start_memory
        
        print(f"⏱️  {func.__name__} completed in {duration:.2f} seconds")
        print(f"📊 Memory change: {memory_diff:+.1f} MB")
        
        return result
    return wrapper
```

Update the main function:
```python
@track_performance
def run_variant_analysis(config):
    # ... existing function code stays the same ...

if __name__ == "__main__":
    print(f"🚀 Starting performance-tracked analysis at {datetime.now()}")
    
    config = load_config()
    validate_parameters(config)
    run_variant_analysis(config)
    
    print("🎉 Performance tracking completed")
```

### Step 3: Commit Changes on Branches

**Partner A:**
```bash
git add scripts/variant_calling.py
git commit -m "feat: add comprehensive logging system\n\n- Implement timestamped log files with multiple output streams\n- Add structured logging with function names and levels  \n- Create persistent analysis logs in results directory\n- Enable both file and console logging output"
git push origin feature-logging-system
```

**Partner B:**
```bash
# First add psutil to requirements
echo "psutil>=5.8.0" >> requirements.txt

git add scripts/variant_calling.py requirements.txt
git commit -m "feat: add performance tracking system\n\n- Implement function execution time monitoring\n- Add memory usage tracking and reporting\n- Create performance decorator for analysis functions\n- Track resource consumption during analysis runs"
git push origin feature-performance-tracking
```

## ⚔️ Part 2: The Conflict (10 minutes)

### Step 4: Merge Back to Main (Conflict Time!)

**Partner A goes first:**
```bash
git checkout main
git pull origin main  # Make sure main is current
git merge feature-logging-system
git push origin main
echo "Partner A: I merged successfully! 🎉"
```

**Partner B (this will create a conflict!):**
```bash
git checkout main
git pull origin main  # This gets Partner A's changes
git merge feature-performance-tracking  # 💥 CONFLICT!
```
You should see something like:
```
Auto-merging scripts/variant_calling.py
CONFLICT (content): Merge conflict in scripts/variant_calling.py
Automatic merge failed; fix conflicts and then commit the result.
```

Don't panic! This is exactly what we wanted! 🎯

## 🛠️ Part 3: Resolve the Conflict (10 minutes)

### Step 5: Understand the Conflict
Look at the conflicted file:
```bash
git status  # Shows which files have conflicts
cat scripts/variant_calling.py  # You'll see conflict markers
```
You'll see sections like:
```
<<<<<<< HEAD
import logging
from datetime import datetime
=======
import time
from datetime import datetime
import psutil  # For memory tracking
>>>>>>> feature-performance-tracking
```

### Step 6: Resolve by Combining Both Features
Edit `scripts/variant_calling.py` to include BOTH features:
```python
#!/usr/bin/env python3
"""
Variant Calling Analysis Pipeline
Enhanced with logging and performance tracking
"""

import yaml
import sys
from pathlib import Path
import logging          # From Partner A
from datetime import datetime  # Both partners used this
import time            # From Partner B
import psutil          # From Partner B

def setup_logging(log_level="INFO"):
    """Set up comprehensive logging system"""
    log_filename = f"results/analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.log"
    
    logging.basicConfig(
        level=getattr(logging, log_level),
        format='%(asctime)s - %(levelname)s - %(funcName)s - %(message)s',
        handlers=[
            logging.FileHandler(log_filename),
            logging.StreamHandler()
        ]
    )
    
    logging.info(f"🔧 Logging system initialized")
    logging.info(f"📝 Log file: {log_filename}")
    return log_filename

def track_performance(func):
    """Decorator to track function performance with logging"""
    def wrapper(*args, **kwargs):
        start_time = time.time()
        start_memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
        
        logging.info(f"⏰ Started {func.__name__} at {datetime.now().strftime('%H:%M:%S')}")
        logging.info(f"💾 Initial memory usage: {start_memory:.1f} MB")
        
        result = func(*args, **kwargs)
        
        end_time = time.time()
        end_memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
        duration = end_time - start_time
        memory_diff = end_memory - start_memory
        
        logging.info(f"⏱️  {func.__name__} completed in {duration:.2f} seconds")
        logging.info(f"📊 Memory change: {memory_diff:+.1f} MB")
        
        return result
    return wrapper

# ... rest of your existing functions (load_config, validate_parameters) ...

@track_performance  # From Partner B
def run_variant_analysis(config):
    """Main variant analysis pipeline with performance tracking"""
    logging.info(f"🧬 Starting variant analysis: {config['project_name']}")
    logging.info(f"   Reference: {config['reference_genome']}")
    logging.info(f"   Caller: {config['variant_caller']}")
    logging.info(f"   Quality threshold: {config['quality_threshold']}")
    logging.info(f"   Min depth: {config['min_depth']}")
    
    # Create results directory
    results_dir = Path("results")
    results_dir.mkdir(exist_ok=True)
    
    logging.info("📊 Analysis pipeline:")
    logging.info("   1. 🔍 Quality control of raw reads...")
    logging.info("   2. 🧬 Alignment to reference genome...") 
    logging.info("   3. 📋 Variant calling...")
    logging.info("   4. 🔬 Variant filtering and annotation...")
    
    # Create analysis log
    log_file = results_dir / "analysis.log"
    with open(log_file, 'w') as f:
        f.write(f"Analysis started for {config['project_name']}\n")
        f.write(f"Reference genome: {config['reference_genome']}\n")
        f.write(f"Quality threshold: {config['quality_threshold']}\n")
    
    logging.info(f"📝 Analysis log created: {log_file}")
    logging.info("✅ Pipeline completed successfully!")

if __name__ == "__main__":
    # Combine both initialization approaches
    log_file = setup_logging()  # From Partner A
    logging.info(f"🚀 Starting performance-tracked genomics analysis")
    
    config = load_config()
    validate_parameters(config)
    run_variant_analysis(config)
    
    logging.info("🎉 Analysis with logging and performance tracking completed")
```
### Step 7: Complete the Merge
```bash
# Add the resolved file
git add scripts/variant_calling.py

# Also add the updated requirements if needed
git add requirements.txt

# Complete the merge with a descriptive message
git commit -m "resolve: merge logging and performance tracking features\n\nCombined comprehensive logging system with performance monitoring:\n- Integrated timestamped logging with file and console output\n- Added performance tracking decorator with memory monitoring  \n- Created unified initialization that enables both features\n- All analysis steps now logged with execution metrics\n\nResolved conflicts by preserving functionality from both branches."

# Push the resolved merge
git push origin main
```

## 🧪 Part 4: Test the Resolution
Both partners test the final result:
```bash
# Run the enhanced script
python scripts/variant_calling.py

# You should see BOTH logging AND performance tracking!
# Check that a timestamped log file was created in results/
ls results/
```

Expected log output lines include:
```
... INFO - setup_logging - 🔧 Logging system initialized
... INFO - setup_logging - 📝 Log file: results/analysis_YYYYMMDD_HHMMSS.log
⏰ Started run_variant_analysis at 14:30:45
💾 Initial memory usage: 25.3 MB
...
⏱️  run_variant_analysis completed in 0.05 seconds
📊 Memory change: +2.1 MB
```

## ✅ Exercise Completion Checklist
- Both partners created separate feature branches
- Made conflicting changes to the same file
- Successfully created a merge conflict
- Calmly resolved conflict by combining both features
- Wrote descriptive merge commit message
- Final code includes BOTH logging AND performance tracking
- Both partners can run the resolved script successfully
- Generated timestamped log files are created

## 🏆 Conflict Resolution Mastery
You've now experienced:
- Branch-based development - working in parallel safely
- Intentional conflict creation - understanding how conflicts happen
- Conflict resolution - combining features from different developers
- Professional collaboration - communicating through commit messages
- Testing after resolution - ensuring merged code actually works

## 💡 Pro Tips You Just Learned
- Conflicts are opportunities - they often lead to better solutions
- Communication is key - good commit messages help resolve conflicts
- Test everything - merged code needs to be verified
- Stay calm - conflict markers look scary but are just guidance
- Combine features thoughtfully - don't just pick one side

## 🎉 Advanced Challenge (If You Have Extra Time)
Try creating a three-way conflict:
- Partner A adds input validation
- Partner B adds output formatting
- Partner A also adds different output formatting
See if you can resolve a more complex conflict!

## 🏆 Workshop Complete!
Congratulations! You've mastered:
- ✅ Repository creation and professional structure
- ✅ Daily Git operations and workflow
- ✅ Branch creation and management
- ✅ Collaborative conflict resolution
- ✅ Real-world teamwork scenarios

You're now ready to use Git/GitHub confidently in your bioinformatics research! 🧬✨

### 🚀 Next Steps
- Apply this to your real research projects
- Share your knowledge with lab mates
- Explore advanced Git features as needed
- Join the open source bioinformatics community!
