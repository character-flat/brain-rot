"""Configuration settings for AI Brainrot Generator."""
import os
from pathlib import Path

# Base paths
PROJECT_ROOT = Path(__file__).parent.parent
ASSETS_DIR = PROJECT_ROOT / "assets"
DATA_DIR = PROJECT_ROOT / "data"
VOICES_DIR = PROJECT_ROOT / "voices"

# TTS Settings
TTS_CONFIG = {
    "model_name": "tts_models/multilingual/multi-dataset/xtts_v2",
    "sample_rate": 22050,
    "temperature": 0.7,
    "length_penalty": 1.0,
    "repetition_penalty": 5.0,
    "enable_text_splitting": True,
    "language": "en"
}

# Video Settings  
VIDEO_CONFIG = {
    "resolution": (1080, 1920),  # Portrait for shorts
    "fps": 30,
    "max_duration": 60,  # seconds
    "fade_duration": 0.1
}

# Subtitle Settings
SUBTITLE_CONFIG = {
    "font": "Arial-Bold",
    "fontsize": 48,
    "color": "white",
    "stroke_color": "black", 
    "stroke_width": 2,
    "position": ("center", "bottom"),
    "max_chars_per_line": 32
}

# Platform Settings
YOUTUBE_CONFIG = {
    "client_secrets_file": "config/youtube_secrets.json",
    "scopes": ["https://www.googleapis.com/auth/youtube.upload"],
    "api_service_name": "youtube",
    "api_version": "v3"
}

INSTAGRAM_CONFIG = {
    "session_file": "config/instagram_session.json"
}

# Performance Settings
PERFORMANCE_CONFIG = {
    "max_memory_gb": 3.5,
    "cleanup_after_hours": 1,
    "chunk_size_seconds": 30,
    "parallel_processes": 2
}