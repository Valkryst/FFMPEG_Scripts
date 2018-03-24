for %%i in (*.mkv) do  (
    TITLE %%i
    "D:\Program Files (Portable)\FFMPEG\ffmpeg\bin\ffmpeg.exe" -i "%~dp0%%i" -codec:v copy -c:a libopus -b:a 256k -vbr:a on -application:a audio -c:s copy -preset veryslow -map 0 -af aformat=channel_layouts="5.1" "%~dp0%%i.mkv"
)
pause
done