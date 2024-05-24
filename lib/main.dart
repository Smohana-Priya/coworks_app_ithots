import 'package:coworks_app_ithots/screens/coworks/coworks_details.dart';
import 'package:coworks_app_ithots/screens/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoworksDetails(),
    );
  }
}
