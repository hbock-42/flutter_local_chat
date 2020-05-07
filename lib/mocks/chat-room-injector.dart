import 'package:local_chat/models/chat_room.dart';
import 'package:local_chat/models/message.dart';

class ChatRoomInjector {
  static ChatRoom chatRoom = ChatRoom(messages: [
    Message(content: "Hello", type: MessageType.Received),
    Message(content: "Hello you", type: MessageType.Sent),
    Message(content: "How are you", type: MessageType.Received),
    Message(content: "My friend", type: MessageType.Received),
    Message(content: "Hello", type: MessageType.Received),
    Message(content: "Hello you", type: MessageType.Sent),
    Message(content: "How are you", type: MessageType.Received),
    Message(content: "My friend", type: MessageType.Received),
    Message(content: "Hello", type: MessageType.Received),
    Message(content: "Hello you", type: MessageType.Sent),
    Message(content: "How are you", type: MessageType.Received),
    Message(content: "My friend", type: MessageType.Received),
    Message(content: "Hello", type: MessageType.Received),
    Message(content: "Hello you", type: MessageType.Sent),
    Message(content: "How are you", type: MessageType.Received),
    Message(content: "My friend", type: MessageType.Received),
  ]);
}
