:: Iterates over every file in every folder, and subfolder, of the directory in which it is executed.
:: Each .flac file is compressed with the highest compression setting.

for /R %%i in (*.flac) do  (
	ffmpeg -i "%%i" -compression_level 12 "%%i.converted.flac"

	IF EXIST "%%i.converted.flac" (
		DEL "%%i"
		RENAME "%%i.converted.flac" "%%~ni.flac"
	)
)

pause
done
