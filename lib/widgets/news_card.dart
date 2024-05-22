import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.listNews});

  final Map<String, dynamic> listNews;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network('${listNews['image']}'),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              '${listNews['heading']}',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              '${listNews['story']}',
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
