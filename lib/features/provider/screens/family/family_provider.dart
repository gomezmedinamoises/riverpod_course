import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyHelloProvider = Provider.family<String, String>((ref, name) {
  print('[familyHelloProvider] created');
  ref.onDispose(() {
    print('[familyHelloProvider] disposed');
  });
  return 'Hello $name';
});
