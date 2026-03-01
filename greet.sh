#!/usr/bin/env bash

greet() {
    local name="$1"

    if [[ -z "$name" ]]; then
        echo "Error: name cannot be empty" >&2
        return 1
    fi

    echo "Hello, $name!"
}

greet "$@"
