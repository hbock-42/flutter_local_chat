import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/widgets/message-widget.dart';
import 'package:local_chat/widgets/message_input.dart';
import 'package:local_chat/widgets/message_list.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ChatRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(children: [
            buildHeader(context),
            Expanded(child: MessageList()),
            buildInput(),
          ])
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return BlocBuilder<ChatRoomBloc, ChatRoomState>(
      builder: (context, state) => Container(
        color: Colors.white.withOpacity(0.2),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('header text'),
              state.when(
                  initial: (room) => _buildRoomInfos(room.host, room.port),
                  current: (room, _) => _buildRoomInfos(room.host, room.port)),
              buildLeaveButton(context),
              SizedBox(width: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoomInfos(String host, int port) {
    return Expanded(
        child: Text(
      "$host:$port",
      textAlign: TextAlign.center,
    ));
  }

  Widget buildLeaveButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.bloc<ChatRoomBloc>().closeRoom();
        Navigator.maybePop(context);
      },
      child: Container(
          color: Colors.transparent,
          child: IconTheme.merge(
            data: IconThemeData(
              size: 18,
              color: Colors.white,
            ),
            child: BackButtonIcon(),
          )),
    );
  }

  Widget buildInput() {
    return MessageInput();
  }
}
