import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/welcome.ui.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: WelcomeUI(),
    );
  }
}