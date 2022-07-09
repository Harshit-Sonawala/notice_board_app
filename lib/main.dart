import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() => runApp(const NoticeBoardApp());

class NoticeBoardApp extends StatelessWidget {
  const NoticeBoardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'ProductSans',
      ),
      title: 'Notice Board App',
      home: const HomeScreen(),
    );
  }
}
