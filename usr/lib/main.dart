import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Penyakit Jantung Koroner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of topics related to Coronary Heart Disease
    final List<Map<String, dynamic>> topics = [
      {
        "title": "Apa itu Penyakit Jantung Koroner?",
        "icon": Icons.info_outline,
      },
      {
        "title": "Gejala",
        "icon": Icons.warning_amber_outlined,
      },
      {
        "title": "Penyebab",
        "icon": Icons.help_outline,
      },
      {
        "title": "Faktor Risiko",
        "icon": Icons.risk_assessment,
      },
      {
        "title": "Pencegahan",
        "icon": Icons.health_and_safety_outlined,
      },
      {
        "title": "Pengobatan",
        "icon": Icons.medical_services_outlined,
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Penyakit Jantung Koroner'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: ListTile(
              leading: Icon(
                topics[index]["icon"],
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(topics[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to detail screen in the future
              },
            ),
          );
        },
      ),
    );
  }
}
