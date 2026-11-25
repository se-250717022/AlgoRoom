import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr'),
  ];

  /// No description provided for @brand.
  ///
  /// In tr, this message translates to:
  /// **'RoomMate'**
  String get brand;

  /// No description provided for @slogan.
  ///
  /// In tr, this message translates to:
  /// **'Evini değil, birlikte yaşayacağın insanı seç.'**
  String get slogan;

  /// No description provided for @loadError.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenemedi.'**
  String get loadError;

  /// No description provided for @saveError.
  ///
  /// In tr, this message translates to:
  /// **'Tercih kaydedilemedi. Tekrar dene.'**
  String get saveError;

  /// No description provided for @retry.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar dene'**
  String get retry;

  /// No description provided for @onboardPeople.
  ///
  /// In tr, this message translates to:
  /// **'Sana uygun oda arkadaşını bul.'**
  String get onboardPeople;

  /// No description provided for @onboardPeopleBody.
  ///
  /// In tr, this message translates to:
  /// **'Yaşam tarzına ve beklentilerine uygun insanlarla tanış.'**
  String get onboardPeopleBody;

  /// No description provided for @onboardRooms.
  ///
  /// In tr, this message translates to:
  /// **'Yeni evini keşfet.'**
  String get onboardRooms;

  /// No description provided for @onboardRoomsBody.
  ///
  /// In tr, this message translates to:
  /// **'Bütçene uygun odaları ve ev ilanlarını kolayca incele.'**
  String get onboardRoomsBody;

  /// No description provided for @onboardMatch.
  ///
  /// In tr, this message translates to:
  /// **'Eşleş, konuş ve birlikte yaşa.'**
  String get onboardMatch;

  /// No description provided for @onboardMatchBody.
  ///
  /// In tr, this message translates to:
  /// **'Uyumluluk puanını gör, güvenli şekilde iletişim kur.'**
  String get onboardMatchBody;

  /// No description provided for @skip.
  ///
  /// In tr, this message translates to:
  /// **'Atla'**
  String get skip;

  /// No description provided for @begin.
  ///
  /// In tr, this message translates to:
  /// **'Başla'**
  String get begin;

  /// No description provided for @next.
  ///
  /// In tr, this message translates to:
  /// **'İleri'**
  String get next;

  /// No description provided for @demo.
  ///
  /// In tr, this message translates to:
  /// **'Demo'**
  String get demo;

  /// No description provided for @discover.
  ///
  /// In tr, this message translates to:
  /// **'Keşfet'**
  String get discover;

  /// No description provided for @rooms.
  ///
  /// In tr, this message translates to:
  /// **'Odalar'**
  String get rooms;

  /// No description provided for @favorites.
  ///
  /// In tr, this message translates to:
  /// **'Favoriler'**
  String get favorites;

  /// No description provided for @settings.
  ///
  /// In tr, this message translates to:
  /// **'Ayarlar'**
  String get settings;

  /// No description provided for @allRegions.
  ///
  /// In tr, this message translates to:
  /// **'Tüm bölgeler'**
  String get allRegions;

  /// No description provided for @empty.
  ///
  /// In tr, this message translates to:
  /// **'Bu görünümde henüz sonuç yok.'**
  String get empty;

  /// No description provided for @hasRoom.
  ///
  /// In tr, this message translates to:
  /// **'Oda arkadaşı arıyor'**
  String get hasRoom;

  /// No description provided for @needsRoom.
  ///
  /// In tr, this message translates to:
  /// **'Oda arıyor'**
  String get needsRoom;

  /// No description provided for @findTogether.
  ///
  /// In tr, this message translates to:
  /// **'Birlikte ev arıyor'**
  String get findTogether;

  /// No description provided for @saveRoom.
  ///
  /// In tr, this message translates to:
  /// **'Favoriye ekle'**
  String get saveRoom;

  /// No description provided for @unsaveRoom.
  ///
  /// In tr, this message translates to:
  /// **'Favoriden çıkar'**
  String get unsaveRoom;

  /// No description provided for @demoNotice.
  ///
  /// In tr, this message translates to:
  /// **'Bu ekrandaki profiller ve ilanlar kurgusaldır.'**
  String get demoNotice;

  /// No description provided for @language.
  ///
  /// In tr, this message translates to:
  /// **'Dil'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In tr, this message translates to:
  /// **'Görünüm'**
  String get theme;

  /// No description provided for @system.
  ///
  /// In tr, this message translates to:
  /// **'Sistem'**
  String get system;

  /// No description provided for @light.
  ///
  /// In tr, this message translates to:
  /// **'Açık'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In tr, this message translates to:
  /// **'Koyu'**
  String get dark;

  /// No description provided for @privateRoom.
  ///
  /// In tr, this message translates to:
  /// **'Özel oda'**
  String get privateRoom;

  /// No description provided for @sharedRoom.
  ///
  /// In tr, this message translates to:
  /// **'Paylaşımlı oda'**
  String get sharedRoom;

  /// No description provided for @monthly.
  ///
  /// In tr, this message translates to:
  /// **'aylık'**
  String get monthly;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
