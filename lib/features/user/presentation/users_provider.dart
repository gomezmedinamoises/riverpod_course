import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_course/features/user/models/user.dart';
import 'package:riverpod_course/features/user/presentation/dio_provider.dart';

part 'users_provider.g.dart';

/*final usersProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  ref.onDispose(() {
    print('[userListProvider] disposed');
  });

  final response = await ref.watch(dioProvider).get('/users');
  final List userList = response.data;
  final users = [for (final user in userList) User.fromJson(user)];

  return users;
});*/

@riverpod
Future<List<User>> userList(UserListRef ref) async {
  ref.onDispose(() {
    print('[userListProvider] disposed');
  });

  final response = await ref.watch(dioProvider).get('/users');
  final List userList = response.data;
  final users = [for (final user in userList) User.fromJson(user)];

  return users;
}

/*final userDetailProvider =
    FutureProvider.autoDispose.family<User, int>((ref, id) async {
  ref.onDispose(() {
    print('[userDetailProvider($id)] disposed');
  });
  final response = await ref.watch(dioProvider).get('/users/$id');
  final user = User.fromJson(response.data);
  return user;
});*/

@riverpod
FutureOr<User> userDetail(UserDetailRef ref, int id) async {
  ref.onDispose(() {
    print('[userDetailProvider($id)] disposed');
  });
  final response = await ref.watch(dioProvider).get('/users/$id');
  ref.keepAlive();
  final user = User.fromJson(response.data);
  return user;
}
