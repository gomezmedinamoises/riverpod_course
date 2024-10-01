import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_course/features/user/presentation/screens/user_details_screen.dart';
import 'package:riverpod_course/features/user/presentation/users_provider.dart';

class UserListScreen extends ConsumerWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body: userList.when(
          data: (users) {
            return RefreshIndicator(
              onRefresh: () async => ref.invalidate(userListProvider),
              color: Colors.red,
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: users.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final user = users[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return UserDetailsScreen(userId: user.id);
                      }));
                    },
                    child: ListTile(
                      leading: CircleAvatar(child: Text(user.id.toString())),
                      title: Text(user.name),
                    ),
                  );
                },
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text(
                error.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
