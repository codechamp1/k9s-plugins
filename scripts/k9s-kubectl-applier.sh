#!/bin/bash

set -e

# Get variables from k9s env
CONTEXT="$1"
KUBECONFIG_FILE="$2"

# Create tmp file
tmpfile=$(mktemp /tmp/k9s-apply-XXXXXX).yaml
# Cleanup tmp file at the end
trap "rm -f '$tmpfile'" EXIT

# Open the editor
${EDITOR:-vim} "$tmpfile"

# Apply using the same kubeconfig and context as k9s.
kubectl --kubeconfig "$KUBECONFIG_FILE" --context "$CONTEXT" apply -f "$tmpfile" --warnings-as-errors



