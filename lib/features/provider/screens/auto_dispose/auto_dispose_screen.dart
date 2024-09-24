import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/provider/screens/auto_dispose/auto_dispose_provider.dart';

class AutoDisposeScreen extends ConsumerWidget {
  const AutoDisposeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello = ref.watch(autoDisposeHelloProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeProvider'),
      ),
      body: Center(
        child: Text(
          hello,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
