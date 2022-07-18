import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_model.freezed.dart';
part 'add_model.g.dart';

@freezed
class AddModel with _$AddModel {
  factory AddModel({
    required String title,
    required String subTitle,
    required int id,
  }) = _AddModel;

  factory AddModel.fromJson(Map<String, dynamic> json) =>
      _$AddModelFromJson(json);
}
