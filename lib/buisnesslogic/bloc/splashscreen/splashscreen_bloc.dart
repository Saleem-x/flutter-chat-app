import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';
part 'splashscreen_bloc.freezed.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc() : super(SplashscreenState.initial()) {
    on<_checkuserin>((event, emit) async {
      final sharedprefs = await SharedPreferences.getInstance();
      final userin = sharedprefs.getBool('userin');
      if (userin == true) {
        Future.delayed(const Duration(seconds: 3));
        emit(const SplashscreenState.userinstate(userin: true));
      } else {
        Future.delayed(const Duration(seconds: 3));
        emit(const SplashscreenState.userinstate(userin: false));
      }
    });
  }
}
