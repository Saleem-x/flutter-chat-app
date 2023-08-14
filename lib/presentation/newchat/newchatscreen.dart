import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/newchat/createcontact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: kcolorwhite,
            )),
        title: Text(
          'New Chat',
          style: kfontstyle(
            color: kcolorwhite,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateContact(),
                  ));
            },
            icon: const Icon(
              Iconsax.user_add,
              color: kcolorwhite,
            ),
          ),
        ],
      ),
    );
  }
}
