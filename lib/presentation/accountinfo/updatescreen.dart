import 'dart:io';

import 'package:chatapp/buisnesslogic/bloc/updateprofile/updateprofile_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class UpdateProfileScreen extends StatelessWidget {
  final String username;
  final String profileimage;
  const UpdateProfileScreen(
      {super.key, required this.username, required this.profileimage});

  @override
  Widget build(BuildContext context) {
    context
        .read<UpdateprofileBloc>()
        .add(const UpdateprofileEvent.resetimage(imageurl: ''));
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
        backgroundColor: primarycolor,
        title: Text(
          'Edit Profile',
          style: kfontstyle(color: kcolorwhite),
        ),
      ),
      body: BlocBuilder<UpdateprofileBloc, UpdateprofileState>(
        builder: (context, state) {
          return state.when(
            () => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<UpdateprofileBloc>().add(
                              const UpdateprofileEvent.pickimageevent(
                                  imageurl: ''));
                        },
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: profileimage == 'no-img'
                                ? Image.asset('assets/images/profiletemp.jpg')
                                : Image.network(
                                    profileimage,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Select Image',
                      style: kfontstyle(color: secondarycolor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: secondarycolor,
                      onPressed: () {},
                      child: Text(
                        'Update',
                        style: kfontstyle(color: kcolorwhite),
                      ),
                    )
                  ],
                )
              ],
            ),
            imagePickedstate: (imageurl) => Column(
              children: [
                InkWell(
                  onTap: () {
                    context.read<UpdateprofileBloc>().add(
                        const UpdateprofileEvent.pickimageevent(imageurl: ''));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: imageurl == 'no-img'
                                ? Image.asset('assets/images/profiletemp.jpg')
                                : Image.file(
                                    File(imageurl),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Select Image',
                      style: kfontstyle(color: secondarycolor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: secondarycolor,
                      onPressed: () {
                        context.read<UpdateprofileBloc>().add(
                            UpdateprofileEvent.updateevent(
                                imageurl: imageurl, username: username));
                        ScaffoldMessenger.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.green,
                              content: Row(
                                children: [
                                  const Icon(
                                    Iconsax.info_circle,
                                    color: kcolorwhite,
                                  ),
                                  Text(
                                    'profile Updated',
                                    style: kfontstyle(color: kcolorwhite),
                                  ),
                                ],
                              ),
                            ),
                          );
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Update',
                        style: kfontstyle(color: kcolorwhite),
                      ),
                    )
                  ],
                )
              ],
            ),
            updatedstate: (imageurl, username) {
              return const Center();
            },
            failedstate: () {
              return const Center();
            },
          );
        },
      ),
    );
  }
}
