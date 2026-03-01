#!/usr/bin/env bash

PASS=0
FAIL=0

assert_eq() {
    local description="$1"
    local expected="$2"
    local actual="$3"

    if [[ "$expected" == "$actual" ]]; then
        echo "PASS: $description"
        ((PASS++))
    else
        echo "FAIL: $description"
        echo "  expected: $expected"
        echo "  actual:   $actual"
        ((FAIL++))
    fi
}

assert_exit_code() {
    local description="$1"
    local expected_code="$2"
    local actual_code="$3"

    if [[ "$expected_code" == "$actual_code" ]]; then
        echo "PASS: $description"
        ((PASS++))
    else
        echo "FAIL: $description"
        echo "  expected exit code: $expected_code"
        echo "  actual exit code:   $actual_code"
        ((FAIL++))
    fi
}

source ./greet.sh 2>/dev/null || true

# Test: normal name
result=$(greet "World")
assert_eq "greet with normal name" "Hello, World!" "$result"

# Test: name with spaces
result=$(greet "John Doe")
assert_eq "greet with name containing spaces" "Hello, John Doe!" "$result"

# Test: empty string — should fail with exit code 1
greet "" 2>/dev/null
assert_exit_code "greet with empty string returns exit code 1" "1" "$?"

# Test: empty string — should not print a greeting
result=$(greet "" 2>/dev/null)
assert_eq "greet with empty string produces no output" "" "$result"

# Test: no argument (same as empty string)
greet 2>/dev/null
assert_exit_code "greet with no argument returns exit code 1" "1" "$?"

# Test: single character name
result=$(greet "A")
assert_eq "greet with single character name" "Hello, A!" "$result"

echo ""
echo "Results: $PASS passed, $FAIL failed"
[[ $FAIL -eq 0 ]]
