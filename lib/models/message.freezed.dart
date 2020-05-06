// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call({@required String content, @required MessageType type}) {
    return _Message(
      content: content,
      type: type,
    );
  }
}

// ignore: unused_element
const $Message = _$MessageTearOff();

mixin _$Message {
  String get content;
  MessageType get type;

  $MessageCopyWith<Message> get copyWith;
}

abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call({String content, MessageType type});
}

class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object content = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed ? _value.content : content as String,
      type: type == freezed ? _value.type : type as MessageType,
    ));
  }
}

abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call({String content, MessageType type});
}

class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object content = freezed,
    Object type = freezed,
  }) {
    return _then(_Message(
      content: content == freezed ? _value.content : content as String,
      type: type == freezed ? _value.type : type as MessageType,
    ));
  }
}

class _$_Message implements _Message {
  const _$_Message({@required this.content, @required this.type})
      : assert(content != null),
        assert(type != null);

  @override
  final String content;
  @override
  final MessageType type;

  @override
  String toString() {
    return 'Message(content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {@required String content, @required MessageType type}) = _$_Message;

  @override
  String get content;
  @override
  MessageType get type;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
