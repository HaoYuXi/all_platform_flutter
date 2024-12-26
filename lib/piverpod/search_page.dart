import 'package:all_platfrom_flutter/piverpod/providers/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// // 定义一个 Family Provider
// final userProvider = FutureProvider.family<User, int>((ref, userId) async {
//   // 根据 userId 获取用户信息
//   final user = await fetchUser(userId);
//   return user;
// });

final userKeywordProvider =
    FutureProvider.family<String, String>((ref, keyword) async {
  // 根据 userId 获取用户信息
  // final user = await fetchUser(userId);
  return keyword;
});

void main() {
  runApp(
    // 创建 ProviderScope
    ProviderScope(
      overrides: [
        // 为 userProvider 提供 userId 参数
        // userProvider.overrideWithProvider(
        //       (userId) => FutureProvider((ref) async {
        //     final user = await fetchUser(userId);
        //     return user;
        //   }),
        // ),
        userKeywordProvider.overrideWithProvider(
          (argument) => FutureProvider(
            (ref) async {
              return argument;
            },
          ),
        ),
        keywordProvider.getProviderOverride(keywordProvider('111'))

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 使用 userProvider 获取用户信息
    // final userAsyncValue = ref.watch(userProvider(123)); // userId 为 123
    final userAsyncValue = ref.watch(keywordProvider('123'));

    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('User: $userAsyncValue')),
      ),
    );
  }
}
