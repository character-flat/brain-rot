#!/bin/bash
set -e

echo "🚀 Setting up AI Brainrot Generator development environment..."

# Install Python dependencies
if [ -f requirements.txt ]; then
    echo "📦 Installing Python packages..."
    pip install --no-cache-dir -r requirements.txt
fi

# Download default assets if they don't exist
echo "🎮 Setting up default assets..."

# Create placeholder assets
if [ ! -f "assets/faces/peter.png" ]; then
    echo "Creating placeholder face assets..."
    # We'll add actual assets later
    touch assets/faces/peter.png
    touch assets/faces/stewey.png
fi

if [ ! -f "assets/gameplay/subway.mp4" ]; then
    echo "📁 Gameplay video will be added separately due to size"
    touch assets/gameplay/subway.mp4
fi

# Set up sample voice files
if [ ! -f "voices/peter.wav" ]; then
    echo "🎤 Voice samples will be added separately"
    touch voices/peter.wav
    touch voices/stewey.wav
fi

# Create sample dialogue
if [ ! -f "dialogue.json" ]; then
    echo "📝 Creating sample dialogue.json..."
    cat > dialogue.json << 'EOF'
[
  {
    "speaker": "peter",
    "text": "Hey there Stewie, let me explain how Docker containers work.",
    "start": 0,
    "end": 3
  },
  {
    "speaker": "stewey", 
    "text": "Oh fascinating, Peter. I assume it's some sort of containerization technology?",
    "start": 3.5,
    "end": 7
  },
  {
    "speaker": "peter",
    "text": "Exactly! Docker packages applications with all their dependencies into lightweight containers.",
    "start": 7.5,
    "end": 12
  }
]
EOF
fi

echo "✅ Development environment setup complete!"
echo "🎯 Next: Install dependencies with 'pip install -r requirements.txt'"