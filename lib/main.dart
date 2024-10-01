import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/core/presentation/widgets/custom_button.dart';
import 'package:riverpod_course/features/provider/screens/auto_dispose/auto_dispose_screen.dart';
import 'package:riverpod_course/features/provider/screens/auto_dispose_family/auto_dispose_family_screen.dart';
import 'package:riverpod_course/features/provider/screens/basic/basic_screen.dart';
import 'package:riverpod_course/features/provider/screens/family/family_screen.dart';
import 'package:riverpod_course/features/state_provider/screens/auto_dispose/auto_dispose_state_provider_screen.dart';
import 'package:riverpod_course/features/state_provider/screens/basic/basic_state_provider_screen.dart';
import 'package:riverpod_course/features/state_provider/screens/family/family_state_provider_screen.dart';
import 'package:riverpod_course/features/stream_provider/presentation/ticker_screen.dart';
import 'package:riverpod_course/features/user/presentation/screens/user_list_screen.dart';

import 'features/provider/screens/auto_dispose_test_family/auto_dispose_family_test_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Providers'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [
            CustomButton(
              title: 'Stream Provider',
              child: TickerScreen(),
            ),
            CustomButton(
              title: 'User list',
              child: UserListScreen(),
            ),
            Divider(color: Colors.blueAccent),
            Text('Provider', textAlign: TextAlign.center),
            Divider(color: Colors.blueAccent),
            CustomButton(
              title: 'Provider',
              child: BasicScreen(),
            ),
            CustomButton(
              title: 'AutoDispose Provider',
              child: AutoDisposeScreen(),
            ),
            CustomButton(
              title: 'Family Provider',
              child: FamilyScreen(),
            ),
            CustomButton(
              title: 'AutoDispose Family Provider',
              child: AutoDisposeFamilyScreen(),
            ),
            CustomButton(
              title: 'AutoDispose Family Test Provider',
              child: AutoDisposeFamilyTestScreen(),
            ),
            Divider(color: Colors.blueAccent),
            Text('State Provider', textAlign: TextAlign.center),
            Divider(color: Colors.blueAccent),
            CustomButton(
              title: 'State Provider',
              child: BasicStateProviderScreen(),
            ),
            CustomButton(
              title: 'AutoDispose State Provider',
              child: AutoDisposeStateProviderScreen(),
            ),
            CustomButton(
              title: 'Family State Provider',
              child: FamilyStateProviderScreen(),
            ),
            CustomButton(
              title: 'AutoDispose Family State Provider',
              child: AutoDisposeStateProviderScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
