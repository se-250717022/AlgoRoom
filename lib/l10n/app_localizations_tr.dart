// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get brand => 'RoomMate';

  @override
  String get slogan => 'Evini değil, birlikte yaşayacağın insanı seç.';

  @override
  String get loadError => 'Veriler yüklenemedi.';

  @override
  String get saveError => 'Tercih kaydedilemedi. Tekrar dene.';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get onboardPeople => 'Sana uygun oda arkadaşını bul.';

  @override
  String get onboardPeopleBody =>
      'Yaşam tarzına ve beklentilerine uygun insanlarla tanış.';

  @override
  String get onboardRooms => 'Yeni evini keşfet.';

  @override
  String get onboardRoomsBody =>
      'Bütçene uygun odaları ve ev ilanlarını kolayca incele.';

  @override
  String get onboardMatch => 'Eşleş, konuş ve birlikte yaşa.';

  @override
  String get onboardMatchBody =>
      'Uyumluluk puanını gör, güvenli şekilde iletişim kur.';

  @override
  String get skip => 'Atla';

  @override
  String get begin => 'Başla';

  @override
  String get next => 'İleri';

  @override
  String get demo => 'Demo';

  @override
  String get discover => 'Keşfet';

  @override
  String get rooms => 'Odalar';

  @override
  String get favorites => 'Favoriler';

  @override
  String get settings => 'Ayarlar';

  @override
  String get allRegions => 'Tüm bölgeler';

  @override
  String get empty => 'Bu görünümde henüz sonuç yok.';

  @override
  String get hasRoom => 'Oda arkadaşı arıyor';

  @override
  String get needsRoom => 'Oda arıyor';

  @override
  String get findTogether => 'Birlikte ev arıyor';

  @override
  String get saveRoom => 'Favoriye ekle';

  @override
  String get unsaveRoom => 'Favoriden çıkar';

  @override
  String get demoNotice => 'Bu ekrandaki profiller ve ilanlar kurgusaldır.';

  @override
  String get language => 'Dil';

  @override
  String get theme => 'Görünüm';

  @override
  String get system => 'Sistem';

  @override
  String get light => 'Açık';

  @override
  String get dark => 'Koyu';

  @override
  String get privateRoom => 'Özel oda';

  @override
  String get sharedRoom => 'Paylaşımlı oda';

  @override
  String get monthly => 'aylık';
}
