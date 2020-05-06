import 'package:flutter/material.dart';
import 'package:local_chat/models/message.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  const MessageWidget({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: message.type == MessageType.Received
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Text(message.content));
  }
}
