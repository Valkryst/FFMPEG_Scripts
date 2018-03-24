for /R %%i in (*.m4a) do  (
	START /W /MIN "" "D:\Program Files (Portable)\FFMPEG\ffmpeg\bin\ffmpeg.exe" -i "%%i" -vn -c:a libopus -b:a 256k -vbr:a on -application:a audio -preset veryslow -map 0 "%%i.opus"

	IF EXIST "%%i.opus" (
		DEL "%%i"
		RENAME "%%i.opus" "%%~ni.opus"
	)
)

pause
done