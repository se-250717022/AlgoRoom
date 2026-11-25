AlgoRoom'u telefondan tarayıcıda açma (GitHub Pages)
=====================================================

Bu yöntem Android ve iPhone'da aynı web adresini açar. App Store/Play Store
uygulaması üretmez. Telefon tarayıcısında çalışan web sürümüdür; istersen
Safari/Chrome menüsünden ana ekrana ekleyebilirsin.

1) GitHub'da AlgoRoom için bir repository oluştur.
2) Bu ZIP'in içindeki AlgoRoom klasörünün TÜM içeriğini repository'ye yükle.
   pubspec.yaml kök dizinde olmalı. ZIP'in kendisini repository'ye koymak
   yeterli değildir; dosyaları çıkarıp yükle.
3) Varsayılan dalın main olduğundan emin ol.
4) Repository > Settings > Pages bölümüne git.
5) Build and deployment > Source alanında "GitHub Actions" seç.
6) Kök dizinde .github/workflows/deploy-web.yml dosyası bulunduğunda main
   dalına push yap. Actions sekmesindeki "Deploy Flutter Web to GitHub Pages"
   işleminin bitmesini bekle.
7) Repository > Settings > Pages bölümünde görünen adresi aç:
   https://GITHUB-KULLANICI-ADI.github.io/REPOSITORY-ADI/

Her yeni main push'unda site otomatik güncellenir.

ÖNEMLİ:
- Projenin önceki halinde web/ klasörü yoktu. Workflow, GitHub Actions içinde
  `flutter create --platforms=web .` komutuyla web platform dosyalarını üretir.
- Flutter web derlemesi henüz bu ortamda çalıştırılıp doğrulanmadı. İlk Actions
  çalışması paket/derleme hatası verirse Actions logundaki hataya göre düzeltmek
  gerekir.
- Şu anki proje yerel demo verileri kullanır; gerçek kayıt, sohbet ve sunucu
  özellikleri henüz tamamlanmış değildir.
- Telefon ana ekranına eklemek, mağazadan yüklenen native uygulama ile aynı şey
  değildir. Kamera, bildirim ve bazı cihaz entegrasyonları web'de farklı
  kısıtlamalara sahip olabilir.
