import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splash_screen_ui.dart';

void main() => runApp(const CakeShopApp());

class CakeShopApp extends StatelessWidget {
  const CakeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      scaffoldBackgroundColor: const Color(0xFFFFF8FC),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      title: 'สายด่วนกินเค้ก',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(textTheme: GoogleFonts.kanitTextTheme(theme.textTheme)),
      home: const SplashScreenUI(),
    );
  }
}