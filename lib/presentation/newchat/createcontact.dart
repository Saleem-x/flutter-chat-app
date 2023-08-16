import 'package:chatapp/buisnesslogic/bloc/getcontacts/getcontacts_bloc.dart';
import 'package:chatapp/buisnesslogic/cubit/createcontact/createchat_cubit.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/createuser/createuser.dart';
import 'package:chatapp/presentation/widgets/textfieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

final _namecontroller = TextEditingController();
final _emailcontroller = TextEditingController();
final _contactformkey = GlobalKey<FormState>();

class _CreateContactState extends State<CreateContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'create contact',
          style: kfontstyle(),
        ),
        leading: IconButton(
            onPressed: () {
              _namecontroller.clear();
              _emailcontroller.clear();
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: kcolorblack,
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _contactformkey,
          child: BlocListener<CreatechatCubit, CreatechatState>(
            listener: (context, state) {
              state.when(
                () => null,
                successstate: () {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content: Row(
                          children: [
                            const Icon(
                              Icons.info,
                              color: kcolorwhite,
                            ),
                            Text(
                              'contact created successfully',
                              style: kfontstyle(),
                            ),
                          ],
                        ),
                      ),
                    );

                  context
                      .read<GetcontactsBloc>()
                      .add(const GetcontactsEvent.getAllContacts());
                  _emailcontroller.clear();
                  _namecontroller.clear();
                  Navigator.pop(context);
                },
                failedstate: () {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Row(
                          children: [
                            const Icon(
                              Icons.info,
                              color: kcolorwhite,
                            ),
                            Text(
                              'contact creation failed',
                              style: kfontstyle(),
                            ),
                          ],
                        ),
                      ),
                    );
                },
              );
            },
            child: Column(
              children: [
                TextFieldWidget(
                    label: 'Name',
                    ispass: false,
                    controller: _namecontroller,
                    type: TextInputType.name),
                TextFieldWidget(
                    label: 'email',
                    ispass: false,
                    controller: _emailcontroller,
                    type: TextInputType.name),
                MaterialButton(
                  color: primarycolor,
                  onPressed: () {
                    context.read<CreatechatCubit>().creatcontact(
                          Createuser(
                              username: _namecontroller.text,
                              email: _emailcontroller.text,
                              profileimg: 'no-img'),
                        );
                  },
                  child: Text(
                    'create',
                    style: kfontstyle(color: kcolorwhite),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
