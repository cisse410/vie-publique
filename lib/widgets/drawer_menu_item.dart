import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

// ignore: must_be_immutable
class DrawerMenuItem extends StatelessWidget {
  DrawerMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  IconData icon;
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(LucideIcons.arrowRight),
      onTap: onTap,
    );
  }
}
