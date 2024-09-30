import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/news.dart';
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
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
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
