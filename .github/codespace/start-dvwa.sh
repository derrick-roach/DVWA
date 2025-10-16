#!/bin/bash

# DVWA GitHub Codespace Setup Script
echo "🔧 Setting up DVWA in GitHub Codespace..."

# Copy the configuration file
echo "📝 Copying configuration file..."
cp config/config.inc.php.dist config/config.inc.php

# Start Docker containers
echo "🐳 Starting Docker containers..."
docker compose up -d

# Wait a moment for containers to start
sleep 3

# Get the actual forwarded port
PORT=$(docker compose port dvwa 80 2>/dev/null | cut -d: -f2)
if [ -z "$PORT" ]; then
    PORT="80"
fi

echo "✅ DVWA setup complete!"
echo "🌐 Click 'Open in Browser' button in pop-up to access DVWA"
echo "Or use the URL below:"
echo "🔗 https://${CODESPACE_NAME}-${PORT}.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/"

# echo "👤 Default login: admin/password"
# ^^^ hiding this for now 

echo "⏳ Keeping Codespace active. Press Ctrl+C to exit."

# Simple heartbeat so the process stays active and avoids idle suspension.
while true; do
    sleep 300
    printf '🫀 Keepalive: %s\n' "$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
done
