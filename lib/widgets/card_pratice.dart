import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/pages/new_page.dart';
import 'package:share_plus/share_plus.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.newsData});

  final Map<String, dynamic> newsData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network('${newsData['image']}'),
          Text(
            '${newsData['heading']}',
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${newsData['story']}',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsPage(news: newsData)),
                  );
                },
                icon: const Icon(Icons.library_books_outlined),
                label: const Text(
                  'Read more',
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () async {
                  const url = 'https://www.univ-thies.sn';
                  await Share.share(
                    'J\'ai trouvé un article important que je voudrais partager avec vous $url',
                  );
                },
                icon: Icon(
                  Icons.share,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
