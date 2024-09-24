import 'package:dio/dio.dart';
import 'package:riverpod_course/features/user/models/user.dart';

Future<List<User>> fetchUserData() async {
  try {
    await Future.delayed(const Duration(seconds: 2));
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    final userList = response.data;
    print(userList[0]);

    final users = [for (final user in userList) User.fromJson(user)];
    print(users[0]);

    return users;
  } catch (e) {
    rethrow;
  }
}
