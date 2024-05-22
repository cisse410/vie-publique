import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/news_data.dart';
import 'package:provider/provider.dart';

import 'pages/stories.dart';

void main() {
  runApp(const MyApp());
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
        create: (context) => NewsData(),
        builder: (context, child) => const StoriesPage(),
      ),
    );
  }
}