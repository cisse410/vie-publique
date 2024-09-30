import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/utils/launch_url.dart';

class AboutUsBrowser extends StatelessWidget {
  const AboutUsBrowser({
    super.key,
    required this.icon,
    required this.text,
    required this.uri,
  });

  final Icon icon;
  final String text;
  final String uri;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 10, 61, 55),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              launcherURL(
                Uri.parse(uri),
                true,
              );
            },
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
