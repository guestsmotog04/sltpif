# SLTPIF — Scrcpy Layer That Pipes Into File

SLTPIF is a lightweight automation layer that makes recording Android screens with scrcpy effortless.  
It handles recording, file finalization, FFmpeg remuxing, and automatic file management — all with a single click.  
Pronounciation of scrcpy: **scr**een **c**o**py**  

SLTPIF is designed for zero‑friction screen recording on Windows.

## Features (Current)

- Automatic scrcpy recording  
- Automatic FFmpeg remuxing (MKV → MP4)  
- Automatic file moving into a `finished videos` folder  
- Zero dependencies (Standard Edition)  
- Fast, offline, reliable  
- Simple one‑file launcher (`SLTPIF.bat`)

SLTPIF is intentionally lightweight and beginner‑friendly.

## Installation

1. Go to the Releases page  
2. Download the latest `SLTPIF.7z`  
3. Extract it using 7‑Zip  
4. Run `SLTPIF.bat` (or just `SLTPIF` if extensions are hidden)

No configuration required.

## Usage

1. Run SLTPIF  
2. scrcpy will launch and begin recording automatically  
3. When you're done, close the scrcpy window  
4. SLTPIF will:  
   - detect scrcpy closing  
   - finalize the MKV  
   - remux it into MP4  
   - move the finished video into `finished videos/`

Your recording is ready instantly.

## Planned Features (Future)

These features are not implemented yet, but are planned for future versions of SLTPIF:

### OCR‑Based Title Detection  
SLTPIF will scan early frames of the recording and automatically extract the YouTube video title if visible.

### AI Edition (Optional)  
A separate optional edition of SLTPIF will support AI‑generated titles using Ollama and user‑installed models.

- Ollama installer will be included  
- AI models will not be included  
- AI will only run if:  
  - Ollama is installed  
  - A model is installed  
  - OCR fails  

### Title Cleanup System  
Remove UI labels, emojis, timestamps, and irrelevant text.

### Smarter File Naming  
Add timestamps, channel names, or custom naming patterns.

### Batch Mode  
Process multiple recordings automatically.

## Requirements

- Windows 10/11  
- Android device with USB debugging  
- scrcpy (included)  
- FFmpeg (included)  
- 7‑Zip (for extraction)

## Credits

- Genymobile — scrcpy  
- Fabrice Bellard — FFmpeg  
- Microsoft — Windows  
- Igor Pavlov — 7‑Zip  

## License

MIT License
