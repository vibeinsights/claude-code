#!/usr/bin/env bash
#
# Vibe Insights Claude Code Hook Wrapper
#
# This wrapper script enables seamless switching between local development and production modes:
# - Local Development: Uses VI_CLI_PATH environment variable to point to local CLI
# - Production: Uses npx to fetch the latest published version of @vibeinsights/cli
#
# Usage: Set VI_CLI_PATH to use local CLI, unset it to use production
#

set -e

if [ -n "$VI_CLI_PATH" ]; then
  exec $VI_CLI_PATH "$@"
fi

exec npx -y @vibeinsights/cli@latest "$@"
