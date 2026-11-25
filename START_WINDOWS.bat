@echo off
setlocal
cd /d "%~dp0"

echo ==========================================
echo AlgoRoom / RoomMate - Windows baslatma
echo ==========================================
echo.

where flutter >nul 2>nul
if errorlevel 1 (
  echo HATA: Flutter bulunamadi.
  echo Once Flutter SDK kurup PATH'e ekleyin.
  echo Kurulum: https://docs.flutter.dev/install
  echo.
  pause
  exit /b 1
)

echo [1/3] Windows masaustu dosyalari kontrol ediliyor...
if not exist "windows\CMakeLists.txt" (
  flutter create --platforms=windows .
  if errorlevel 1 goto :error
)

echo.
echo [2/3] Paketler indiriliyor...
flutter pub get
if errorlevel 1 goto :error

echo.
echo [3/3] AlgoRoom baslatiliyor...
flutter run -d windows
if errorlevel 1 goto :error

exit /b 0

:error
echo.
echo Bir hata olustu. README_WINDOWS.txt dosyasindaki gereksinimleri kontrol edin.
pause
exit /b 1
