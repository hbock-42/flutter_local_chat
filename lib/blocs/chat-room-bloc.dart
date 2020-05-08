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
  Sink sink;

  @override
  get initialState => ChatRoomState.initial();

  @override
  Stream<ChatRoomState> mapEventToState(ChatRoomEvent event) async* {
    yield event.when(
      sendMessage: (message) {
        _chatRoom.messages.add(message);
        sink?.add(message.content);
        return ChatRoomState.current(_chatRoom, _chatRoom.messageCount);
      },
      messageReceived: (message) {
        _chatRoom.messages.add(message);
        return ChatRoomState.current(_chatRoom, _chatRoom.messageCount);
      },
      joinRoom: () {
        return ChatRoomState.current(_chatRoom, _chatRoom.messageCount);
      },
      joinExistingRoom: (String host, int port) {
        _connectToServer(host: host, port: port);
        return ChatRoomState.current(_chatRoom, _chatRoom.messageCount);
      },
      createRoom: () {
        _startServer();
        return ChatRoomState.initial();
      },
    );
  }

  void sendMessage(String text) => this.add(ChatRoomEvent.sendMessage(
      Message(content: text, type: MessageType.Sent)));
  void messageReceived(Message message) =>
      this.add(ChatRoomEvent.messageReceived(message));
  void joinRoom() => this.add(ChatRoomEvent.joinRoom());
  void joinExistingRoom(String host, int port) =>
      this.add(ChatRoomEvent.joinExistingRoom(host, port));
  void createRoom() => this.add(ChatRoomEvent.createRoom());

  void _connectToServer({@required String host, int port = 8080}) {
    print(host);
    print(port);
    IOWebSocketChannel channel =
        IOWebSocketChannel.connect("ws://$host:${port.toString()}");
    sink = channel.sink;
    channel.stream.listen((message) {
      _onMessageReceived(message);
      print("received: " + message);
    });
  }

  void _onMessageReceived(String text) {
    var message = Message(content: text, type: MessageType.Received);
    messageReceived(message);
  }

  Future _startServer() async {
    var handler = webSocketHandler((webSocket) {
      joinRoom();
      sink = webSocket.sink;
      webSocket.stream.listen((message) {
        _onMessageReceived(message);
      });
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
  const factory ChatRoomEvent.joinExistingRoom(String host, int port) =
      _JoinExistingRoom;
  const factory ChatRoomEvent.createRoom() = _CreateRoom;
}

@freezed
abstract class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = _Initial;
  const factory ChatRoomState.current(ChatRoom chatRoom, int messageCount) =
      _Current;
}
