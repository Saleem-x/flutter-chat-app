import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/users_model/users_model.dart';
import 'package:chatapp/data/repositories/getallchatsrepo/getallchatsrepo.dart';
import 'package:chatapp/data/repositories/getcontacts/getallusersrepo.dart';
import 'package:chatapp/presentation/accountinfo/accountinfo.dart';
import 'package:chatapp/presentation/chat/chatscreen.dart';
import 'package:chatapp/presentation/common/skelton.dart';
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
    final user = FirebaseAuth.instance.currentUser!;
    final MessagesRepo messageRepo = MessagesRepo();
    final getusersrepoo = GetAallUsersRepo();
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
              stream: GetAllChatRepo()
                  .getUsersStream(FirebaseAuth.instance.currentUser!.email!),
              builder: (context, snapshot) {
                return ListView.separated(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return snapshot.connectionState == ConnectionState.active
                          ? ListTile(
                              onTap: () {
                                final username =
                                    snapshot.data![index].name == null ||
                                            snapshot.data![index].toname == null
                                        ? 'user'
                                        : snapshot.data![index].frommail ==
                                                user.email
                                            ? snapshot.data![index].toname!
                                            : snapshot.data![index].name!;

                                final email =
                                    snapshot.data![index].frommail == user.email
                                        ? snapshot.data![index].tomail!
                                        : snapshot.data![index].frommail;

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreen(
                                      tomail: email!,
                                      username: username,
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
                              leading: StreamBuilder<String>(
                                  stream: getusersrepoo.getuserprofilephotos(
                                      snapshot.data![index].frommail ==
                                              user.email
                                          ? snapshot.data![index].tomail!
                                          : snapshot.data![index].frommail!),
                                  builder: (context, profileimage) {
                                    return CircleAvatar(
                                      radius: 30,
                                      child: SizedBox.fromSize(
                                        size: size,
                                        child: ClipOval(
                                          child: profileimage.data == null ||
                                                  profileimage.data == 'no-img'
                                              ? Image.asset(
                                                  'assets/images/profiletemp.jpg',
                                                  fit: BoxFit.cover,
                                                )
                                              : Image.network(
                                                  profileimage.data!,
                                                  fit: BoxFit.cover,
                                                ),
                                        ),
                                      ),
                                    );
                                  }),
                              title: Text(snapshot.data![index].name == null ||
                                      snapshot.data![index].toname == null
                                  ? 'user'
                                  : snapshot.data![index].frommail == user.email
                                      ? snapshot.data![index].toname!
                                      : snapshot.data![index].name!),
                              subtitle: snapshot.connectionState ==
                                      ConnectionState.waiting
                                  ? const Text('data')
                                  : StreamBuilder(
                                      stream: messageRepo.getMessageStream(
                                          snapshot.data![index].tomail!,
                                          snapshot.data![index].chatid),
                                      builder: (context, lastmessage) {
                                        return lastmessage.data == null
                                            ? const SkeltonWidget(
                                                height: 8, width: 40)
                                            : Text(lastmessage.data!.reversed
                                                .toList()[0]
                                                .message!);
                                      }),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                children: [
                                  const SkeltonWidget(
                                    height: 60,
                                    width: 60,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SkeltonWidget(
                                          height: 20, width: size.width - 100),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SkeltonWidget(
                                          height: 20, width: size.width - 150)
                                    ],
                                  ))
                                ],
                              ),
                            );
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(),
                      );
                    },
                    itemCount:
                        snapshot.data == null ? 10 : snapshot.data!.length);
              },
            ),
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
