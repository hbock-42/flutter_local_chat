import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_chat/models/chat_room.dart';
import 'package:local_chat/models/message.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/io.dart';
import 'package:wifi/wifi.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

part 'chat-room-bloc.freezed.dart';

class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  ChatRoom _chatRoom = ChatRoom(messages: List<Message>());
  Stream _messageStream;

  @override
  get initialState => ChatRoomState.initial();

  @override
  Stream<ChatRoomState> mapEventToState(ChatRoomEvent event) async* {
    yield event.when(
      sendMessage: (message) =>
          ChatRoomState.current(_chatRoom, _messageStream),
      messageReceived: (message) {
        _chatRoom.messages.add(message);
        return ChatRoomState.current(_chatRoom, _messageStream);
      },
      joinRoom: () {
        return ChatRoomState.current(_chatRoom, _messageStream);
      },
      createRoom: () {
        _startServer();
        return ChatRoomState.initial();
      },
    );
  }

  void sendMessage(Message message) =>
      this.add(ChatRoomEvent.sendMessage(message));
  void messageReceived(Message message) =>
      this.add(ChatRoomEvent.messageReceived(message));
  void joinRoom() => this.add(ChatRoomEvent.joinRoom());
  void createRoom() => this.add(ChatRoomEvent.createRoom());

  Future _connectToServer({@required String host, int port = 8080}) async {
    print(host);
    print(port);
    IOWebSocketChannel channel =
        IOWebSocketChannel.connect("ws://$host:${port.toString()}");
    _messageStream = channel.stream;
    // channel.stream.listen((message) {
    //   messageReceived(Message(content: message, type: MessageType.Received));
    //   print("received: " + message);
    // });
  }

  Future _startServer() async {
    var handler = webSocketHandler((webSocket) {
      _messageStream = webSocket.stream;
      joinRoom();
      // webSocket.stream.listen((message) {
      //   print("message received:" + message);
      //   messageReceived(Message(content: message, type: MessageType.Received));
      // });
    });
    String ip = await Wifi.ip;
    shelf_io.serve(handler, ip, 8080).then((server) {
      print('Serving at ws://${server.address.host}:${server.port}');
    });
  }
}

@freezed
abstract class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.sendMessage(Message message) = _SendMessage;
  const factory ChatRoomEvent.messageReceived(Message message) =
      _MessageReceived;
  const factory ChatRoomEvent.joinRoom() = _JoinRoom;
  const factory ChatRoomEvent.createRoom() = _CreateRoom;
}

@freezed
abstract class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.current(ChatRoom chatRoom, Stream stream) =
      _Current;
}
