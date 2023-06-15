import 'package:flutter/material.dart';
import 'package:mastering_ui/facebook.dart';
import 'package:mastering_ui/gojek.dart';
import 'package:mastering_ui/instagram.dart';
import 'package:mastering_ui/play_store.dart';
import 'package:mastering_ui/udemy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PlayStore(),
      // home: Facebook(),
      // home: Udemy(),
      // home: Gojek(),
      home: Instagram(),
    );
  }
}
