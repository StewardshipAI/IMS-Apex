#!/bin/bash
# IMS-Apex → IMS-Core Integration Script
# Syncs generated specs to Core repository

set -e

CORE_PATH="../ims-core"
SPEC_OUTPUT="$CORE_PATH/docs/ims"
APEX_OUTPUT=".agent/output"

echo "🔗 Syncing Apex specs to IMS-Core..."

# Verify paths exist
if [ ! -d "$CORE_PATH" ]; then
    echo "❌ Error: IMS-Core not found at $CORE_PATH"
    exit 1
fi

if [ ! -d "$SPEC_OUTPUT" ]; then
    echo "❌ Error: Core docs directory not found"
    exit 1
fi

if [ ! -d "$APEX_OUTPUT" ]; then
    echo "⚠️  No output directory - nothing to sync"
    exit 0
fi

# Count specs to sync
SPEC_COUNT=$(find "$APEX_OUTPUT" -name "*.md" -type f | wc -l)

if [ "$SPEC_COUNT" -eq 0 ]; then
    echo "⚠️  No specs found in $APEX_OUTPUT"
    exit 0
fi

echo "📄 Found $SPEC_COUNT spec(s) to sync"

# Copy specs
for spec in "$APEX_OUTPUT"/*.md; do
    if [ -f "$spec" ]; then
        filename=$(basename "$spec")
        echo "  → Copying $filename"
        cp "$spec" "$SPEC_OUTPUT/"
    fi
done

# Log sync
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")
echo "$TIMESTAMP - Synced $SPEC_COUNT spec(s) to Core" >> .agent/sync.log

echo "✅ Sync complete!"
echo ""
echo "Next steps:"
echo "  1. cd $CORE_PATH"
echo "  2. git status"
echo "  3. Review changes and commit"
echo ""