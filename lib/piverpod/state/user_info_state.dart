import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_info_state.freezed.dart';
part 'user_info_state.g.dart';

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState({
    @Default('') String name,
    @Default(0) int age,
  }) = _UserInfoState;

  factory UserInfoState.fromJson(Map<String, Object?> json) =>
      _$UserInfoStateFromJson(json);
}


@unfreezed
class MyState with _$MyState {
  factory MyState.initial() = _Initial;
  factory MyState.loading() = _Loading;
  factory MyState.data(String data) = _Data;
  factory MyState.error(String error) = _Error;
}