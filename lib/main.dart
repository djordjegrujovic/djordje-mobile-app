import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Remove debug banner
      debugShowCheckedModeBanner: false,

      /// Title of app
      title: 'Mobile app',

      /// Theme settings
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),

      /// Content
      home: const Scaffold(
        body: Center(
          child: Text('Home screen'),
        ),
      ),
    );
  }
}
