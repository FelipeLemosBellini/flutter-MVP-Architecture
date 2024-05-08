import 'package:flutter/material.dart';
import 'package:mvp/color_generator_page/view/color_generator_view.dart';
import 'package:mvp/counter_page/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
