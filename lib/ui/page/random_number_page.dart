import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RandomNumberNotifier extends StateNotifier<int> {
  RandomNumberNotifier() : super(Random().nextInt(9999));

  void generate() {
    state = Random().nextInt(9999);
  }
}

final randomNumberProvider =
    StateNotifierProvider((ref) => RandomNumberNotifier());

class RandomNumberPage extends StatelessWidget {
  const RandomNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Random number'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RandomConsumer(),
            Consumer(
              builder: (context, ref, child) {
                return ElevatedButton(
                    onPressed: () =>
                        ref.read(randomNumberProvider.notifier).generate(),
                    child: const Text('Generate'));
              },
            )
          ],
        )),
      ),
    );
  }
}

class RandomConsumer extends ConsumerWidget {
  const RandomConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(ref.watch(randomNumberProvider).toString());
  }
}
