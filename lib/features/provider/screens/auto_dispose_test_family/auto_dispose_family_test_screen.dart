import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/provider/screens/auto_dispose_test_family/auto_dispose_family_test_provider.dart';

class AutoDisposeFamilyTestScreen extends ConsumerStatefulWidget {
  const AutoDisposeFamilyTestScreen({super.key});

  @override
  ConsumerState<AutoDisposeFamilyTestScreen> createState() =>
      _AutoDisposeFamilyTestScreenState();
}

class _AutoDisposeFamilyTestScreenState
    extends ConsumerState<AutoDisposeFamilyTestScreen> {
  String name = 'Jui';
  @override
  Widget build(BuildContext context) {
    final helloThere = ref.watch(autoDisposeFamilyHelloTestProvider(name));
    //final helloJere = ref.watch(autoDisposeFamilyHelloTestProvider('Jere'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyTestProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              helloThere,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                setState(() {
                  name = name == 'Jui' ? 'Jere' : 'Jui';
                });
              },
              child: const Text(
                'Change name',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
