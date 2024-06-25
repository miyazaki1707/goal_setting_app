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
          primary: const  Color.fromRGBO(44, 102, 188, 1),
          secondary: const Color.fromRGBO(235, 235, 235, 1),),
          textTheme: const  TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 32,
              color: Colors.black
            ),
            bodySmall: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            labelLarge: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Color.fromRGBO(73, 73, 73, 1)
            ),
            labelMedium: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Color.fromRGBO(244, 244, 244, 1),
              fontWeight: FontWeight.w500
            ),
            labelSmall: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Color.fromRGBO(244, 244, 244, 244),
            )
          )
      ),
    );
  }
}