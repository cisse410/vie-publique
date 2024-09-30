import 'package:flutter/material.dart';

class AboutUsCard extends StatelessWidget {
  const AboutUsCard({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 10, 61, 55),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        content,
        style: const TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }
}
