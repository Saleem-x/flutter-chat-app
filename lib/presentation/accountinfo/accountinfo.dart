import 'dart:io';
import 'package:chatapp/buisnesslogic/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/account_info/account_info.dart';
import 'package:chatapp/presentation/common/splashscreen.dart';
import 'package:chatapp/presentation/common/welcomescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<AccountinfoBloc>()
        .add(const AccountinfoEvent.getuserdetailsevent());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: kcolorwhite,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Logout',
                      style: kfontstyle(),
                    ),
                    content: Text(
                      'do you want to Logout',
                      style: kfontstyle(),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'cancel',
                          style: kfontstyle(),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          FirebaseAuth.instance.signOut();
                          final sharedprefs =
                              await SharedPreferences.getInstance();
                          sharedprefs.setBool('userin', false);
                          Future.delayed(const Duration(microseconds: 100), () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WelcomeScreen(),
                                ),
                                (route) => false);
                          });
                        },
                        child: Text(
                          'confirm',
                          style: kfontstyle(),
                        ),
                      )
                    ],
                  ),
                );
              },
              icon: const Icon(
                Iconsax.logout,
                color: kcolorwhite,
              ))
        ],
        backgroundColor: primarycolor,
        title: Text(
          'Account',
          style: kfontstyle(color: kcolorwhite),
        ),
      ),
      body: BlocConsumer<AccountinfoBloc, AccountinfoState>(
        builder: (context, state) {
          return state.when(
            (name, imageurl) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<AccountinfoBloc>().add(
                            const AccountinfoEvent.imagePickevent(
                                imageurl: ''));
                      },
                      child: CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                          child: imageurl == 'no-img'
                              ? Image.asset('assets/images/profiletemp.jpg')
                              : Image.network(imageurl!),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(children: [
                      Text(
                        'Username: ${name!}',
                        style: kfontstyle(),
                      ),
                      Text(
                        'Email: ${FirebaseAuth.instance.currentUser!.email}',
                        style: kfontstyle(),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            imagepickedstate: (imageurl) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<AccountinfoBloc>().add(
                            const AccountinfoEvent.imagePickevent(
                                imageurl: ''));
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        child: ClipRRect(
                          child: imageurl == 'no-img'
                              ? Image.asset('assets/images/profiletemp.jpg')
                              : Image.file(
                                  File(imageurl),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      color: primarycolor,
                      onPressed: () {
                        context.read<AccountinfoBloc>().add(
                            AccountinfoEvent.updateDataEvent(
                                accountInfo:
                                    AccountInfo(name: '', profileimage: '')));
                      },
                      child: Text(
                        'update',
                        style: kfontstyle(color: kcolorwhite),
                      ),
                    )
                  ],
                ),
              ),
            ),
            updatesuccessstate: () {
              return const SizedBox();
            },
            updatefailedstate: () {
              return const SizedBox();
            },
          );
        },
        listener: (context, state) {
          state.when(
            (name, imageurl) => null,
            imagepickedstate: (imageurl) {},
            updatesuccessstate: () {
              context
                  .read<AccountinfoBloc>()
                  .add(const AccountinfoEvent.getuserdetailsevent());
            },
            updatefailedstate: () {},
          );
        },
      ),
    );
  }
}
