import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/document.dart';
import 'package:intro_provider_state_management/pages/documents/codes_generaux.dart';
import 'package:intro_provider_state_management/pages/documents/journal_officiel.dart';
import 'package:intro_provider_state_management/pages/documents/rapport_public.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Document> documents = [
      Document(
        title: 'Journal Officiel',
        subtitle: 'Textes, Lois, Décrets, Arrêtés...',
        icon: Icons.article,
        backgroundColor: Colors.blue.shade50,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const JournalOfficiel(),
            ),
          );
        },
      ),
      Document(
        title: 'Rapports Publics',
        subtitle: 'Cours des Comptes, OFNAC, IGE...',
        icon: Icons.description,
        backgroundColor: Colors.green.shade50,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RapportPublics(),
            ),
          );
        },
      ),
      Document(
        title: 'Codes Généraux',
        subtitle: 'Constitution, Code de la famille, Code de la presse...',
        icon: Icons.menu_book,
        backgroundColor: Colors.purple.shade50,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CodesGeneraux(),
            ),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const Text("Documents"),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: documents.length,
              itemBuilder: (context, index) {
                final document = documents[index];
                return Card(
                  elevation: 2,
                  child: InkWell(
                    onTap: document.onTap,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: document.backgroundColor,
                          child: Icon(
                            document.icon,
                            size: 30,
                            color:
                                document.backgroundColor == Colors.blue.shade50
                                    ? Colors.blue
                                    : document.backgroundColor ==
                                            Colors.green.shade50
                                        ? Colors.green
                                        : Colors.purple,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          document.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          document.subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
