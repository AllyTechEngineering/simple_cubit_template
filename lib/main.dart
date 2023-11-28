import 'package:flutter/material.dart';
import 'package:simple_cubit_template/utilties/theme.dart';
import 'package:simple_cubit_template/screens/home_screen';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TemplateProject',
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}