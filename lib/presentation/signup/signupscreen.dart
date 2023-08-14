import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/signup/signup_model/signup_model.dart';
import 'package:chatapp/presentation/home/homescreen.dart';
import 'package:chatapp/presentation/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

final _usernamecontroller = TextEditingController();
final _emailcontroller = TextEditingController();
final _passcontroller = TextEditingController();
final _passverifycontroller = TextEditingController();
final _signupformkey = GlobalKey<FormState>();

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: _signupformkey,
        child: BlocListener<SignupBloc, SignupState>(
          listener: (context, state) {
            state.when(
              () => null,
              loadingstate: () => const Center(
                child: CircularProgressIndicator(),
              ),
              successstate: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatHomeScreen(),
                    ),
                    (route) => false);
              },
              failedstate: () {},
              userexiststate: (isUserexist) {
                if (!isUserexist) {
                  context.read<SignupBloc>().add(SignupEvent.signupevent(
                      signupModel: SignupModel(
                          userName: _usernamecontroller.text,
                          email: _emailcontroller.text,
                          password: _passcontroller.text)));
                } else {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Row(
                      children: [
                        const Icon(
                          Icons.info,
                          color: kcolorwhite,
                        ),
                        Text(
                          'User Allready Exist',
                          style: kfontstyle(),
                        ),
                      ],
                    )));
                }
              },
            );
          },
          child: Column(
            children: [
              SizedBox(
                height: size.width - 100,
                width: size.width,
                child: Lottie.asset(
                  'assets/animations/loginanimation.json',
                ),
              ),
              TextFieldWidget(
                  label: 'Username',
                  ispass: false,
                  controller: _usernamecontroller,
                  type: TextInputType.name),
              TextFieldWidget(
                  label: 'email',
                  ispass: false,
                  controller: _emailcontroller,
                  type: TextInputType.emailAddress),
              TextFieldWidget(
                  label: 'password',
                  ispass: false,
                  controller: _passcontroller,
                  passverify: _passverifycontroller,
                  type: TextInputType.visiblePassword),
              TextFieldWidget(
                  label: 'confirm password',
                  ispass: true,
                  controller: _passverifycontroller,
                  passverify: _passcontroller,
                  type: TextInputType.name),
              MaterialButton(
                color: primarycolor,
                onPressed: () {
                  if (_signupformkey.currentState!.validate()) {
                    context.read<SignupBloc>().add(
                          SignupEvent.checkuserexistevent(
                              email: _emailcontroller.text),
                        );
                  }
                },
                child: Text(
                  'Signup',
                  style: kfontstyle(
                    color: kcolorwhite,
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
