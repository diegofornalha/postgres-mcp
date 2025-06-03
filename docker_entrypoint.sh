#!/bin/bash
# MCP Docker entrypoint script

echo "Starting PostgreSQL MCP Server..."
echo "Database URI configured: ${DATABASE_URI:0:30}..."
echo "Running in stdio mode - waiting for MCP client connection..."

# Keep the container running and wait for stdio input
exec python -u mcp_stdio_server.py