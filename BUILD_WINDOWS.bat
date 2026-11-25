@echo off
setlocal
cd /d "%~dp0"

where flutter >nul 2>nul
if errorlevel 1 (
  echo Flutter bulunamadi. https://docs.flutter.dev/install
  pause
  exit /b 1
)

if not exist "windows\CMakeLists.txt" (
  flutter create --platforms=windows .
  if errorlevel 1 goto :error
)

flutter pub get
if errorlevel 1 goto :error

flutter build windows --release
if errorlevel 1 goto :error

echo.
echo Derleme tamamlandi.
echo Uygulama: build\windows\x64\runner\Release\roommate.exe
start "" "%CD%\build\windows\x64\runner\Release\roommate.exe"
pause
exit /b 0

:error
echo Derleme basarisiz. Flutter doctor -v komutunu calistirip hatalari kontrol edin.
pause
exit /b 1
