Debug why greet.sh might fail with empty string input. Check if it handles edge cases.

--- VAULT CONTEXT (auto-injected) ---
## Project: test-repo
# test-repo

## Architecture
Simple Bash utility repo for testing the OpenClaw agent pipeline.

## Key Files
- `greet.sh` — Main greeting function. Takes a name parameter and prints a welcome message.
- `test_greet.sh` — Unit test for greet function.

## Gotchas
- No package.json — pure bash project.
- Uses `#!/usr/bin/env bash` shebang.
- Tests use simple string comparison with `diff`.

## History
- PR #3: Added greet function + tests (2026-03-01)
## Past Successful Patterns

- Task: test-feature-phase2 | Agent: claude | Model: claude-opus-4-6

--- END VAULT CONTEXT ---
