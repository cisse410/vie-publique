import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_provider_state_management/about_us_browser.dart';
import 'package:intro_provider_state_management/widgets/contributor_card.dart';

import '../widgets/about_us_card.dart';
import '../widgets/about_us_contact.dart';
import '../widgets/about_us_title.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContributorCard> contributors = [
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1782088999584022529/Z3pLqToF_400x400.jpg",
        name: "Malick Yacine DIOP",
        profession: "Ingénieur IT et entrepreneur",
        twitterLink: "https://x.com/malick_yacine",
        linkedinLink: 'https://www.linkedin.com/in/malicktech/',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1776647933737181184/3CNYB9lZ_400x400.jpg",
        name: "Momar Assane DIOUF",
        profession: "Financier et entrepreneur",
        twitterLink: "https://x.com/Noo_IDcard",
        linkedinLink:
            'https://www.linkedin.com/in/assane-momar-diouf-a4b4b0a4/',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "El Hadj Djibril Ciss",
        profession: "Etudiant",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1760835926425489408/LYI1BPZb_400x400.jpg",
        name: "Papa Djigane CISSE",
        profession: "Head of Business Development & Supply Chain",
        twitterLink: "https://x.com/djigane",
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1772491499260801024/-O6d0zyO_400x400.jpg",
        name: "Mamadou Diagne",
        profession: "Expert IT et entrepreneur",
        twitterLink: "https://x.com/dofbi",
        linkedinLink: 'https://www.linkedin.com/in/dofbi/',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Modou Fall",
        profession: "Expert industrialisation et entrepreneur",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1828529070025457665/4dVQ2VXX_400x400.jpg",
        name: "Cherif Hassana",
        profession: "Journaliste ITV",
        twitterLink: "https://x.com/CherifHassana",
        facebookLink: '',
        linkedinLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://media.licdn.com/dms/image/v2/C4D03AQH0uauUCUPmBQ/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1533025379423?e=1733356800&v=beta&t=Ak4g_f1RNpHwesOnYI-V91m4DEYW6sPeNGhzRR78Xps",
        name: "Ousmane Barry",
        profession: "Ingénieur en Intelligence artificielle et entrepreneur",
        twitterLink: '',
        linkedinLink: 'https://www.linkedin.com/in/ousmanebarry/',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "George Lamine DIOP",
        profession: "Expert Marketing Digital",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Ndéné SENE",
        profession: "Architecte Logicielle",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Mbaye dione",
        profession: "Ingénieur Développeur",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Anta Ndao",
        profession: "Doctorante en administration publique",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Sidath Gueye",
        profession: "Ingénieur Logiciel en R&D et en Intelligence Artificielle",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://pbs.twimg.com/profile_images/1824541584169304064/AohwzCDH_400x400.jpg",
        name: "Joe Diouf",
        profession: "Ingénieur Etude et Développement",
        twitterLink: 'https://x.com/joediouf_',
        linkedinLink: 'https://www.linkedin.com/in/joseph-diouf-9a6201a8/ ',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Thierno Lo",
        profession: "Chef de projet et entrepreneur",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Ndiaga Ndiaye",
        profession: "Digital Manager",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Khadija Diallo",
        profession: "communicante et entrepreneur",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
      const ContributorCard(
        avatar:
            "https://imgs.search.brave.com/xVub2fHwUd_sTxB4xYIlKLYP8CfjeV5mq1QETQh6xFQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9mL2ZkL0Zs/YWdfb2ZfU2VuZWdh/bC5zdmcvNTEycHgt/RmxhZ19vZl9TZW5l/Z2FsLnN2Zy5wbmc",
        name: "Bocar KANE",
        profession: "Expert IT et Télécom, CEO Kaylene group et HubSIX",
        twitterLink: '',
        linkedinLink: '',
        facebookLink: '',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('A propos'),
      ),
      backgroundColor: const Color.fromARGB(255, 8, 92, 83),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AboutUsTitle(
              title: "Projet Citoyen, Ouvert et Open Source",
            ),
            const AboutUsCard(
              content: """
Vie-publique.sn est plateforme citoyenne dédiée à la promotion de la transparence et de l'accessibilité à l'information publique au Sénégal.
C'est une plateforme participative, collective, ouverte et open source visant à rendre accessible au grand public les informations publiques (rapports d'audit, budget, journal officiel, lois et règlements, code général, nominations etc.).
Ce projet n'est, à ce jour, affilié à aucun gouvernement ou organisation politique.""",
            ),
            const AboutUsTitle(title: "Objectif du Projet"),
            const AboutUsCard(
              content:
                  """L'objectif de vie-publique.sn est de fournir un accès facile aux informations gouvernementales afin de promouvoir l'engagement civique, la responsabilisation et une meilleure compréhension des affaires publiques par les citoyens. En consolidant ces informations et en facilitant leur accès à un seul endroit, nous espérons contribuer à une société plus informée et plus engagée.""",
            ),
            const AboutUsTitle(
              title: "Participation et Contributions",
            ),
            const AboutUsCard(
              content:
                  """Nous encourageons la communauté à participer et à contribuer à l'amélioration de cette plateforme. Si vous avez des compétences en développement web, en analyse de données, ou si vous souhaitez simplement nous transmettre des informations, suggérer des améliorations ou signaler des erreurs, n'hésitez pas à nous contacter""",
            ),
            const AboutUsTitle(
              title: "Historique et Equipe projet",
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contributors.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isDismissible: true,
                          showDragHandle: true,
                          enableDrag: true,
                          backgroundColor: Colors.blueGrey,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(4),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ContributorCard(
                                      avatar: contributors[index].avatar,
                                      name: contributors[index].name,
                                      profession:
                                          contributors[index].profession,
                                      twitterLink:
                                          contributors[index].twitterLink,
                                      linkedinLink:
                                          contributors[index].linkedinLink,
                                      facebookLink:
                                          contributors[index].facebookLink,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          contributors[index].avatar,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const AboutUsTitle(
              title: "Contacts",
            ),
            const AboutUsContact(
              icon: Icon(
                Icons.phone,
                color: Colors.white70,
              ),
              text: "+221 77 123 45 67",
            ),
            const AboutUsContact(
              icon: Icon(
                Icons.mail_outlined,
                color: Colors.white70,
              ),
              text: "contact@vie-publique.sn",
            ),
            const AboutUsBrowser(
              icon: Icon(
                Icons.language,
                color: Colors.white70,
              ),
              text: "Vie-Publique",
              uri: "https://www.vie-publique.sn/",
            ),
            const AboutUsBrowser(
              icon: Icon(
                FontAwesomeIcons.github,
                color: Colors.white70,
              ),
              text: "GitHub",
              uri: "https://github.com/Code-for-Senegal/vie-publique.sn",
            ),
          ],
        ),
      ),
    );
  }
}
