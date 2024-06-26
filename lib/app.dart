import 'package:flutter/material.dart';

import 'presentation/screens/screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GoalsListScreen(),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(44, 102, 188, 1),
            primary: const Color.fromRGBO(44, 102, 188, 1),
            secondary: const Color.fromRGBO(235, 235, 235, 1),
          ),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(73, 73, 73, 1)),
              headlineLarge: TextStyle(
                  fontFamily: 'Roboto', fontSize: 32, color: Colors.black),
              bodySmall: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: Color.fromRGBO(73, 73, 73, 1)),
              labelLarge: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Color.fromRGBO(73, 73, 73, 1)),
              labelMedium: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: Color.fromRGBO(244, 244, 244, 1),
                  fontWeight: FontWeight.w500),
              labelSmall: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Color.fromRGBO(244, 244, 244, 244),
              ),
              titleSmall: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: Color.fromRGBO(170, 170, 170, 1),
                  fontWeight: FontWeight.w400))),
    );
  }
}
