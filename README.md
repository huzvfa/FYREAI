# 🔥 FYRE AI — Your Own Free AI Engine & Chatbot

> A fully self-hosted, free AI engine inspired by Perplexity AI — with real-time web search, plagiarism removal, AI detection, file uploads, voice prompts, and a stunning glassmorphic dark UI.

---

## ✨ Features

- 🤖 **Local AI Engine** via [Ollama](https://ollama.com) — no API key, no cost
- 🔍 **Real-time Web Search** via DuckDuckGo (free, no key needed)
- 📚 **Student Question Solver** — math, science, code, essays
- 🧹 **Plagiarism Remover** — rewrites text to be unique
- 🕵️ **AI Text Detector** — detects if text was AI-generated
- 📁 **File Upload** — analyze PDFs, TXT, DOCX
- 🎙️ **Voice Prompt** — speak your questions
- 💬 **Chat History** — stored locally in browser
- ✏️ **Edit Prompts** — modify any sent message
- 🌑 **Glassmorphic Dark UI** — animated, unique, premium feel

---

## 🏗️ Tech Stack (100% Free & Open Source)

| Layer | Technology |
|-------|-----------|
| AI Engine | [Ollama](https://ollama.com) + Mistral / LLaMA 3 |
| Backend | Python 3.11 + FastAPI + WebSockets |
| Web Search | DuckDuckGo Search (free) |
| AI Detection | Heuristic + Perplexity scoring engine |
| Frontend | React 18 + Vite |
| Styling | Pure CSS (glassmorphic, custom animations) |
| Storage | LocalStorage (chats) + SQLite (backend) |

---

## 🚀 Quick Start

### Prerequisites
- Python 3.10+
- Node.js 18+
- [Ollama](https://ollama.com/download) installed

### 1. Install Ollama & Pull a Model
```bash
# Install Ollama (Linux/Mac)
curl -fsSL https://ollama.com/install.sh | sh

# Pull the free AI model (choose one)
ollama pull mistral        # Recommended (7B, fast)
ollama pull llama3         # Alternative (8B)
ollama pull phi3           # Lightweight (3.8B)
```

### 2. Backend Setup
```bash
cd backend
python -m venv venv
source venv/bin/activate      # Windows: venv\Scripts\activate
pip install -r requirements.txt
python main.py
```
Backend runs at: `http://localhost:8000`

### 3. Frontend Setup
```bash
cd frontend
npm install
npm run dev
```
Frontend runs at: `http://localhost:5173`

---

## 📁 Project Structure

```
fyre-ai/
├── backend/
│   ├── main.py              # FastAPI app entry point
│   ├── requirements.txt     # Python dependencies
│   ├── routes/
│   │   ├── chat.py          # Chat & streaming endpoint
│   │   ├── tools.py         # Plagiarism, AI detection
│   │   └── files.py         # File upload & parsing
│   ├── services/
│   │   ├── ollama_service.py   # Ollama LLM integration
│   │   ├── search_service.py   # DuckDuckGo web search
│   │   ├── plagiarism.py       # Plagiarism remover
│   │   ├── ai_detector.py      # AI text detection
│   │   └── file_parser.py      # PDF/DOCX/TXT parser
│   └── database/
│       └── db.py            # SQLite chat history
├── frontend/
│   ├── src/
│   │   ├── App.jsx
│   │   ├── main.jsx
│   │   ├── components/
│   │   │   ├── ChatWindow.jsx
│   │   │   ├── MessageBubble.jsx
│   │   │   ├── PromptBar.jsx
│   │   │   ├── Sidebar.jsx
│   │   │   ├── ToolsPanel.jsx
│   │   │   └── VoiceButton.jsx
│   │   ├── hooks/
│   │   │   ├── useChat.js
│   │   │   └── useVoice.js
│   │   └── utils/
│   │       └── api.js
│   ├── index.html
│   ├── package.json
│   └── vite.config.js
└── README.md
```

---

## 🧠 AI Models (All Free)

| Model | Size | Best For |
|-------|------|---------|
| `mistral` | 4.1GB | General chat, fast responses |
| `llama3` | 4.7GB | Complex reasoning, students |
| `phi3` | 2.3GB | Low-resource machines |
| `codellama` | 3.8GB | Coding questions |

Change the model in `backend/services/ollama_service.py`

---

## 🔧 Configuration

Edit `backend/main.py`:
```python
OLLAMA_MODEL = "mistral"     # Change AI model here
OLLAMA_URL = "http://localhost:11434"
MAX_SEARCH_RESULTS = 5
```

---

## 🌐 Deployment (Free)

- **Backend**: [Railway.app](https://railway.app) or [Render.com](https://render.com) free tier
- **Frontend**: [Vercel](https://vercel.com) or [Netlify](https://netlify.com)
- **Note**: For deployment, use Ollama's API or switch to [Groq](https://groq.com) (free tier, very fast)

---

## 📄 License

MIT License — Free for personal and commercial use.

---

**Built with 🔥 by FYRE AI**
