import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Clone Gojek
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
