import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result<T, E> {
  /// A factory method to create a successful result.
  const factory Result.success({required T? data}) = Success<T, E>;

  /// A factory method to create a failure result.
  const factory Result.failure({required E error}) = Failure<T, E>;
}
