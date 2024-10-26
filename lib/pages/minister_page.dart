import 'package:flutter/material.dart';

class MinistersPage extends StatelessWidget {
  const MinistersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conseil des ministres'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading:
                  const Icon(Icons.description_outlined, color: Colors.green),
              title: Text('Communiqué ${index + 1}'),
              subtitle: Text('Détails du conseil des ministres ${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
