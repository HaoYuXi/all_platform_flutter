import 'dart:math';

import 'package:all_platfrom_flutter/piverpod/state/user_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_info.g.dart';

@riverpod
class UserInfo extends _$UserInfo {
  @override
  FutureOr<UserInfoState> build(String userName, int age) async {
    return UserInfoState(name: userName, age: age);
  }
}

@riverpod
class UserAvatar extends _$UserAvatar {
  @override
  MyState build() {
    return MyState.initial();
  }
}

@riverpod
class Logged extends _$Logged {
  @override
  FutureOr<bool> build() async {
    return false;
  }
}

final myFamilyProvider = Provider.family<String, int>((ref, id) {
  return '';
});

final myAutoProvider = Provider.autoDispose<String>((ref) {
  return '';
});

class MyStateNotifier extends StateNotifier<MyState> {
  MyStateNotifier() : super(MyState.initial());

  Future<void> loadData() async {
    state = MyState.loading();

    final data = await Future.delayed(const Duration(seconds: 2), () {
      return '哈哈哈';
    });
    state = MyState.data(data.toString());
  }
}

@riverpod
Future<UserInfoState> getUser(Ref ref) async {
  final age = ref.watch(delayedAcquisitionProvider).valueOrNull ?? 0;

  if (age % 2 == 0) {
    return UserInfoState(name: 'name', age: age);
  } else {
    throw Exception('随机数是奇数');
    // return AsyncValue.error('随机数是奇数');
  }
}

@riverpod
class DelayedAcquisition extends _$DelayedAcquisition {
  @override
  FutureOr<int> build() async {
    int num = 2;
    num = await Future.delayed(const Duration(seconds: 2), () {
      //生成一个随机数
      final random = Random();
      //判断随机数是否是偶数
      int num = random.nextInt(1000);

      print('print num: $num');
      return num;
    });
    return num;
  }
}
