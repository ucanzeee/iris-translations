@echo off
set PATH=%PATH%;"E:\Dev\Qt5.4.2\5.4\msvc2013\bin\"

if not exist build\po mkdir build\po

for /r %%i in (../*.ts) do (
	ECHO %%~ni
	lconvert ../%%~ni.ts -o build/po/%%~ni.po
)