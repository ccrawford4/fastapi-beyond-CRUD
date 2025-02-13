#!/bin/sh
set -e  # Exit immediately if a command fails

# Run database migrations
alembic upgrade head

# Start FastAPI
fastapi run src --port 8000 --host 0.0.0.0