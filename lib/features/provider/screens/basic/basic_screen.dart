import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/provider/screens/basic/basic_provider.dart';

class BasicScreen extends ConsumerWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello = ref.watch(helloProvider);
    final world = ref.watch(worldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BProvider'),
      ),
      body: Center(
        child: Text(
          '$hello $world',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
