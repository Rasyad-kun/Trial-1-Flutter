import 'package:flutter/material.dart';
import 'package:trial1/constants.dart';
import 'Screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Trial',
      theme: ThemeData(
        // primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: kPrimaryColor,
            ),
      ),
      home: const Login(),
    );
  }
}
