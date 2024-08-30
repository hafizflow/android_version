import 'package:android_version/utiles/theme/theme.dart';
import 'package:android_version/views/home_screen.dart';
import 'package:flutter/material.dart';

class AndroidVersionApp extends StatelessWidget {
  const AndroidVersionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android Version App',
      theme: AndroidVersionAppTheme.myTheme,
      home: HomeScreen(),
    );
  }
}
