import 'package:amplitude_flutter/amplitude.dart';
import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/widgets/main_navigation_screen.dart';
import 'package:provider/provider.dart';

import 'models/news.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Amplitude amplitude = Amplitude.getInstance();
  amplitude.init('f3ba3fe86d0bfc3f73b2da27a7d9d8bf');
  amplitude.logEvent('Sign Up');
  debugPrint("Amplitude initialized successfully $amplitude");
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.green),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.green,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.green,
            ),
          ),
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => News(),
        builder: (context, child) => const MainNavigationScreen(),
      ),
    );
  }
}
