for %%i in (*.mp4) do  (
	TITLE %%i
	
	MKDIR "%~dp0%%~ni"
	MOVE /Y "%~dp0%%i" "%~dp0%%~ni"

	"D:\Program Files (Portable)\FFMPEG\ffmpeg\bin\ffmpeg.exe" -i "%~dp0%%~ni\%%i" -vf "select=not(mod(n\,30))" -vsync vfr "%~dp0%%~ni\%%03d.png"
)
