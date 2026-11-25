import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:roommate/app.dart';
import 'package:roommate/core/settings/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MemoryPreferences implements SharedPreferencesAsync {
  final _values = <String, Object>{};

  @override
  Future<bool?> getBool(String key) async => _values[key] as bool?;

  @override
  Future<String?> getString(String key) async => _values[key] as String?;

  @override
  Future<void> setBool(String key, bool value) async => _values[key] = value;

  @override
  Future<void> setString(String key, String value) async =>
      _values[key] = value;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('Completes onboarding, saves a room and restores preferences', (
    tester,
  ) async {
    final storage = _MemoryPreferences();
    Widget app() => ProviderScope(
      overrides: [localStorageProvider.overrideWithValue(storage)],
      child: const RoomMateApp(),
    );

    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    expect(find.text('Sana uygun oda arkadaşını bul.'), findsOneWidget);

    await tester.tap(find.text('İleri'));
    await tester.pumpAndSettle();
    expect(find.text('Yeni evini keşfet.'), findsOneWidget);

    await tester.tap(find.text('İleri'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Başla'));
    await tester.pumpAndSettle();
    expect(find.text('Demo'), findsOneWidget);

    await tester.tap(find.text('Odalar'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Favoriye ekle').first);
    await tester.tap(find.text('Favoriler'));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Favoriden çıkar'), findsOneWidget);

    await storage.setBool('english', true);
    await storage.setString('theme', 'dark');
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    expect(find.text('Discover'), findsOneWidget);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.dark,
    );
  });
}
