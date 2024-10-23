import 'package:adaptive_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptivApp());
}

class AdaptivApp extends StatelessWidget {
  const AdaptivApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
