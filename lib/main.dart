import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart';
import 'package:chatapp/buisnesslogic/cubit/cubit/createchat_cubit.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/di/injectable.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/presentation/common/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  configureinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<SignupBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CreatechatCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primarycolor),
          useMaterial3: true,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
