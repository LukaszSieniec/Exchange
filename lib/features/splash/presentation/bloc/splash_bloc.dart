import 'package:exchange/features/splash/presentation/bloc/splash_event.dart';
import 'package:exchange/features/splash/presentation/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  static const int _splashDuration = 2;

  SplashBloc() : super(const SplashState()) {
    on<LoadSplashEvent>(_onLoadedSplash);
  }

  Future<void> _onLoadedSplash(
    LoadSplashEvent event,
    Emitter<SplashState> emit,
  ) async {
    /// Delays the transition to the next screen by 2 seconds.
    await Future.delayed(const Duration(seconds: _splashDuration));

    emit(
      state.copyWith(status: const SplashStatus.navigateToInsideApplication()),
    );
  }
}
