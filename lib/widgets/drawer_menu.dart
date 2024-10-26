import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/pages/about_us.dart';
import 'package:intro_provider_state_management/pages/document_page.dart';
import 'package:intro_provider_state_management/widgets/drawer_menu_item.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: ListView(
        children: [
          const SizedBox(
            height: 70,
            child: DrawerHeader(
              child: Column(
                children: [
                  Text(
                    "Vie Publique",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.green,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          DrawerMenuItem(
            icon: LucideIcons.home,
            title: "ACCUEIL",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.newspaper,
            title: "ACTUALITES",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.calendarRange,
            title: "ANNUAIRES",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.book,
            title: "DOCUMENTS",
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DocumentsPage(),
                ),
              );
            },
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.badgeDollarSign,
            title: "BUDGET",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.fileText,
            title: "CONSEIL DES MINISTRES",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.mail,
            title: "NEWSLETTER",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.fileQuestion,
            title: "QUIZ",
            onTap: () {},
          ),
          const Divider(),
          DrawerMenuItem(
            icon: LucideIcons.users,
            title: "A PROPOS",
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
