import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends Equatable {
  const Counter({required this.count});

  final int count;

  @override
  String toString() => 'Counter(count: $count)';

  @override
  List<Object?> get props => [];
}

final counterProvider = Provider.autoDispose.family<int, Counter>((ref, c) {
  ref.onDispose(() {
    print('[countProvider($c)] disposed');
  });
  return c.count;
});

final autoDisposeFamilyHelloProvider =
    Provider.autoDispose.family<String, String>((ref, name) {
  print('[autoDisposeFamilyHelloProvider] created');
  ref.onDispose(() {
    print('[autoDisposeFamilyHelloProvider] disposed');
  });
  return 'Hello $name';
});
