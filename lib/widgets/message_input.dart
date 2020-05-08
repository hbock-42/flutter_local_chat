import 'package:flutter/material.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageInput extends StatefulWidget {
  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  String messageToSend;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: textEditingController,
                autocorrect: false,
                enableSuggestions: false,
                onChanged: (text) {
                  setState(() {
                    messageToSend = text;
                  });
                },
                decoration: InputDecoration(
                    labelText: "write something",
                    labelStyle: TextStyle(color: Colors.grey)),
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _sendMessageIfNotNullOrEmpty(),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessageIfNotNullOrEmpty() {
    if (messageToSend == null || messageToSend.isEmpty) return;
    context.bloc<ChatRoomBloc>().sendMessage(messageToSend);

    setState(() {
      messageToSend = "";
      textEditingController.clear();
    });
  }
}
