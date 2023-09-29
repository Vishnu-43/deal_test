import 'package:deal_test/view/screens/aboutpagesam.dart';
import 'package:deal_test/view/screens/homepagetest.dart';
import 'package:deal_test/view/screens/loginpagetest.dart';
import 'package:deal_test/view/screens/registratontest.dart';
import 'package:deal_test/view/screens/settingpagetest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}