import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/widgets/button.dart';
import 'package:local_chat/widgets/join_chat_room_inputs.dart';

import '../app-theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showInputs = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OpenContainer(
          transitionType: ContainerTransitionType.fadeThrough,
          transitionDuration: Duration(milliseconds: 800),
          closedColor: Colors.transparent,
          openColor: AppTheme.widgetBackgroundColor,
          closedBuilder: (BuildContext context, void Function() action) =>
              IgnorePointer(
            child: Button(
              "Join chat room",
              onTap: () {
                setState(() {
                  showInputs = !showInputs;
                });
              },
            ),
          ),
          openBuilder: (BuildContext context, void Function() action) =>
              JoinChatRoomInputs(),
        ),
        // if (showInputs) ...buildInputs(),
        SizedBox(height: 14),
        Button(
          "Create chat room",
          onTap: () {
            context.bloc<ChatRoomBloc>().createRoom();
            Navigator.pushNamed(context, '/chat-room');
          },
        ),
      ],
    );
  }

  List<Widget> buildInputs() {
    return [SizedBox(height: 14), JoinChatRoomInputs()];
  }
}
