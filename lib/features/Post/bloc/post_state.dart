import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/features/Post/data/post_model/post_model.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  factory PostState({
    @Default(false) bool isLoading,
    @Default([]) List<PostModel> posts,
  }) = _PostState;
}
