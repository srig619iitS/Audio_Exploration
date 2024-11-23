# Whisper App - Speech to Text Conversion

This is a simple Streamlit web app that uses OpenAI's Whisper model for automatic speech recognition (ASR). The app allows users to upload an audio file, transcribe it into text, and display the transcribed text on the web interface.

## Features

- Upload audio files (formats: WAV, MP3, M4A).
- Automatic transcription using OpenAI's Whisper model.
- Display transcribed text on the app interface.

## Requirements

To run this app, you'll need to install the following dependencies:

- Python 3.x
- Streamlit
- Whisper (OpenAI's ASR model)
- Temporary file handling (via Python's tempfile module)

You can install the required packages with the following commands:

```bash
pip install streamlit
pip install openai-whisper

How It Works
File Upload: The app allows you to upload audio files (wav, mp3, m4a).
Whisper Model: When an audio file is uploaded, the Whisper model transcribes the speech into text.
Temporary File Handling: The uploaded audio file is stored in a temporary file to facilitate the transcription process.
Result Display: The transcribed text is displayed on the app interface.
