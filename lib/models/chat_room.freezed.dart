// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatRoomTearOff {
  const _$ChatRoomTearOff();

  _ChatRoom call({@required List<Message> messages}) {
    return _ChatRoom(
      messages: messages,
    );
  }
}

// ignore: unused_element
const $ChatRoom = _$ChatRoomTearOff();

mixin _$ChatRoom {
  List<Message> get messages;

  $ChatRoomCopyWith<ChatRoom> get copyWith;
}

abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call({List<Message> messages});
}

class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

abstract class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) then) =
      __$ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call({List<Message> messages});
}

class __$ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(_ChatRoom _value, $Res Function(_ChatRoom) _then)
      : super(_value, (v) => _then(v as _ChatRoom));

  @override
  _ChatRoom get _value => super._value as _ChatRoom;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_ChatRoom(
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

class _$_ChatRoom implements _ChatRoom {
  const _$_ChatRoom({@required this.messages}) : assert(messages != null);

  @override
  final List<Message> messages;

  @override
  String toString() {
    return 'ChatRoom(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatRoom &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom({@required List<Message> messages}) = _$_ChatRoom;

  @override
  List<Message> get messages;
  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith;
}
