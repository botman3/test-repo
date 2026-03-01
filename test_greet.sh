#!/bin/bash

expected="Hello, World! Welcome to OpenClaw."
actual=$(./greet.sh "World")

if [[ "$actual" == "$expected" ]]; then
    echo "PASS: greet output matches expected"
    exit 0
else
    echo "FAIL: expected '$expected', got '$actual'"
    exit 1
fi
