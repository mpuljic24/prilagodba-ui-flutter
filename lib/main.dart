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
        body: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.palette_outlined, size: 48),
              SizedBox(height: 16),
              Text('Primjer prilagodbe sučelja', textAlign: TextAlign.center),
              SizedBox(height: 8),
              Text(
                'Ovaj ekran uređujemo korak po korak.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Card(
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
