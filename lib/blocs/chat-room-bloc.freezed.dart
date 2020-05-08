// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat-room-bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatRoomEventTearOff {
  const _$ChatRoomEventTearOff();

  _SendMessage sendMessage(Message message) {
    return _SendMessage(
      message,
    );
  }

  _MessageReceived messageReceived(Message message) {
    return _MessageReceived(
      message,
    );
  }

  _JoinRoom joinRoom() {
    return const _JoinRoom();
  }

  _JoinExistingRoom joinExistingRoom(String host, int port) {
    return _JoinExistingRoom(
      host,
      port,
    );
  }

  _CreateRoom createRoom() {
    return const _CreateRoom();
  }

  _CloseRoom closeRoom() {
    return const _CloseRoom();
  }
}

// ignore: unused_element
const $ChatRoomEvent = _$ChatRoomEventTearOff();

mixin _$ChatRoomEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  });
}

abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res>;
}

class _$ChatRoomEventCopyWithImpl<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

  final ChatRoomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomEvent) _then;
}

abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

class __$SendMessageCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SendMessage(
      message == freezed ? _value.message : message as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage(this.message) : assert(message != null);

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatRoomEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatRoomEvent {
  const factory _SendMessage(Message message) = _$_SendMessage;

  Message get message;
  _$SendMessageCopyWith<_SendMessage> get copyWith;
}

abstract class _$MessageReceivedCopyWith<$Res> {
  factory _$MessageReceivedCopyWith(
          _MessageReceived value, $Res Function(_MessageReceived) then) =
      __$MessageReceivedCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

class __$MessageReceivedCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$MessageReceivedCopyWith<$Res> {
  __$MessageReceivedCopyWithImpl(
      _MessageReceived _value, $Res Function(_MessageReceived) _then)
      : super(_value, (v) => _then(v as _MessageReceived));

  @override
  _MessageReceived get _value => super._value as _MessageReceived;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_MessageReceived(
      message == freezed ? _value.message : message as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

class _$_MessageReceived implements _MessageReceived {
  const _$_MessageReceived(this.message) : assert(message != null);

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatRoomEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageReceived &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$MessageReceivedCopyWith<_MessageReceived> get copyWith =>
      __$MessageReceivedCopyWithImpl<_MessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ChatRoomEvent {
  const factory _MessageReceived(Message message) = _$_MessageReceived;

  Message get message;
  _$MessageReceivedCopyWith<_MessageReceived> get copyWith;
}

abstract class _$JoinRoomCopyWith<$Res> {
  factory _$JoinRoomCopyWith(_JoinRoom value, $Res Function(_JoinRoom) then) =
      __$JoinRoomCopyWithImpl<$Res>;
}

class __$JoinRoomCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$JoinRoomCopyWith<$Res> {
  __$JoinRoomCopyWithImpl(_JoinRoom _value, $Res Function(_JoinRoom) _then)
      : super(_value, (v) => _then(v as _JoinRoom));

  @override
  _JoinRoom get _value => super._value as _JoinRoom;
}

class _$_JoinRoom implements _JoinRoom {
  const _$_JoinRoom();

  @override
  String toString() {
    return 'ChatRoomEvent.joinRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _JoinRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return joinRoom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinRoom != null) {
      return joinRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinRoom != null) {
      return joinRoom(this);
    }
    return orElse();
  }
}

abstract class _JoinRoom implements ChatRoomEvent {
  const factory _JoinRoom() = _$_JoinRoom;
}

abstract class _$JoinExistingRoomCopyWith<$Res> {
  factory _$JoinExistingRoomCopyWith(
          _JoinExistingRoom value, $Res Function(_JoinExistingRoom) then) =
      __$JoinExistingRoomCopyWithImpl<$Res>;
  $Res call({String host, int port});
}

class __$JoinExistingRoomCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$JoinExistingRoomCopyWith<$Res> {
  __$JoinExistingRoomCopyWithImpl(
      _JoinExistingRoom _value, $Res Function(_JoinExistingRoom) _then)
      : super(_value, (v) => _then(v as _JoinExistingRoom));

  @override
  _JoinExistingRoom get _value => super._value as _JoinExistingRoom;

  @override
  $Res call({
    Object host = freezed,
    Object port = freezed,
  }) {
    return _then(_JoinExistingRoom(
      host == freezed ? _value.host : host as String,
      port == freezed ? _value.port : port as int,
    ));
  }
}

class _$_JoinExistingRoom implements _JoinExistingRoom {
  const _$_JoinExistingRoom(this.host, this.port)
      : assert(host != null),
        assert(port != null);

  @override
  final String host;
  @override
  final int port;

  @override
  String toString() {
    return 'ChatRoomEvent.joinExistingRoom(host: $host, port: $port)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinExistingRoom &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(port);

  @override
  _$JoinExistingRoomCopyWith<_JoinExistingRoom> get copyWith =>
      __$JoinExistingRoomCopyWithImpl<_JoinExistingRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return joinExistingRoom(host, port);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinExistingRoom != null) {
      return joinExistingRoom(host, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return joinExistingRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinExistingRoom != null) {
      return joinExistingRoom(this);
    }
    return orElse();
  }
}

abstract class _JoinExistingRoom implements ChatRoomEvent {
  const factory _JoinExistingRoom(String host, int port) = _$_JoinExistingRoom;

  String get host;
  int get port;
  _$JoinExistingRoomCopyWith<_JoinExistingRoom> get copyWith;
}

abstract class _$CreateRoomCopyWith<$Res> {
  factory _$CreateRoomCopyWith(
          _CreateRoom value, $Res Function(_CreateRoom) then) =
      __$CreateRoomCopyWithImpl<$Res>;
}

class __$CreateRoomCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$CreateRoomCopyWith<$Res> {
  __$CreateRoomCopyWithImpl(
      _CreateRoom _value, $Res Function(_CreateRoom) _then)
      : super(_value, (v) => _then(v as _CreateRoom));

  @override
  _CreateRoom get _value => super._value as _CreateRoom;
}

class _$_CreateRoom implements _CreateRoom {
  const _$_CreateRoom();

  @override
  String toString() {
    return 'ChatRoomEvent.createRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return createRoom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createRoom != null) {
      return createRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateRoom implements ChatRoomEvent {
  const factory _CreateRoom() = _$_CreateRoom;
}

abstract class _$CloseRoomCopyWith<$Res> {
  factory _$CloseRoomCopyWith(
          _CloseRoom value, $Res Function(_CloseRoom) then) =
      __$CloseRoomCopyWithImpl<$Res>;
}

class __$CloseRoomCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements _$CloseRoomCopyWith<$Res> {
  __$CloseRoomCopyWithImpl(_CloseRoom _value, $Res Function(_CloseRoom) _then)
      : super(_value, (v) => _then(v as _CloseRoom));

  @override
  _CloseRoom get _value => super._value as _CloseRoom;
}

class _$_CloseRoom implements _CloseRoom {
  const _$_CloseRoom();

  @override
  String toString() {
    return 'ChatRoomEvent.closeRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CloseRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(Message message),
    @required Result messageReceived(Message message),
    @required Result joinRoom(),
    @required Result joinExistingRoom(String host, int port),
    @required Result createRoom(),
    @required Result closeRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return closeRoom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result joinExistingRoom(String host, int port),
    Result createRoom(),
    Result closeRoom(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeRoom != null) {
      return closeRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result joinExistingRoom(_JoinExistingRoom value),
    @required Result createRoom(_CreateRoom value),
    @required Result closeRoom(_CloseRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(joinExistingRoom != null);
    assert(createRoom != null);
    assert(closeRoom != null);
    return closeRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result joinExistingRoom(_JoinExistingRoom value),
    Result createRoom(_CreateRoom value),
    Result closeRoom(_CloseRoom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeRoom != null) {
      return closeRoom(this);
    }
    return orElse();
  }
}

abstract class _CloseRoom implements ChatRoomEvent {
  const factory _CloseRoom() = _$_CloseRoom;
}

class _$ChatRoomStateTearOff {
  const _$ChatRoomStateTearOff();

  _Initial initial(ChatRoom chatRoom) {
    return _Initial(
      chatRoom,
    );
  }

  _Current current(ChatRoom chatRoom, int messageCount) {
    return _Current(
      chatRoom,
      messageCount,
    );
  }
}

// ignore: unused_element
const $ChatRoomState = _$ChatRoomStateTearOff();

mixin _$ChatRoomState {
  ChatRoom get chatRoom;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(ChatRoom chatRoom),
    @required Result current(ChatRoom chatRoom, int messageCount),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(ChatRoom chatRoom),
    Result current(ChatRoom chatRoom, int messageCount),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result current(_Current value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result current(_Current value),
    @required Result orElse(),
  });

  $ChatRoomStateCopyWith<ChatRoomState> get copyWith;
}

abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
  $Res call({ChatRoom chatRoom});

  $ChatRoomCopyWith<$Res> get chatRoom;
}

class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;

  @override
  $Res call({
    Object chatRoom = freezed,
  }) {
    return _then(_value.copyWith(
      chatRoom: chatRoom == freezed ? _value.chatRoom : chatRoom as ChatRoom,
    ));
  }

  @override
  $ChatRoomCopyWith<$Res> get chatRoom {
    if (_value.chatRoom == null) {
      return null;
    }
    return $ChatRoomCopyWith<$Res>(_value.chatRoom, (value) {
      return _then(_value.copyWith(chatRoom: value));
    });
  }
}

abstract class _$InitialCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({ChatRoom chatRoom});

  @override
  $ChatRoomCopyWith<$Res> get chatRoom;
}

class __$InitialCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object chatRoom = freezed,
  }) {
    return _then(_Initial(
      chatRoom == freezed ? _value.chatRoom : chatRoom as ChatRoom,
    ));
  }
}

class _$_Initial implements _Initial {
  const _$_Initial(this.chatRoom) : assert(chatRoom != null);

  @override
  final ChatRoom chatRoom;

  @override
  String toString() {
    return 'ChatRoomState.initial(chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatRoom);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(ChatRoom chatRoom),
    @required Result current(ChatRoom chatRoom, int messageCount),
  }) {
    assert(initial != null);
    assert(current != null);
    return initial(chatRoom);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(ChatRoom chatRoom),
    Result current(ChatRoom chatRoom, int messageCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(chatRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result current(_Current value),
  }) {
    assert(initial != null);
    assert(current != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result current(_Current value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatRoomState {
  const factory _Initial(ChatRoom chatRoom) = _$_Initial;

  @override
  ChatRoom get chatRoom;
  @override
  _$InitialCopyWith<_Initial> get copyWith;
}

abstract class _$CurrentCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) then) =
      __$CurrentCopyWithImpl<$Res>;
  @override
  $Res call({ChatRoom chatRoom, int messageCount});

  @override
  $ChatRoomCopyWith<$Res> get chatRoom;
}

class __$CurrentCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(_Current _value, $Res Function(_Current) _then)
      : super(_value, (v) => _then(v as _Current));

  @override
  _Current get _value => super._value as _Current;

  @override
  $Res call({
    Object chatRoom = freezed,
    Object messageCount = freezed,
  }) {
    return _then(_Current(
      chatRoom == freezed ? _value.chatRoom : chatRoom as ChatRoom,
      messageCount == freezed ? _value.messageCount : messageCount as int,
    ));
  }
}

class _$_Current implements _Current {
  const _$_Current(this.chatRoom, this.messageCount)
      : assert(chatRoom != null),
        assert(messageCount != null);

  @override
  final ChatRoom chatRoom;
  @override
  final int messageCount;

  @override
  String toString() {
    return 'ChatRoomState.current(chatRoom: $chatRoom, messageCount: $messageCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Current &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)) &&
            (identical(other.messageCount, messageCount) ||
                const DeepCollectionEquality()
                    .equals(other.messageCount, messageCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatRoom) ^
      const DeepCollectionEquality().hash(messageCount);

  @override
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(ChatRoom chatRoom),
    @required Result current(ChatRoom chatRoom, int messageCount),
  }) {
    assert(initial != null);
    assert(current != null);
    return current(chatRoom, messageCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(ChatRoom chatRoom),
    Result current(ChatRoom chatRoom, int messageCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (current != null) {
      return current(chatRoom, messageCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result current(_Current value),
  }) {
    assert(initial != null);
    assert(current != null);
    return current(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result current(_Current value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _Current implements ChatRoomState {
  const factory _Current(ChatRoom chatRoom, int messageCount) = _$_Current;

  @override
  ChatRoom get chatRoom;
  int get messageCount;
  @override
  _$CurrentCopyWith<_Current> get copyWith;
}
