import 'package:flutter/material.dart';
import 'package:local_chat/app-theme.dart';
import 'package:local_chat/models/message.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  const MessageWidget({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: message.type == MessageType.Received
            ? Alignment.topLeft
            : Alignment.topRight,
        child: _messageContainer(message));
  }

  Widget _messageContainer(Message message) {
    double radiusValue = 10;
    var decoration = message.type == MessageType.Received
        ? BoxDecoration(
            color: AppTheme.widgetBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(radiusValue),
              bottomRight: Radius.circular(radiusValue),
              bottomLeft: Radius.circular(radiusValue),
            ),
          )
        : BoxDecoration(
            gradient: AppTheme.widgetBackroundGradient,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(radiusValue),
              topLeft: Radius.circular(radiusValue),
              bottomLeft: Radius.circular(radiusValue),
            ),
          );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: decoration,
      child: Text(message.content),
    );
  }
}
