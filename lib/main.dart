import 'package:easy_travel/login_page.dart';
import 'package:easy_travel/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MaterialTheme theme = MaterialTheme(TextTheme());
    return MaterialApp(
      title: 'Easy Travel',
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      home: const Scaffold(body: SafeArea(child: LoginPage())),
    );
  }
}
