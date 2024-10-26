import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/widgets/custom_text_field.dart';
import 'package:lucide_icons/lucide_icons.dart';

class JournalOfficiel extends StatelessWidget {
  const JournalOfficiel({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Journal Officiel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Journal Officiel"),
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
                    title: Text("JORS N° ${index + 1}"),
                    trailing: const Icon(LucideIcons.arrowRight),
                    onTap: () {},
                    subtitle: const Text('Fonctionnement de l\'état...'),
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
