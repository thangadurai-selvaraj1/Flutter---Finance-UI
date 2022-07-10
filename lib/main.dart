import 'package:financeappui/screens/card_screen.dart';
import 'package:flutter/material.dart';

import 'resourcs/recources_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const CardScreen(),
    );
  }
}
