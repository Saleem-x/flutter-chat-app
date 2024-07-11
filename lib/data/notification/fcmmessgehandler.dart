import 'dart:convert';
import 'dart:developer';

import 'package:chatapp/data/notification/firebasenotification.dart';
import 'package:chatapp/presentation/chat/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/* // Top-level function for background message handling
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();
  groupNotifications(flp);
} */

class MessageHandler extends StatefulWidget {
  final Widget child;
  const MessageHandler({super.key, required this.child});

  @override
  State createState() => MessageHandlerState();
}

class MessageHandlerState extends State<MessageHandler> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  late Widget child;

  @override
  void initState() {
    super.initState();
    child = widget.child;
    init();
    // Request permissions for iOS
    _firebaseMessaging.requestPermission();

    // Handle messages when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Happening');
      handleMessage(message);
    });

    // Handle messages when the app is in the background and opened from the terminated state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('Happening open');
      handleMessage(message);
    });

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    checkForInitialMessage();
  }

  Future<void> checkForInitialMessage() async {
    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      handleMessage(initialMessage);
    }
  }

  Future<void> init() async {
    FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();

    var androidi = const AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );

    var ios = const DarwinInitializationSettings();

    var inisettings = InitializationSettings(android: androidi, iOS: ios);
    await flp.initialize(
      inisettings,
      onDidReceiveBackgroundNotificationResponse: (details) {
        if (details.payload != null && mounted) {
          final data = jsonDecode(details.payload!);
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChatScreen(
              tomail: data['fromMail'],
              username: data['username'],
              fcmToken: '',
              imageurl: data['imageurl'],
              uniqueid: data['uniqueid'],
            ),
          ));
        }
      },
    );
  }

  void handleMessage(RemoteMessage message) async {
    final screen = message.data['fromMail'];
    if (screen != null && mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ChatScreen(
              tomail: message.data['fromMail'],
              username: message.data['username'],
              fcmToken: '',
              imageurl: message.data['imageurl'],
              uniqueid: message.data['uniqueid'],
            ),
          ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
