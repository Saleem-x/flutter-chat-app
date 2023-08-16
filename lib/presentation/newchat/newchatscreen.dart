import 'package:chatapp/buisnesslogic/bloc/getcontacts/getcontacts_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/chat/chatscreen.dart';
import 'package:chatapp/presentation/newchat/createcontact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<GetcontactsBloc>()
        .add(const GetcontactsEvent.getAllContacts());
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
      body: BlocBuilder<GetcontactsBloc, GetcontactsState>(
        builder: (context, state) {
          return state.when(
            () => const Center(child: CircularProgressIndicator()),
            hasContactState: (contactlist) {
              return contactlist == null
                  ? const Center(child: CircularProgressIndicator())
                  : contactlist.isEmpty
                      ? const Center(
                          child: Text('No-contacts added'),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChatScreen(
                                          tomail: contactlist[index].email!,
                                          username:
                                              contactlist[index].username!,
                                          imageurl:
                                              contactlist[index].profileimg,
                                          uniqueid: contactlist[index].chatid),
                                    ));
                              },
                              leading: CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: Image.asset(
                                      'assets/images/profiletemp.jpg'),
                                ),
                              ),
                              title: Text(contactlist[index].username!),
                              subtitle: Text(contactlist[index].email!),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(),
                            );
                          },
                          itemCount: contactlist.length,
                        );
            },
            errorstate: () => const Center(
              child: Text(
                'someting went wrong',
              ),
            ),
          );
        },
      ),
    );
  }
}
