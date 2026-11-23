import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/theme_notifier.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, mode, _) {
        return MaterialApp(
          title: 'MyPortofolio',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(brightness: Brightness.light, seedColor: Colors.indigo, secondary: Colors.amber[700]),
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.indigo, secondary: Colors.amber[700]),
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          themeMode: mode,
          home: MyHomePage(),
        );
      }
    );
  }
}