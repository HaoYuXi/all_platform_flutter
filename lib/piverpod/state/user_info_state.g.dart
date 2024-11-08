// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoStateImpl _$$UserInfoStateImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoStateImpl(
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserInfoStateImplToJson(_$UserInfoStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };
