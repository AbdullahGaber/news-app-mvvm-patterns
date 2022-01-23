import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../view_model/providers.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Api App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var news = ref.read(newsProviders);
            await news.fetchNews();
            if (news.articles != null) {
              for (var artice in news.articles!.articles!) {
                print(artice!.title);
              }
            }
          },
          child: const Text(
            'fetch News',
          ),
        ),
      ),
    );
  }
}
