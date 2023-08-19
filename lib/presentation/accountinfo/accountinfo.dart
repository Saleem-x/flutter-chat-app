import 'package:chatapp/buisnesslogic/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/accountinfo/updatescreen.dart';
import 'package:chatapp/presentation/common/welcomescreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
                            await FirebaseFirestore.instance
                                .collection('userstatus')
                                .doc(FirebaseAuth.instance.currentUser!.email)
                                .set({'status': 'offline'});
                            Future.delayed(const Duration(microseconds: 100),
                                () {
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
        body: BlocBuilder<AccountinfoBloc, AccountinfoState>(
          builder: (context, state) {
            return state.when(
              (name, imageurl) => Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ListTile(
                        leading: InkWell(
                          // onTap: () {},
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: imageurl == 'no-img'
                                  ? Image.asset('assets/images/profiletemp.jpg')
                                  : Image.network(
                                      imageurl!,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/profiletemp.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        title: Text(
                          'Username: ${name!}',
                          style: kfontstyle(),
                        ),
                        subtitle: Text(
                          'Email: ${FirebaseAuth.instance.currentUser!.email}',
                          style: kfontstyle(),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Card(
                          // color: secondarycolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              UpdateProfileScreen(
                                                  username: name,
                                                  profileimage:
                                                      imageurl ?? 'no-img'),
                                        ));
                                  },
                                  child: ProfileScreenContainer(
                                    size: size,
                                    icon: Iconsax.edit,
                                    title: 'Edit Profile',
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                ProfileScreenContainer(
                                  size: size,
                                  icon: Iconsax.document,
                                  title: 'About',
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                ProfileScreenContainer(
                                  size: size,
                                  icon: Iconsax.security,
                                  title: 'privacy',
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
              errorstate: () => const SizedBox(),
            );
          },
        ));
  }
}

class ProfileScreenContainer extends StatelessWidget {
  const ProfileScreenContainer({
    super.key,
    required this.size,
    required this.title,
    required this.icon,
  });

  final Size size;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.06,
          width: size.width - 20,
          child: Card(
            color: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: kcolorwhite,
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text(
                          title,
                          style: kfontstyle(color: kcolorwhite),
                        ),
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.forward,
                      color: kcolorwhite,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
