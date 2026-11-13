import 'package:flutter/material.dart';

void main() {
  runApp(const PrilagodbaApp());
}

class PrilagodbaApp extends StatelessWidget {
  const PrilagodbaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final boje = ColorScheme.fromSeed(seedColor: Colors.blue);

    final tema = ThemeData(
      colorScheme: boje,
      textTheme: const TextTheme(
        headlineSmall: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 16, height: 1.5),
      ),
      appBarTheme: AppBarThemeData(
        backgroundColor: boje.primary,
        foregroundColor: boje.onPrimary,
      ),
      iconTheme: IconThemeData(color: boje.primary),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: tema,
      home: Scaffold(
        appBar: AppBar(title: const Text('Prilagodba sučelja')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.palette_outlined, size: 48),
              const SizedBox(height: 16),
              Text(
                'Primjer prilagodbe sučelja',
                style: tema.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Ovaj ekran uređujemo korak po korak.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Ovo je kartica s primjerom sadržaja.'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
