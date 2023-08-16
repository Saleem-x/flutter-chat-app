import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/login_model/login_model.dart';
import 'package:chatapp/presentation/home/homescreen.dart';
import 'package:chatapp/presentation/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _passcontroller = TextEditingController();
final _emailcontroller = TextEditingController();
final _loginformkey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.when(
              () => null,
              loadingstate: () => const Center(
                child: CircularProgressIndicator(),
              ),
              successstate: () {
                ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatHomeScreen(),
                    ),
                    (route) => false);
              },
              failedstate: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                      backgroundColor: Colors.red,
                      content:
                          const Row(children: [Text('Something went Wrong')]),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.info_circle))
                      ]),
                );
              },
              usernotfoundstate: (isUserexist) {
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
                        'User Not Found',
                        style: kfontstyle(),
                      ),
                    ],
                  )));
              },
              passwordnotmatchingstate: () {
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
                        'Password Not Matching',
                        style: kfontstyle(),
                      ),
                    ],
                  )));
              },
            );
          },
          child: SingleChildScrollView(
              child: Form(
            key: _loginformkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.width - 100,
                  width: size.width,
                  child: Lottie.asset(
                    'assets/animations/loginanimation.json',
                  ),
                ),
                TextFieldWidget(
                    label: 'email',
                    ispass: false,
                    controller: _emailcontroller,
                    type: TextInputType.emailAddress),
                TextFieldWidget(
                    label: 'password',
                    ispass: true,
                    controller: _passcontroller,
                    type: TextInputType.text),
                MaterialButton(
                  color: primarycolor,
                  onPressed: () {
                    if (_loginformkey.currentState!.validate()) {
                      context.read<LoginBloc>().add(
                            LoginEvent.userloginevent(
                              loginModel: LoginModel(
                                  email: _emailcontroller.text,
                                  password: _passcontroller.text),
                            ),
                          );
                    }
                  },
                  child: Text(
                    'Login',
                    style: kfontstyle(color: kcolorwhite),
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
