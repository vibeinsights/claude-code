# AgentLogs - Claude Code Plugin

Captures Claude Code transcripts and uploads to AgentLogs server.

## Installation

### 1. Authentication

Run the following command in the terminal:

```bash
npx agentlogs login
```

### 2. Claude Code Plugin

Inside Claude Code, run the following commands:

```bash
/plugin marketplace add vibeinsights/claude-code
/plugin install vibeinsights
```

## How It Works

The plugin captures transcripts using Stop and SessionEnd hooks:

- **Stop**: Captures after each agent response (real-time visibility)
- **SessionEnd**: Captures complete session (guaranteed final state)

Transcripts are automatically deduplicated server-side based on session ID.

## Support

Issues: https://github.com/agentlogs/claude-code/issues
Docs: https://agentlogs.ai/docs
