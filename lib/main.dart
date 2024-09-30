import 'package:amplitude_flutter/amplitude.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/news.dart';
import 'pages/pratice.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => News(),
        builder: (context, child) => const Pratice(),
      ),
    );
  }
}
