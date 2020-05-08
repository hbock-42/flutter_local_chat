import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/mocks/chat-room-injector.dart';
import 'package:local_chat/models/chat_room.dart';
import 'package:local_chat/models/message.dart';
import 'package:local_chat/widgets/message-widget.dart';

class ChatRoomPage extends StatefulWidget {
  // final ChatRoom _chatRoom = ChatRoomInjector.chatRoom;
  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  ChatRoom _chatRoom;

  @override
  void initState() {
    super.initState();
    _chatRoom = ChatRoom(messages: []);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatRoomBloc, ChatRoomState>(
      listener: (BuildContext context, ChatRoomState state) {
        print("LOLO");
        state.when(
          initial: () => {},
          current: (chatRoom) {},
        );
      },
      child: Container(
        child: Stack(
          children: [
            Column(children: [
              buildHeader(context),
              buildMessages(_chatRoom.messages),
            ])
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.2),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [Text('header text')]),
      ),
    );
  }

  Widget buildMessages(List<Message> messages) {
    return Expanded(
      child: ListView(
          children: messages
              .map((message) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: MessageWidget(message: message),
                  ))
              .toList()),
    );
  }
}
