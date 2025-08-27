// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_conversation_Id_from_message_Id.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_conversation_id_from_message_idVars>
    _$ggetConversationIdFromMessageIdVarsSerializer =
    new _$Gget_conversation_id_from_message_idVarsSerializer();

class _$Gget_conversation_id_from_message_idVarsSerializer
    implements StructuredSerializer<Gget_conversation_id_from_message_idVars> {
  @override
  final Iterable<Type> types = const [
    Gget_conversation_id_from_message_idVars,
    _$Gget_conversation_id_from_message_idVars
  ];
  @override
  final String wireName = 'Gget_conversation_id_from_message_idVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_conversation_id_from_message_idVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GMessageInput)),
    ];

    return result;
  }

  @override
  Gget_conversation_id_from_message_idVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_conversation_id_from_message_idVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMessageInput))!
              as _i1.GMessageInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_conversation_id_from_message_idVars
    extends Gget_conversation_id_from_message_idVars {
  @override
  final _i1.GMessageInput input;

  factory _$Gget_conversation_id_from_message_idVars(
          [void Function(Gget_conversation_id_from_message_idVarsBuilder)?
              updates]) =>
      (new Gget_conversation_id_from_message_idVarsBuilder()..update(updates))
          ._build();

  _$Gget_conversation_id_from_message_idVars._({required this.input})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gget_conversation_id_from_message_idVars', 'input');
  }

  @override
  Gget_conversation_id_from_message_idVars rebuild(
          void Function(Gget_conversation_id_from_message_idVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_conversation_id_from_message_idVarsBuilder toBuilder() =>
      new Gget_conversation_id_from_message_idVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_conversation_id_from_message_idVars &&
        input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_conversation_id_from_message_idVars')
          ..add('input', input))
        .toString();
  }
}

class Gget_conversation_id_from_message_idVarsBuilder
    implements
        Builder<Gget_conversation_id_from_message_idVars,
            Gget_conversation_id_from_message_idVarsBuilder> {
  _$Gget_conversation_id_from_message_idVars? _$v;

  _i1.GMessageInputBuilder? _input;
  _i1.GMessageInputBuilder get input =>
      _$this._input ??= new _i1.GMessageInputBuilder();
  set input(_i1.GMessageInputBuilder? input) => _$this._input = input;

  Gget_conversation_id_from_message_idVarsBuilder();

  Gget_conversation_id_from_message_idVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_conversation_id_from_message_idVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_conversation_id_from_message_idVars;
  }

  @override
  void update(
      void Function(Gget_conversation_id_from_message_idVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_conversation_id_from_message_idVars build() => _build();

  _$Gget_conversation_id_from_message_idVars _build() {
    _$Gget_conversation_id_from_message_idVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_conversation_id_from_message_idVars._(
              input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_conversation_id_from_message_idVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
