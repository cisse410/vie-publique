import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../widgets/custom_text_field.dart';

class CodesGeneraux extends StatelessWidget {
  const CodesGeneraux({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Codes Généraux"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Codes du Sénégal"),
          CustomTextField(
            controller: controller,
            hintText: "Rechercher",
            labelText: "Rechercher",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(LucideIcons.search),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.green.shade100,
                  child: ListTile(
                    leading: const Icon(
                      LucideIcons.file,
                      color: Colors.green,
                    ),
                    trailing: const Icon(LucideIcons.arrowRight),
                    title: Text('Code N° ${index + 1}'),
                    subtitle: const Text('Fonctionnement de l\'état...'),
                    onTap: () {},
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
