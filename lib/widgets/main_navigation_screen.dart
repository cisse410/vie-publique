import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/pages/pratice.dart';

import '../pages/annuaire_page.dart';
import '../pages/budget_page.dart';
import '../pages/document_page.dart';
import '../pages/minister_page.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {
      'icon': Icons.home,
      'label': 'Accueil',
      'subtitle': 'Communiqués des conseil...',
      'page': const Pratice(),
    },
    {
      'icon': Icons.description_outlined,
      'label': 'CM',
      'subtitle': 'Communiqués des conseil...',
      'page': const MinistersPage(),
    },
    {
      'icon': Icons.contact_page_outlined,
      'label': 'Annuaires',
      'subtitle': 'Nominations gouvernement...',
      'page': const DirectoryPage(),
    },
    {
      'icon': Icons.folder_outlined,
      'label': 'Documents',
      'subtitle': 'Journal officiel, Codes...',
      'page': const DocumentsPage(),
    },
    {
      'icon': Icons.info_outline,
      'label': 'Budget',
      'subtitle': 'Fonctionnement de l\'état...',
      'page': const BudgetPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _navItems.map((item) => item['page'] as Widget).toList(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: _navItems.map((item) {
            return BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectedIndex == _navItems.indexOf(item)
                      ? Colors.green.withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Icon(item['icon']),
              ),
              label: item['label'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
