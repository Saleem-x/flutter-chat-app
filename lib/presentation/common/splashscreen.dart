import 'package:chatapp/buisnesslogic/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:chatapp/presentation/common/welcomescreen.dart';
import 'package:chatapp/presentation/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashscreenBloc>().add(const SplashscreenEvent.checkuserin());
    return BlocListener<SplashscreenBloc, SplashscreenState>(
      listener: (context, state) {
        state.when(
          () => null,
          userinstate: (userin) async {
            if (userin == true) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatHomeScreen(),
                  ),
                  (route) => false);
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                  (route) => false);
            }
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
