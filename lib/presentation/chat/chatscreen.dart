import 'dart:async';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/message_model/message_model.dart';
import 'package:chatapp/data/repositories/messages/messagesrepo.dart';
import 'package:chatapp/presentation/chat/mesaggefieldwidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatScreen extends StatefulWidget {
  final String tomail;
  final String username;
  final String? imageurl;
  final String? uniqueid;
  const ChatScreen(
      {super.key,
      required this.tomail,
      required this.username,
      this.imageurl,
      this.uniqueid});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

final StreamController<List<MessageModel>> _chatStreamController =
    StreamController<List<MessageModel>>();

Stream<List<MessageModel>> get chatStream => _chatStreamController.stream;

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final MessagesRepo messageRepo = MessagesRepo();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: kcolorwhite,
            )),
        backgroundColor: primarycolor,
        title: ListTile(
          leading: CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: widget.imageurl == 'no-img'
                  ? Image.asset('assets/images/profiletemp.jpg')
                  : Image.network(widget.imageurl!),
            ),
          ),
          title: Text(
            widget.username,
            style: kfontstyle(color: kcolorwhite),
          ),
          subtitle: Text(
            'status',
            style: kfontstyle(color: kcolorwhite),
          ),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: StreamBuilder(
              stream: messageRepo.getMessageStream(
                  widget.tomail, '3a22c3ed80142ab0d5d9776c39326ad6ed4371d4'
                  /* widget.uniqueid ??
                      generateUniqueId(
                          FirebaseAuth.instance.currentUser!.email!,
                          widget.tomail) */
                  ),
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.active
                    ? GroupedListView<MessageModel, DateTime>(
                        reverse: true,
                        order: GroupedListOrder.DESC,
                        elements: snapshot.data!,
                        groupBy: (element) => DateTime.now(),
                        // groupHeaderBuilder: (element) => SizedBox(
                        //   height: 40,
                        //   child: Card(child: Text(element.date!)),
                        // ),
                        itemBuilder: (context, element) {
                          return Align(
                            alignment: element.uid ==
                                    FirebaseAuth.instance.currentUser!.uid
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: element.uid ==
                                          FirebaseAuth.instance.currentUser!.uid
                                      ? primarycolor
                                      : secondarycolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      element.message!,
                                      style: kfontstyle(
                                        color: kcolorwhite,
                                      ),
                                    ),
                                    Text(
                                      element.time!,
                                      style: kfontstyle(
                                        fontSize: 10,
                                        color: kcolorwhite,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        groupSeparatorBuilder: (value) => SizedBox(
                          height: size.height * 0.01,
                        ),
                      )
                    : const Center();
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: MessageFieldWidget(
              tomail: widget.tomail,
              uniqueid: '3a22c3ed80142ab0d5d9776c39326ad6ed4371d4'
              /*  widget.uniqueid ??
                  generateUniqueId(FirebaseAuth.instance.currentUser!.email!,
                      widget.tomail) */
              ),
        )
      ]),
    );
  }

  errorstate() {}
}
