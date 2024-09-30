import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/launch_url.dart';

class ContributorCard extends StatelessWidget {
  const ContributorCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.profession,
    required this.twitterLink,
    required this.linkedinLink,
    required this.facebookLink,
  });
  final String avatar;
  final String name;
  final String profession;
  final String twitterLink;
  final String linkedinLink;
  final String facebookLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 10, 61, 55),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: 75,
            backgroundImage: NetworkImage(
              avatar,
            ),
          ),
          ListTile(
            title: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              profession,
              style: const TextStyle(
                color: Colors.white60,
              ),
            ),
          ),
          const Text(
            "Réseaux sociaux",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => launcherURL(
                  Uri.parse(twitterLink),
                  true,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.xTwitter,
                  size: 60,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () => launcherURL(
                  Uri.parse(facebookLink),
                  true,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 60,
                  color: Colors.blue,
                ),
              ),
              GestureDetector(
                onTap: () => launcherURL(
                  Uri.parse(linkedinLink),
                  true,
                ),
                child: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  size: 60,
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
