import 'package:chatapp/buisnesslogic/bloc/getallusers/getallusers_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/repositories/getcontacts/getallusersrepo.dart';
import 'package:chatapp/presentation/chat/chatscreen.dart';
import 'package:chatapp/presentation/common/skelton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetallusersBloc>().add(const GetallusersEvent.getallusers());
    final size = MediaQuery.of(context).size;
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
              return ListView.separated(
                itemBuilder: (context, index) {
                  return alluserslist == null
                      ? Padding(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        )
                      : alluserslist.isEmpty
                          ? const Center(
                              child: Text('No-contacts added'),
                            )
                          : ListTile(
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
                                child: SizedBox.fromSize(
                                  size: size,
                                  child: ClipOval(
                                    child: alluserslist[index].profileimage ==
                                                'no-img' ||
                                            alluserslist[index].profileimage ==
                                                null
                                        ? Image.asset(
                                            'assets/images/profiletemp.jpg',
                                            fit: BoxFit.cover,
                                          )
                                        : Image.network(
                                            alluserslist[index].profileimage!,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
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
                itemCount: alluserslist == null ? 10 : alluserslist.length,
              );
            },
            errorstate: () => const Center(),
          );
        },
      ),
    );
  }
}
