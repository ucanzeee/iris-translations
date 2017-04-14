@echo off
set PATH=%PATH%;"E:\Dev\Qt5.4.2\5.4\msvc2013\bin\"

if not exist build\ts mkdir build\ts

for /r %%i in (../*.ts) do (
	ECHO %%~ni
	lconvert -locations relative build\po\%%~ni.po -o build\ts\%%~ni.ts
)