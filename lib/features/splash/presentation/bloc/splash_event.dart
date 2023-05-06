import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.freezed.dart';

@freezed
class SplashEvent with _$SplashEvent {
  /// An event that should be emitted in order to notify
  /// the Splash is expected to perform any calculations needed
  /// and load whatever is necessary.
  const factory SplashEvent.load() = LoadSplashEvent;
}
