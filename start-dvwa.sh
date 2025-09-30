#!/bin/bash

# DVWA GitHub Codespace Setup Script
echo "🔧 Setting up DVWA in GitHub Codespace..."

# Copy the configuration file
echo "📝 Copying configuration file..."
cp config/config.inc.php.dist config/config.inc.php

# Start Docker containers
echo "🐳 Starting Docker containers..."
docker compose up -d

echo "✅ DVWA setup complete!"
echo "🌐 Click 'Open in Browser' to access DVWA"
echo "👤 Default login: admin/password"

