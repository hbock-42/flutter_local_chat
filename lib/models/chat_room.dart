import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'chat_room.freezed.dart';

@freezed
abstract class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    @required List<Message> messages,
  }) = _ChatRoom;
}
