import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../pages/new_page.dart';

class ActuCard extends StatefulWidget {
  const ActuCard({super.key, required this.newsData});

  final Map<String, dynamic> newsData;

  @override
  State<ActuCard> createState() => _ActuCardState();
}

class _ActuCardState extends State<ActuCard> {
  final bool _isExpanded = false;
  static const int _maxLines = 3;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Stack(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1782088999584022529/Z3pLqToF_400x400.jpg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Vie Publique SN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${DateTime.now().toUtc().hour}h:${DateTime.now().toUtc().minute}mn',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://www.vie-publique.sn/';
                    await Share.share(
                      'J\'ai trouvé un article important que je voudrais partager avec vous $url',
                    );
                  },
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${widget.newsData['story']}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  maxLines: _isExpanded ? null : _maxLines,
                  textAlign: TextAlign.left,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsPage(
                          news: widget.newsData,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'voir plus',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: '${widget.newsData['image']}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
