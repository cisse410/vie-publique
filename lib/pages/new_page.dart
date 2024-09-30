import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/launch_url.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.news});

  final Map<String, dynamic> news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${news['heading']}',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () async {
                const url = 'https://www.vie-publique.sn/';
                await Share.share(
                    'J\'ai trouvé un article important que je voudrais partager avec vous $url');
              },
              child: const FaIcon(
                FontAwesomeIcons.share,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.network('${news['image']}'),
            const SizedBox(
              height: 13,
            ),
            Text(
              '${news['story']}',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'L\'actualité continue sur nos differents réseaux sociaux',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => launcherURL(
                    Uri.parse('https://x.com/ViePubliqueSN'),
                    true,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.xTwitter,
                    size: 60,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: FaIcon(
                    FontAwesomeIcons.envelope,
                    size: 60,
                    color: Colors.blue[300],
                  ),
                ),
                GestureDetector(
                  onTap: () => launcherURL(
                    Uri.parse(
                      'https://www.linkedin.com/company/vie-publique-sn',
                    ),
                    true,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 60,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const Text(
              '#Vie-Publique',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
