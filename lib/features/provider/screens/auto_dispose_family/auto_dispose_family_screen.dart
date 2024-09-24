import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/provider/screens/auto_dispose_family/auto_dispose_family_provider.dart';

class AutoDisposeFamilyScreen extends ConsumerWidget {
  const AutoDisposeFamilyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloJui = ref.watch(autoDisposeFamilyHelloProvider('Jui'));
    final helloJere = ref.watch(autoDisposeFamilyHelloProvider('Jere'));

    ref.watch(counterProvider(const Counter(count: 0)));
    ref.watch(counterProvider(const Counter(count: 0)));

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              helloJere,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            Text(
              helloJui,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
