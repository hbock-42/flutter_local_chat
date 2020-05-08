import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_chat/app-theme.dart';
import 'package:local_chat/blocs/chat-room-bloc.dart';
import 'package:local_chat/pages/chat-room-page.dart';

import 'models/chat_room.dart';
import 'models/message.dart';
import 'pages/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var chatRoom1 = ChatRoom(messages: List<Message>());
    var chatRoom2 = ChatRoom(messages: List<Message>());
    chatRoom1.messages
        .add(Message(content: "hello", type: MessageType.Received));
    var chatRoomStateCurrent1 = ChatRoomState.current(chatRoom1);
    var chatRoomStateCurrent2 = ChatRoomState.current(chatRoom2);

    print("state are equal ? : " +
        (chatRoomStateCurrent1 == chatRoomStateCurrent2).toString());

    return BlocProvider<ChatRoomBloc>(
      create: (BuildContext context) => ChatRoomBloc(),
      child: MaterialApp(
        title: 'Local Chat',
        initialRoute: '/',
        routes: {
          '/': (context) => myMaterial(child: HomePage()),
          '/chat-room': (context) => myMaterial(child: ChatRoomPage()),
        },
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: AppTheme.mainText.fontFamily,
                  bodyColor: AppTheme.mainText.color,
                  displayColor: AppTheme.mainText.color,
                )),
      ),
    );
  }

  Widget myMaterial({Widget child}) => Material(
        color: AppTheme.backgroundColor,
        child: child,
      );
}
