# Vibe Insights - Claude Code Plugin

Captures Claude Code transcripts and uploads to Vibe Insights server for observability analysis.

## Installation

```bash
/plugin marketplace add vibeinsights/claude-code
/plugin install vibeinsights
```

## Authentication

After installation, authenticate with your Vibe Insights server:

```bash
vibeinsights login
```

For self-hosted instances, configure the server URL:

```bash
export VIBEINSIGHTS_BASE_URL=https://your-instance.com
vibeinsights login
```

## How It Works

The plugin captures transcripts using Stop and SessionEnd hooks:
- **Stop**: Captures after each agent response (real-time visibility)
- **SessionEnd**: Captures complete session (guaranteed final state)

Transcripts are automatically deduplicated server-side based on session ID.

## Configuration

Environment variables:
- `VIBEINSIGHTS_BASE_URL` - Server URL (default: https://vibeinsights.dev)
- `VI_API_TOKEN` - API token (stored in keychain after login)

## Support

Issues: https://github.com/vibeinsights/claude-code/issues
Docs: https://vibeinsights.dev/docs
