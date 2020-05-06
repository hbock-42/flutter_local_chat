import 'package:flutter/material.dart';
import 'package:local_chat/mocks/chat-room-injector.dart';
import 'package:local_chat/models/chat_room.dart';
import 'package:local_chat/models/message.dart';
import 'package:local_chat/widgets/message-widget.dart';

class ChatRoomPage extends StatelessWidget {
  final ChatRoom chatRoom = ChatRoomInjector.chatRoom;

  @override
  Widget build(BuildContext context) {
    return Container(
      // todo: remove color
      color: Colors.red,
      child: Stack(children: [
        Column(children: [
          buildHeader(context),
          buildMessages(chatRoom.messages),
        ])
      ]),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.2),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(children: [Text("hello")]),
    );
  }

  Widget buildMessages(List<Message> messages) {
    return Column(
        children: messages
            .map((message) => MessageWidget(message: message))
            .toList());
  }
}
