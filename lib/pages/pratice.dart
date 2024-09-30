import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/news.dart';
import 'package:intro_provider_state_management/pages/about_us.dart';
import 'package:intro_provider_state_management/widgets/card_pratice.dart';
import 'package:provider/provider.dart';

class Pratice extends StatelessWidget {
  const Pratice({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<News>().retrieveData;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vie Publique',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              },
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Center(
          child: Consumer<News>(
            builder: (context, value, child) {
              return value.news.isEmpty && !value.error
                  ? const CircularProgressIndicator()
                  : value.error
                      ? const Text('Something went wrong')
                      : ListView.builder(
                          itemCount: value.news['stories'].length,
                          itemBuilder: (BuildContext context, int index) {
                            return ActuCard(
                              newsData: value.news['stories'][index],
                            );
                          },
                        );
            },
          ),
        ),
      ),
    );
  }
}
