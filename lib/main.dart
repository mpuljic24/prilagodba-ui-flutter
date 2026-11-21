import 'package:flutter/material.dart';

void main() {
  runApp(const PrilagodbaApp());
}

class PrilagodbaApp extends StatefulWidget {
  const PrilagodbaApp({super.key});

  @override
  State<PrilagodbaApp> createState() => _PrilagodbaAppState();
}

class _PrilagodbaAppState extends State<PrilagodbaApp> {
  bool zelenaTema = false;

  @override
  Widget build(BuildContext context) {
    final boje = ColorScheme.fromSeed(
      seedColor: zelenaTema ? Colors.green : Colors.blue,
    );

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

      cardTheme: CardThemeData(
        color: boje.primaryContainer,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: boje.outline),
        ),
      ),
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
                  padding: EdgeInsets.all(24),
                  child: Text('Ovo je kartica s primjerom sadržaja.'),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  setState(() {
                    zelenaTema = !zelenaTema;
                  });
                },
                child: const Text('Promijeni boju'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
