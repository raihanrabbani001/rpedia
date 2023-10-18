import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpedia/view/authentication_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness,colorScheme: ColorScheme.fromSeed(seedColor: Colors.green,brightness: brightness),);
  return baseTheme.copyWith(
        useMaterial3: true,
    textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme.copyWith(
      headlineMedium: const TextStyle(
        fontWeight: FontWeight.w500,
      )
    )),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rpedia',
      theme: _buildTheme(Brightness.light),
      home: const LayoutView(),
    );
  }
}

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    Color? secondaryContainer = colorScheme.secondaryContainer.withOpacity(0.5);
    return Scaffold(
      backgroundColor: secondaryContainer,
      body: const Center(child: AuthenticationView()),
    );
  }
}
