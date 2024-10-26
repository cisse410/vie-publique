import 'package:flutter/material.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annuaires'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading:
                  const Icon(Icons.contact_page_outlined, color: Colors.green),
              title: Text('Nomination ${index + 1}'),
              subtitle: const Text('Détails de la nomination...'),
            ),
          );
        },
      ),
    );
  }
}
