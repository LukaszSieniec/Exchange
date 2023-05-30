import 'package:freezed_annotation/freezed_annotation.dart';

part 'cryptocurrency_entity.freezed.dart';

@freezed
class CryptocurrencyEntity with _$CryptocurrencyEntity {
  factory CryptocurrencyEntity({
    required String id,
    required String symbol,
    required String name,
  }) = _CryptocurrencyEntity;
}
