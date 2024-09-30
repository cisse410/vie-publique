import 'package:flutter/material.dart';

class AboutUsContact extends StatelessWidget {
  const AboutUsContact({
    super.key,
    required this.icon,
    required this.text,
  });
  final Icon icon;
  final String text;

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
          Text(text,
              style: const TextStyle(
                color: Colors.white70,
              )),
        ],
      ),
    );
  }
}
