import 'dart:async';

import 'package:flutter/material.dart';

import 'cake_shop_list_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder: (_) => const CakeShopListUI()),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg_welcome.png', fit: BoxFit.cover),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.12),
                child: const Column(
                  children: [
                    Text(
                      'สายด่วนกินเค้ก',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE60000),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'CAKE CALL FAST',
                      style: TextStyle(
                        color: Color(0xFFD94C50),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 44,
                      height: 44,
                      child: CircularProgressIndicator(
                        color: Color(0xFF374548),
                        strokeWidth: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}