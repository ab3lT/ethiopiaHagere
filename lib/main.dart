import 'package:ethiopia/introduction.dart';
import 'package:ethiopia/screens/home_screen.dart';
import 'package:flutter/material.dart';

/* flutter build apk --build-name=1.0.1 --build-number=1 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Know About Ethiopia and  Travel ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: OnBoardingPage(),
      /* HomeScreen(), */
    );
  }
}
