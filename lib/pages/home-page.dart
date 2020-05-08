import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/widgets/button.dart';
import 'package:local_chat/widgets/join_chat_room_inputs.dart';

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
        Button(
          "Join chat room",
          onTap: () {
            setState(() {
              showInputs = !showInputs;
            });
          },
        ),
        if (showInputs) ...buildInputs(),
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
