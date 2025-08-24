import 'package:cinebox/ui/core/themes/theme.dart';
import 'package:cinebox/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class CineBoxMainApp extends StatelessWidget {
  const CineBoxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CineBox",
      theme: AppTheme.theme,
      routes: {
        "/": (_) => SplashScreen(),
      },
    );
  }
}
