import 'package:flutter/material.dart';
import 'package:intro_provider_state_management/models/news_data.dart';
import 'package:provider/provider.dart';

import '../widgets/news_card.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NewsData>().fetchData;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Stories - CBS News',
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () async {
              context.read<NewsData>().initialValues();
              context.read<NewsData>().fetchData;
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<NewsData>().fetchData;
        },
        child: Scrollbar(
          child: Center(
            child: Consumer<NewsData>(
              builder: (context, value, child) {
                return value.map.isEmpty && !value.error
                    ? const CircularProgressIndicator()
                    : value.error
                        ? Text(
                            'Oops! Something won\'t wrong ${value.errorMessage}',
                            textAlign: TextAlign.center,
                          )
                        : ListView.builder(
                            itemCount: value.map['stories'].length,
                            itemBuilder: (BuildContext context, int index) {
                              return NewsCard(
                                listNews: value.map['stories'][index],
                              );
                            },
                          );
              },
            ),
          ),
        ),
      ),
    );
  }
}