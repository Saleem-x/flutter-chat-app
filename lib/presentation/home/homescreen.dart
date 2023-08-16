import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/users_model/users_model.dart';
import 'package:chatapp/data/repositories/getallchatsrepo/getallchatsrepo.dart';
import 'package:chatapp/presentation/accountinfo/accountinfo.dart';
import 'package:chatapp/presentation/chat/chatscreen.dart';
import 'package:chatapp/presentation/newchat/newchatscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../data/repositories/messages/messagesrepo.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({super.key});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      await FirebaseFirestore.instance
          .collection('userstatus')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .set({'status': 'online'});
    } else {
      await FirebaseFirestore.instance
          .collection('userstatus')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .set({'status': 'offline'});
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final MessagesRepo messageRepo = MessagesRepo();
    // final connectivityrepo = Connectivityrepo();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: size.height * 0.08,
            backgroundColor: primarycolor,
            title: Text(
              'Lets Chat',
              style: kfontstyle(
                color: kcolorwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountInfoScreen(),
                      ));
                },
                icon: const Icon(
                  Iconsax.user,
                  color: kcolorwhite,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: StreamBuilder<List<UsersModel>>(
                stream: GetAllChatRepo().getUsersStream(),
                builder: (context, snapshot) {
                  return snapshot.connectionState == ConnectionState.active
                      ? ListView.separated(
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreen(
                                      tomail: snapshot.data![index].tomail!,
                                      username: snapshot.data![index].name!,
                                      imageurl:
                                          snapshot.data![index].profileimage,
                                      uniqueid: snapshot.data![index].chatid ??
                                          generateUniqueId(
                                              FirebaseAuth
                                                  .instance.currentUser!.email!,
                                              snapshot.data![index].tomail!),
                                    ),
                                  ),
                                );
                              },
                              leading: CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: snapshot.data![index].profileimage ==
                                          'no-img'
                                      ? Image.asset(
                                          'assets/images/profiletemp.jpg')
                                      : Image.network(
                                          snapshot.data![index].profileimage!),
                                ),
                              ),
                              title: Text(snapshot.data![index].name ?? 'user'),
                              subtitle: snapshot.connectionState ==
                                      ConnectionState.waiting
                                  ? const Text('data')
                                  : StreamBuilder(
                                      stream: messageRepo.getMessageStream(
                                          snapshot.data![index].tomail!,
                                          snapshot.data![index].chatid
                                          /* widget.uniqueid ??
                    generateUniqueId(
                        FirebaseAuth.instance.currentUser!.email!,
                        widget.tomail) */
                                          ),
                                      builder: (context, lastmessage) {
                                        return Text(lastmessage.data == null
                                            ? 'message'
                                            : lastmessage.data!.reversed
                                                .toList()[0]
                                                .message!);
                                      }),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(),
                            );
                          },
                          itemCount: snapshot.data!.length)
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: primarycolor,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewChatScreen(),
                ));
          },
          label: Row(
            children: [
              const Icon(
                Iconsax.message,
                color: kcolorwhite,
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              Text(
                'New chat',
                style: kfontstyle(color: kcolorwhite),
              )
            ],
          )),
    );
  }
}
