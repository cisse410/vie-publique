import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/directory_item.dart';

class DirectoryPage extends StatelessWidget {
  DirectoryPage({super.key});

  final List<DirectoryItem> directories = [
    DirectoryItem(
      title: 'Annuaire Gouvernement',
      subtitle: 'Nominations, Ministres, DG...',
      icon: Icons.people_outline,
      backgroundColor: const Color(0xFFE8F5E9),
    ),
    DirectoryItem(
      title: 'Annuaire Justice',
      subtitle: 'Magistrature, Acteurs de la justice...',
      icon: Icons.balance_outlined,
      backgroundColor: const Color(0xFFF3E5F5),
    ),
    DirectoryItem(
      title: 'Annuaire Médias',
      subtitle: 'Aide à la presse, Radios, TV, Médias en ligne...',
      icon: Icons.radio_outlined,
      backgroundColor: const Color(0xFFFFEBEE),
    ),
    DirectoryItem(
      title: 'Annuaire Sites Web',
      subtitle: 'Annuaire des sites internet publics',
      icon: Icons.computer_outlined,
      backgroundColor: const Color(0xFFE3F2FD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annuaires'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3.5,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: directories.length,
                itemBuilder: (context, index) {
                  final directory = directories[index];
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: directory.backgroundColor,
                              ),
                              child: Icon(
                                directory.icon,
                                size: 30,
                                color: directory.backgroundColor ==
                                        const Color(0xFFE8F5E9)
                                    ? Colors.green
                                    : directory.backgroundColor ==
                                            const Color(0xFFF3E5F5)
                                        ? Colors.purple
                                        : directory.backgroundColor ==
                                                const Color(0xFFFFEBEE)
                                            ? Colors.red
                                            : Colors.blue,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    directory.title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    directory.subtitle,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
