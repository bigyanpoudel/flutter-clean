import 'package:freezed_annotation/freezed_annotation.dart';
part 'form_submission_state.freezed.dart';

@freezed
class FormzStatus<T> with _$FormzStatus<T> {
  const factory FormzStatus.initial() = FormzStatusInitial;
  const factory FormzStatus.submissionInProgress() =
      FormzStatusSubmissionInProgress;
  const factory FormzStatus.submissionFailure({
    required String error,
  }) = FormzStatusSubmissionFailure;
  const factory FormzStatus.submissionSuccess({T? data}) =
      FormzStatusSubmissionSuccess;
}
