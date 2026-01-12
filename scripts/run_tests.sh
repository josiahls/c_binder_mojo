#!/bin/bash
set -e

# Get test directory from second argument
if [ -z "$1" ]; then
    test_dir="tests/"
    echo "Finding tests in $test_dir"
else
    test_dir="$1"
fi

any_failed=false
echo "### ------------------------------------------------------------- ###"
while IFS= read -r test_file; do
    if ! pixi run mojo run $C_BINDER_TEST_INCLUDES "$test_file"; then
        any_failed=true
    fi
    echo "### ------------------------------------------------------------- ###"
done < <(find "$test_dir" -name "test_*.mojo" -type f | sort)

if [ "$any_failed" = true ]; then
    exit 1
fi