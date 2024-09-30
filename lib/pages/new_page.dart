import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.news});

  final Map<String, dynamic> news;

  @override
  Widget build(BuildContext context) {
    void launcherURL(Uri uri, bool inApp) async {
      try {
        if (await canLaunchUrl(uri)) {
          if (inApp) {
            await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
          } else {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          }
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${news['heading']}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () async {
                const url = 'https://www.univ-thies.sn';
                await Share.share(
                    'J\'ai trouvé un article important que je voudrais partager avec vous $url');
              },
              child: const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.heart,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.comment,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.bookmark,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.share,
                      size: 30,
                    ),
                  ],
                ),
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
                      onTap: () {
                        launcherURL(
                            Uri.parse('https://www.facebook.com/tvxalaat'), true);
                      },
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 60,
                        color: Colors.blue[700],
                      ),
                    ),
                    const FaIcon(
                      FontAwesomeIcons.xTwitter,
                      size: 60,
                    ),
                    FaIcon(
                      FontAwesomeIcons.telegram,
                      size: 60,
                      color: Colors.blue[300],
                    ),
                    GestureDetector(
                      onTap: () => launcherURL(
                          Uri.parse('https://www.linkedin.com/in/issakha-cisse'),
                          true),
                      child: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '#CISSE410',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
