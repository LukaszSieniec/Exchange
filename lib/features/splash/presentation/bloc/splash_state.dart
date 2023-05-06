import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(SplashStatus.loading()) SplashStatus status,
  }) = _SplashState;
}

@freezed
class SplashStatus with _$SplashStatus {
  /// The Splash Screen is busy loading the content.
  const factory SplashStatus.loading() = _SplashLoading;

  /// Allows you to navigate inside the application.
  const factory SplashStatus.navigateToInsideApplication() =
      _SplashNavigateToInsideApplication;

  /// It reflects the error that may have occurred during the operation.
  const factory SplashStatus.failure() = _SplashFailure;
}
