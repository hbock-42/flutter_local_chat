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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                autocorrect: false,
                enableSuggestions: false,
                onChanged: (text) {
                  setState(() {
                    host = text;
                  });
                },
                decoration: InputDecoration(
                    labelText: "ip", labelStyle: TextStyle(color: Colors.grey)),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              TextField(
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
              SizedBox(height: 40),
              Button(
                "Try connect",
                onTap: () => tryConnect(context),
                color: Colors.black.withOpacity(0.6),
              ),
            ],
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: BackButton(color: Colors.white),
              )),
        ],
      ),
    );
  }

  void tryConnect(BuildContext context) {
    context.bloc<ChatRoomBloc>().joinExistingRoom(host, port);
    Navigator.pushNamed(context, '/chat-room');
  }
}
