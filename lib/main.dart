import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopino/feacher/welcome/welcomescreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: "Shopino",
      home: Welcomescreen(),
    );
  }
}
