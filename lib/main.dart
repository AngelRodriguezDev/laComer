import 'package:flutter/material.dart';
import 'package:pruebatecnica/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'laComer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color(0xFFF85E11)),
        primaryColor: const Color(0xFFF85E11),
        indicatorColor: Colors.orange[800],
        secondaryHeaderColor: const Color(0xFF94BE2C),
        fontFamily: 'HelveticaNeue',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange[900]!),
        useMaterial3: true,
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFFF85E11),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
