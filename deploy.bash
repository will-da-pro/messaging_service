#!/usr/bin/env bash

cd ./messenger_backend/
source .venv/bin/activate
daphne -b 0.0.0.0 -p 8000 messenger_backend.asgi:application &
backend_pid=$!

cd ../messenger_app/
npm run dev &
frontend_pid=$!

cleanup() {
  echo "Stopping server..."
  kill $frontend_pid
  kill $backend_pid
  echo "Server shutdown complete."
  exit 1
}

trap cleanup SIGINT

while true; do
  echo "Server is running. Press Ctrl+C to stop."
  sleep 10
done


