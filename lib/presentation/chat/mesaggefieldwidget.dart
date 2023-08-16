import 'package:chatapp/buisnesslogic/bloc/messages/messages_bloc.dart';
import 'package:chatapp/constents/constents.dart';
import 'package:chatapp/data/models/message_model/message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class MessageFieldWidget extends StatefulWidget {
  final String tomail;
  final String uniqueid;
  const MessageFieldWidget(
      {super.key, required this.tomail, required this.uniqueid});

  @override
  State<MessageFieldWidget> createState() => _MessageFieldWidgetState();
}

final _messagecontroller = TextEditingController();

class _MessageFieldWidgetState extends State<MessageFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MessagesBloc, MessagesState>(
      listener: (context, state) {
        state.when(
          () => null,
          messagesendstate: () {},
          getmessagestate: (messagelist) {},
          errorstate: () {
            const Center(
              child: Text('something went wrong'),
            );
          },
          initial: () {},
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                controller: _messagecontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter message',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle icon button tap
            },
            icon: Icon(
              Iconsax.attach_circle,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<MessagesBloc>().add(
                    MessagesEvent.sendmessageevent(
                        message: MessageModel(
                            date: '${DateTime.now()}',
                            isSender: true,
                            message: _messagecontroller.text,
                            time:
                                '${DateTime.now().hour}:${DateTime.now().minute}',
                            toEmail: widget.tomail,
                            uid: FirebaseAuth.instance.currentUser!.uid,
                            chatid: widget.uniqueid,
                            fromuser: FirebaseAuth.instance.currentUser!.email!
                                .split('@')
                                .toList()[0]),
                        uniqueid: widget.uniqueid),
                  );
              _messagecontroller.clear();
            },
            icon: Icon(
              Iconsax.send1,
              color: primarycolor,
            ),
          ),
        ],
      ),
    );
  }
}
