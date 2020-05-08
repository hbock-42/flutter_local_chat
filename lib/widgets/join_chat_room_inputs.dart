import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';

import '../app-theme.dart';
import 'button.dart';

class JoinChatRoomInputs extends StatefulWidget {
  @override
  _JoinChatRoomInputsState createState() => _JoinChatRoomInputsState();
}

class _JoinChatRoomInputsState extends State<JoinChatRoomInputs> {
  String host;
  int port;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppTheme.widgetBackgroundColor,
            borderRadius: BorderRadius.circular(200)),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    autocorrect: false,
                    enableSuggestions: false,
                    onChanged: (text) {
                      setState(() {
                        host = text;
                      });
                    },
                    decoration: InputDecoration(
                        labelText: "ip",
                        labelStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    autocorrect: false,
                    enableSuggestions: false,
                    onChanged: (text) {
                      setState(() {
                        port = int.parse(text);
                      });
                    },
                    decoration: InputDecoration(
                        labelText: "port",
                        labelStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Button("Try connect", onTap: () => tryConnect(context)),
          ],
        ),
      ),
    );
  }

  void tryConnect(BuildContext context) {
    context.bloc<ChatRoomBloc>().joinExistingRoom(host, port);
    Navigator.pushNamed(context, '/chat-room');
  }
}
