import 'package:flutter/material.dart';
import 'package:survey/components/bottombar.dart';
import 'package:survey/routes/loginpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: Colors.lime,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.cyan,
          secondary: Colors.white,
        ),

      ),
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
    );
  }
}
