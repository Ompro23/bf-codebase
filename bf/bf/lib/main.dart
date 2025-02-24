// import 'package:bf/home_screen.dart';
// import 'package:bf/chat_screen.dart';
// import 'package:bf/detailes_screen.dart';
// import 'package:bf/faq_screen.dart';
// import 'package:bf/home_screen.dart';
import 'package:bf/ad_screen.dart';
import 'package:bf/chat_screen.dart';
import 'package:bf/detailes_screen.dart';
import 'package:bf/diary_screen.dart';
import 'package:bf/home_screen.dart';
import 'package:bf/intrigue_screen.dart';
import 'package:bf/intro_screen.dart';
import 'package:bf/kozy_screen1.dart';
import 'package:bf/login_screen.dart';
import 'package:bf/magiccolor_screen.dart';
import 'package:bf/privacy_screen.dart';
import 'package:bf/reel_screen.dart';
import 'package:bf/store_screen.dart';
import 'package:bf/terms_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding for SystemChrome
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 64, 5, 71), // Dark Purple color
      statusBarIconBrightness: Brightness.light, // White icons
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReelScreen(),
    );
  }
}
