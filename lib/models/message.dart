import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    @required String content,
    @required MessageType type,
  }) = _Message;
}

enum MessageType {
  Sent,
  Received,
}
