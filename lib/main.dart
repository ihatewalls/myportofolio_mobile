import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/theme_notifier.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp(apiClient: ApiClient()));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.apiClient, super.key});

  final ApiClient apiClient;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: apiClient),
        ChangeNotifierProvider(create: (_) => AuthState(apiClient))
      ],
      child: ValueListenableBuilder<ThemeMode>(
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
      )
    );
  }
}