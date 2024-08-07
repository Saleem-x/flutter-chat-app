import 'dart:developer';
import 'dart:io';

import 'package:chatapp/buisnesslogic/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/getcontacts/getcontacts_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/login/login_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/messages/messages_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/signup/signup_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:chatapp/buisnesslogic/bloc/updateprofile/updateprofile_bloc.dart';
import 'package:chatapp/buisnesslogic/cubit/createcontact/createchat_cubit.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/di/injectable.dart';
import 'package:chatapp/data/notification/fcmmessgehandler.dart';
import 'package:chatapp/data/notification/firebasenotification.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/presentation/common/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'buisnesslogic/bloc/getallusers/getallusers_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    await PushNotificationService().initialize();

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    if (Platform.isAndroid || Platform.isIOS) {
      FirebaseMessaging? messaging;
      messaging = FirebaseMessaging.instance;
      await messaging.requestPermission();
      if (Platform.isAndroid) {
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
      }
    }
  } catch (e) {
    log('Error initializing Firebase: $e');
  }
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
        BlocProvider<SplashscreenBloc>(
          create: (context) => SplashscreenBloc(),
        ),
        BlocProvider(
          create: (context) => getit<GetcontactsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MessagesBloc>(),
        ),
        BlocProvider<AccountinfoBloc>(
          create: (context) => AccountinfoBloc(),
        ),
        BlocProvider<GetallusersBloc>(
          create: (context) => GetallusersBloc(),
        ),
        BlocProvider<UpdateprofileBloc>(
          create: (context) => UpdateprofileBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primarycolor),
          useMaterial3: true,
        ),
        home: const MessageHandler(child: SplashScreen()),
      ),
    );
  }
}
