import 'package:flutter/material.dart';

void main() {
  runApp(const PrilagodbaApp());
}

class PrilagodbaApp extends StatelessWidget {
  const PrilagodbaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Prilagodba sučelja'),
        ),
        body: const Center(
          child: Text('Početni Flutter projekt'),
        ),
      ),
    );
  }
}