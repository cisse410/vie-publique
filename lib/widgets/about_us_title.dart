import 'package:flutter/material.dart';

class AboutUsTitle extends StatelessWidget {
  const AboutUsTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
