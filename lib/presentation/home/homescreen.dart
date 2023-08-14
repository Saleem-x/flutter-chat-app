import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/newchat/newchatscreen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatHomeScreen extends StatelessWidget {
  const ChatHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            // pinned: true,
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
                onPressed: () {},
                icon: const Icon(
                  Iconsax.user,
                  color: kcolorwhite,
                ),
              ),
            ],
            // bottom: const PreferredSize(
            //   preferredSize: Size.fromHeight(50),
            //   child: TabBar(
            //     tabs: [
            //       Padding(
            //         padding: EdgeInsets.only(right: 35.0),
            //         child: Tab(
            //           text: 'Direct Messages',
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 35.0),
            //         child: Tab(
            //           text: 'Groups',
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
          SliverToBoxAdapter()
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
