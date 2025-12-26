#!/bin/bash
# IMS-Apex Framework Initialization
# Version: 0.1.1

set -e

echo "🚀 Initializing IMS-Apex Framework..."

# Verify we're in the right directory
if [ ! -f "config.yaml" ]; then
    echo "❌ Error: Must run from IMS-Apex root directory"
    exit 1
fi

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p .agent/{spec,output,tasks,logs}
mkdir -p docs/{specs,research}
mkdir -p scripts

# Create .gitkeep files
touch .agent/.gitkeep
touch docs/.gitkeep
touch scripts/.gitkeep
touch .agent/output/.gitkeep
touch .agent/logs/.gitkeep

# Verify symlink to Core
if [ ! -L "docs/core-specs" ]; then
    echo "⚠️  Warning: Core symlink not found"
    echo "Run: ln -s ../ims-core/docs/ims ./docs/core-specs"
else
    echo "✅ Core symlink verified"
fi

# Check if .agent files exist
if [ ! -f ".agent/spec/requirement.md" ]; then
    echo "📝 Creating .agent template files..."
    touch .agent/spec/requirement.md
    touch .agent/spec/design.md
    touch .agent/tasks.md
    touch .agent/sync.log
fi

# Verify config.yaml
echo "⚙️  Verifying configuration..."
if command -v python3 &> /dev/null; then
    python3 -c "import yaml; yaml.safe_load(open('config.yaml'))" 2>/dev/null && echo "✅ config.yaml valid" || echo "⚠️  config.yaml syntax issues"
else
    echo "⚠️  Python not found - skipping YAML validation"
fi

# Check git status
if [ -d ".git" ]; then
    echo "✅ Git repository initialized"
    git status --short
else
    echo "⚠️  Not a git repository - run: git init"
fi

echo ""
echo "🎉 IMS-Apex Framework Ready!"
echo ""
echo "Next steps:"
echo "  1. Edit config.yaml if needed"
echo "  2. Run: tree -L 2 -a (verify structure)"
echo "  3. Test: gemini-cli --model=gemini-3-pro-preview"
echo ""