import streamlit as st
import whisper
import tempfile
from io import BytesIO

st.title("Whisper App")

# Upload audio file with streamlit
audio_file = st.file_uploader("Upload Audio", type=["wav", "mp3", "m4a"])

# Load Whisper model
model = whisper.load_model("base")
st.text("Whisper Model Loaded")

if st.sidebar.button("Transcribe Audio"):
    if audio_file is not None:
        # Convert audio file to a BytesIO object
        audio_bytes = BytesIO(audio_file.read())
        
        # Create a temporary file to store the uploaded audio
        with tempfile.NamedTemporaryFile(delete=False) as temp_audio_file:
            temp_audio_file.write(audio_bytes.getvalue())
            temp_audio_file_path = temp_audio_file.name
        
        st.sidebar.success("Transcribing Audio")
        
        # Transcribe the audio from the temporary file
        transcription = model.transcribe(temp_audio_file_path)
        
        st.sidebar.success("Transcription Complete")
        
        # Display the transcription text
        st.text(transcription["text"])
        
    else:
        st.sidebar.error("Please upload an audio file")
