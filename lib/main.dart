import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "Almarai",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
      ),
      home: const SplashScreen(),
    );
  }
}
