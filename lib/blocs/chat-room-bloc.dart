import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_chat/models/chat_room.dart';
import 'package:local_chat/models/message.dart';

part 'chat-room-bloc.freezed.dart';

class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  // todo: add constructor with stream<dynamic> received from a client IOWebSocketChannel
  // or server webSocketHandler

  ChatRoom _chatRoom = ChatRoom(messages: List<Message>());

  @override
  get initialState => ChatRoomState.initial();

  @override
  Stream<ChatRoomState> mapEventToState(ChatRoomEvent event) async* {
    yield event.when(
      sendMessage: (message) => ChatRoomState.current(_chatRoom),
      messageReceived: (message) => ChatRoomState.current(_chatRoom),
    );
  }

  void sendMessage(Message message) =>
      this.add(ChatRoomEvent.sendMessage(message));
  void messageReceived(Message message) =>
      this.add(ChatRoomEvent.messageReceived(message));
}

@freezed
abstract class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.sendMessage(Message message) = _SendMessage;
  const factory ChatRoomEvent.messageReceived(Message message) =
      _MessageReceived;
}

@freezed
abstract class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.current(ChatRoom chatRoom) = _Current;
}
