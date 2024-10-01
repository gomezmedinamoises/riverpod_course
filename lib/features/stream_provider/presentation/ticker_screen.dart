import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/stream_provider/presentation/ticker_provider.dart';

class TickerScreen extends ConsumerWidget {
  const TickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerValue = ref.watch(tickerProvider);
    print(tickerValue);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticker'),
      ),
      body: Center(
        child: tickerValue.when(
          data: (ticks) => Text(
            _formatTimes(ticks),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          error: (error, stack) => Text(
            error.toString(),
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

String _formatTimes(int ticks) {
  final minutes = _zeroPaddedTwoDigits((ticks / 60) % 60);
  final seconds = _zeroPaddedTwoDigits(ticks % 60);
  return '$minutes:$seconds';
}

String _zeroPaddedTwoDigits(double ticks) {
  return ticks.floor().toString().padLeft(2, '0');
}
