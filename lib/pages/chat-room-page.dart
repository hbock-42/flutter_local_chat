import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/widgets/message-widget.dart';

class ChatRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(children: [
            buildHeader(context),
            Expanded(child: buildMessages()),
            buildInput(),
          ])
        ],
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

  Widget buildMessages() {
    return BlocBuilder<ChatRoomBloc, ChatRoomState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(
            child: Text("The is no messages yet ..."),
          ),
          current: (room, _) {
            return ListView(
              children: room.messages
                  .map((message) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8),
                        child: MessageWidget(message: message),
                      ))
                  .toList(),
            );
          },
        );
      },
    );
  }

  Widget buildInput() {
    return Container(color: Colors.red, child: Text("input"));
  }
}
