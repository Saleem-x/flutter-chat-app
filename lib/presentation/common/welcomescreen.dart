import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/login/loginscreen.dart';
import 'package:chatapp/presentation/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.width,
            width: size.width,
            child: Lottie.asset(
              'assets/animations/chatanimation.json',
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                textAlign: TextAlign.center,
                ''' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '''),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          MaterialButton(
            color: primarycolor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            },
            child: Text(
              'Signup',
              style: kfontstyle(color: kcolorwhite),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          MaterialButton(
            color: secondarycolor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Text(
              'Login',
              style: kfontstyle(color: kcolorwhite),
            ),
          )
        ],
      ),
    ));
  }
}
