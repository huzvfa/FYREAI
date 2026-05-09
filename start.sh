#!/bin/bash
# FYRE AI — Quick Start Script

echo "🔥 Starting FYRE AI..."
echo ""

# Check if Ollama is running
if ! curl -s http://localhost:11434 > /dev/null 2>&1; then
  echo "⚠️  Ollama is not running. Starting it..."
  ollama serve &
  sleep 3
fi

# Check if mistral model is available
if ! ollama list | grep -q "mistral"; then
  echo "📥 Pulling mistral model (this takes a few minutes the first time)..."
  ollama pull mistral
fi

echo "✅ Ollama ready with mistral"
echo ""

# Start backend
echo "🚀 Starting backend..."
cd backend
if [ ! -d "venv" ]; then
  python3 -m venv venv
  source venv/bin/activate
  pip install -r requirements.txt -q
else
  source venv/bin/activate
fi
python main.py &
BACKEND_PID=$!
cd ..

sleep 2
echo "✅ Backend running at http://localhost:8000"
echo ""

# Start frontend
echo "🎨 Starting frontend..."
cd frontend
if [ ! -d "node_modules" ]; then
  echo "📦 Installing dependencies..."
  npm install -q
fi
npm run dev &
FRONTEND_PID=$!
cd ..

echo ""
echo "🔥 FYRE AI is ready!"
echo "   Frontend: http://localhost:5173"
echo "   Backend:  http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop all services."
echo ""

# Wait for Ctrl+C
trap "kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; echo ''; echo 'FYRE AI stopped.'; exit" INT
wait
