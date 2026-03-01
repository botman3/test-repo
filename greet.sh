#!/bin/bash

greet() {
    echo "Hello, $1! Welcome to OpenClaw."
}

# Allow direct invocation: ./greet.sh <name>
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    greet "$1"
fi
