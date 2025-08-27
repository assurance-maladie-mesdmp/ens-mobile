// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_messages.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_messagesVars> _$ggetMessagesVarsSerializer =
    new _$Gget_messagesVarsSerializer();

class _$Gget_messagesVarsSerializer
    implements StructuredSerializer<Gget_messagesVars> {
  @override
  final Iterable<Type> types = const [Gget_messagesVars, _$Gget_messagesVars];
  @override
  final String wireName = 'Gget_messagesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_messagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GMessagingInput)),
    ];

    return result;
  }

  @override
  Gget_messagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMessagingInput))!
              as _i1.GMessagingInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesVars extends Gget_messagesVars {
  @override
  final _i1.GMessagingInput input;

  factory _$Gget_messagesVars(
          [void Function(Gget_messagesVarsBuilder)? updates]) =>
      (new Gget_messagesVarsBuilder()..update(updates))._build();

  _$Gget_messagesVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gget_messagesVars', 'input');
  }

  @override
  Gget_messagesVars rebuild(void Function(Gget_messagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesVarsBuilder toBuilder() =>
      new Gget_messagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gget_messagesVars')
          ..add('input', input))
        .toString();
  }
}

class Gget_messagesVarsBuilder
    implements Builder<Gget_messagesVars, Gget_messagesVarsBuilder> {
  _$Gget_messagesVars? _$v;

  _i1.GMessagingInputBuilder? _input;
  _i1.GMessagingInputBuilder get input =>
      _$this._input ??= new _i1.GMessagingInputBuilder();
  set input(_i1.GMessagingInputBuilder? input) => _$this._input = input;

  Gget_messagesVarsBuilder();

  Gget_messagesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_messagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesVars;
  }

  @override
  void update(void Function(Gget_messagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesVars build() => _build();

  _$Gget_messagesVars _build() {
    _$Gget_messagesVars _$result;
    try {
      _$result = _$v ?? new _$Gget_messagesVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_messagesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
