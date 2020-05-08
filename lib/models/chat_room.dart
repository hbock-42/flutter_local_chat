import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'chat_room.freezed.dart';

@freezed
abstract class ChatRoom implements _$ChatRoom {
  const ChatRoom._();
  const factory ChatRoom({
    @required List<Message> messages,
  }) = _ChatRoom;

  int get messageCount => messages.length;
}
