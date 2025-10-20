#!/bin/bash
set -e

# Get test directory from first argument
if [ -z "$1" ]; then
    test_dir="tests/test_c_project/include/"
    echo "Finding tests in $test_dir"
else
    test_dir="$1"
fi

any_failed=false
echo "### ------------------------------------------------------------- ###"
while IFS= read -r test_file; do
    if ! pixi run generate_example_bindings "$test_file"; then
        any_failed=true
    fi
    echo "### ------------------------------------------------------------- ###"
done < <(find "$test_dir" -name "*.h" -type f | sort)

if [ "$any_failed" = true ]; then
    exit 1
fi