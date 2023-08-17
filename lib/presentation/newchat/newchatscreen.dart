import 'package:chatapp/buisnesslogic/bloc/getallusers/getallusers_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/repositories/getcontacts/getallusersrepo.dart';
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
    context.read<GetallusersBloc>().add(const GetallusersEvent.getallusers());
    final getuserrepo = GetAallUsersRepo();
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
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const CreateContact(),
              //     ));
            },
            icon: const Icon(
              Iconsax.user_add,
              color: kcolorwhite,
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetallusersBloc, GetallusersState>(
        builder: (context, state) {
          return state.when(
            (alluserslist) {
              return alluserslist == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : alluserslist.isEmpty
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
                                          tomail: alluserslist[index].email!,
                                          username: alluserslist[index].name!,
                                          imageurl:
                                              alluserslist[index].profileimage,
                                          uniqueid:
                                              getuserrepo.getuniquechatkey(
                                                  alluserslist[index].useruid)),
                                    ));
                              },
                              leading: CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: Image.asset(
                                      'assets/images/profiletemp.jpg'),
                                ),
                              ),
                              title: Text(alluserslist[index].name!),
                              subtitle: Text(alluserslist[index].email!),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Divider(),
                            );
                          },
                          itemCount: alluserslist.length,
                        );
            },
            errorstate: () => const Center(),
          );
        },
      ),
    );
  }
}
