import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_environment.freezed.dart';

enum Environment { dev }

@freezed
class AppEnvironment with _$AppEnvironment {
  const factory AppEnvironment({
    required String apiUrl,
    required Environment environment,
  }) = _AppEnvironment;
}

const AppEnvironment develop = AppEnvironment(
  apiUrl: 'https://api.coingecko.com/api/v3/',
  environment: Environment.dev,
);
