import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'message-widget.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  AutoScrollController controller = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatRoomBloc, ChatRoomState>(
      listener: (context, state) => state.when(
          current: (room, messageCount) =>
              scrollToEndAfterBuild(messageCount - 1),
          initial: (room) => scrollToEndAfterBuild(room.messageCount - 1)),
      builder: (context, state) {
        return state.when(
          initial: (room) => Container(
            child: Center(child: Text("The is no messages yet ...")),
          ),
          current: (room, _) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: room.messageCount,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return AutoScrollTag(
                  controller: controller,
                  index: index,
                  key: ValueKey(index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: MessageWidget(message: room.messages[index]),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void scrollToEndAfterBuild(int index) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.scrollToIndex(index, preferPosition: AutoScrollPosition.end);
    });
  }
}
