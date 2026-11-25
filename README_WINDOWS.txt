AlgoRoom'u Windows bilgisayarda çalıştırma
===========================================

Bu paket mevcut Flutter kaynak kodunu Windows masaüstünde açmaya hazırlar.
Projenin mevcut hali yerel DEMO verileriyle çalışır; gerçek kullanıcı/veritabanı
bağlantısı tamamlanmış değildir.

Gerekli kurulumlar (bir kez):
1. Flutter SDK: https://docs.flutter.dev/install
   Flutter'ın bin klasörünü Windows PATH ortam değişkenine ekleyin.
2. Visual Studio 2022 (VS Code değil):
   https://visualstudio.microsoft.com/vs/community/
   Kurulumda "Desktop development with C++" iş yükünü seçin.
   MSVC, C++ CMake tools ve Windows 10/11 SDK bileşenleri seçili olsun.

Kurulumu doğrulama:
- Komut İstemi açın.
- Bu klasörde `flutter doctor -v` çalıştırın.
- Flutter Doctor'da Windows toolchain hatası kalmamalı.

Uygulamayı çalıştırma:
- Bu klasörde START_WINDOWS.bat dosyasına çift tıklayın.
- İlk çalıştırmada Windows masaüstü proje dosyaları oluşturulur ve Flutter
  paketleri indirilir. İnternet bağlantısı gerekir.
- Sonra uygulama Windows penceresinde açılır.

Bağımsız Windows uygulaması oluşturma:
- BUILD_WINDOWS.bat dosyasına çift tıklayın.
- Derleme başarılı olursa uygulama şu konumda olur:
  build\windows\x64\runner\Release\roommate.exe
- Bu exe'yi çalıştırmak için aynı Release klasöründeki diğer DLL ve data
  klasörlerini de yanında tutun; yalnızca exe dosyasını taşımayın.

Sorun giderme:
- `flutter doctor -v`
- `flutter pub get`
- `flutter run -d windows`

Notlar:
- Projenin pubspec.yaml dosyası Flutter >= 3.50.1 ve Dart ^3.14.0 ister.
- Bu çalışma ortamında Flutter/Windows derleyicisi bulunmadığı için burada
  EXE derlemesi ve çalışma testi yapılamadı.
- iPhone/Android kurulum dosyaları bu Windows masaüstü paketinden ayrı derlenir.
