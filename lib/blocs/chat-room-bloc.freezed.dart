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

  _CreateRoom createRoom() {
    return const _CreateRoom();
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
    @required Result createRoom(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result createRoom(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(_SendMessage value),
    @required Result messageReceived(_MessageReceived value),
    @required Result joinRoom(_JoinRoom value),
    @required Result createRoom(_CreateRoom value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result createRoom(_CreateRoom value),
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
    @required Result createRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result createRoom(),
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
    @required Result createRoom(_CreateRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result createRoom(_CreateRoom value),
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
    @required Result createRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result createRoom(),
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
    @required Result createRoom(_CreateRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result createRoom(_CreateRoom value),
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
    @required Result createRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return joinRoom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result createRoom(),
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
    @required Result createRoom(_CreateRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result createRoom(_CreateRoom value),
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
    @required Result createRoom(),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return createRoom();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(Message message),
    Result messageReceived(Message message),
    Result joinRoom(),
    Result createRoom(),
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
    @required Result createRoom(_CreateRoom value),
  }) {
    assert(sendMessage != null);
    assert(messageReceived != null);
    assert(joinRoom != null);
    assert(createRoom != null);
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(_SendMessage value),
    Result messageReceived(_MessageReceived value),
    Result joinRoom(_JoinRoom value),
    Result createRoom(_CreateRoom value),
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

class _$ChatRoomStateTearOff {
  const _$ChatRoomStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Current current(ChatRoom chatRoom, Stream<dynamic> stream) {
    return _Current(
      chatRoom,
      stream,
    );
  }
}

// ignore: unused_element
const $ChatRoomState = _$ChatRoomStateTearOff();

mixin _$ChatRoomState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result current(ChatRoom chatRoom, Stream<dynamic> stream),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result current(ChatRoom chatRoom, Stream<dynamic> stream),
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
}

abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
}

class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatRoomState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result current(ChatRoom chatRoom, Stream<dynamic> stream),
  }) {
    assert(initial != null);
    assert(current != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result current(ChatRoom chatRoom, Stream<dynamic> stream),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
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
  const factory _Initial() = _$_Initial;
}

abstract class _$CurrentCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) then) =
      __$CurrentCopyWithImpl<$Res>;
  $Res call({ChatRoom chatRoom, Stream<dynamic> stream});

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
    Object stream = freezed,
  }) {
    return _then(_Current(
      chatRoom == freezed ? _value.chatRoom : chatRoom as ChatRoom,
      stream == freezed ? _value.stream : stream as Stream<dynamic>,
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

class _$_Current implements _Current {
  const _$_Current(this.chatRoom, this.stream)
      : assert(chatRoom != null),
        assert(stream != null);

  @override
  final ChatRoom chatRoom;
  @override
  final Stream<dynamic> stream;

  @override
  String toString() {
    return 'ChatRoomState.current(chatRoom: $chatRoom, stream: $stream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Current &&
            (identical(other.chatRoom, chatRoom) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoom, chatRoom)) &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatRoom) ^
      const DeepCollectionEquality().hash(stream);

  @override
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result current(ChatRoom chatRoom, Stream<dynamic> stream),
  }) {
    assert(initial != null);
    assert(current != null);
    return current(chatRoom, stream);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result current(ChatRoom chatRoom, Stream<dynamic> stream),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (current != null) {
      return current(chatRoom, stream);
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
  const factory _Current(ChatRoom chatRoom, Stream<dynamic> stream) =
      _$_Current;

  ChatRoom get chatRoom;
  Stream<dynamic> get stream;
  _$CurrentCopyWith<_Current> get copyWith;
}
