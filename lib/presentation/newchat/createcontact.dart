import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/presentation/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _contactformkey,
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
                onPressed: () {},
                child: Text(
                  'create',
                  style: kfontstyle(color: kcolorwhite),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
