part of 'splashscreen_bloc.dart';

@freezed
class SplashscreenState with _$SplashscreenState {
  const factory SplashscreenState() = _splashScreenstate;
  const factory SplashscreenState.userinstate({required bool userin}) =
      _Userinstate;

  factory SplashscreenState.initial() => const SplashscreenState();
}
