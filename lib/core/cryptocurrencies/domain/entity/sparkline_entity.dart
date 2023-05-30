import 'package:freezed_annotation/freezed_annotation.dart';

part 'sparkline_entity.freezed.dart';

@freezed
class SparklineEntity with _$SparklineEntity {
  factory SparklineEntity({
    required List<double> prices,
  }) = _SparklineEntity;
}
