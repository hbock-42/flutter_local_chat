import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/widgets/button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Button(
          "Join chat room",
          onTap: () {
            print("joining");
            context.bloc<ChatRoomBloc>().joinRoom();
            Navigator.pushNamed(context, '/chat-room');
          },
        ),
        SizedBox(height: 14),
        Button(
          "Create chat room",
          onTap: () {
            print("creating");
            context.bloc<ChatRoomBloc>().createRoom();
            Navigator.pushNamed(context, '/chat-room');
          },
        ),
      ],
    );
  }
}
