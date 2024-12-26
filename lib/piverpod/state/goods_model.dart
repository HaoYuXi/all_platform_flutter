import 'package:freezed_annotation/freezed_annotation.dart';
part 'goods_model.freezed.dart';
part 'goods_model.g.dart';
@freezed
class GoodsModel with _$GoodsModel {
  const factory GoodsModel({
    @Default('') String name,
    @Default(0) int age,
  }) = _GoodsModel;

  factory GoodsModel.fromJson(Map<String, Object?> json) =>
      _$GoodsModelFromJson(json);
}