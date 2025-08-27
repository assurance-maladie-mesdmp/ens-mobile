// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_send_message.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_messageVars> _$gsendMessageVarsSerializer =
    new _$Gsend_messageVarsSerializer();

class _$Gsend_messageVarsSerializer
    implements StructuredSerializer<Gsend_messageVars> {
  @override
  final Iterable<Type> types = const [Gsend_messageVars, _$Gsend_messageVars];
  @override
  final String wireName = 'Gsend_messageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gsend_messageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GSendResponseInput)),
    ];

    return result;
  }

  @override
  Gsend_messageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_messageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GSendResponseInput))!
              as _i1.GSendResponseInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageVars extends Gsend_messageVars {
  @override
  final _i1.GSendResponseInput input;

  factory _$Gsend_messageVars(
          [void Function(Gsend_messageVarsBuilder)? updates]) =>
      (new Gsend_messageVarsBuilder()..update(updates))._build();

  _$Gsend_messageVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gsend_messageVars', 'input');
  }

  @override
  Gsend_messageVars rebuild(void Function(Gsend_messageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageVarsBuilder toBuilder() =>
      new Gsend_messageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gsend_messageVars')
          ..add('input', input))
        .toString();
  }
}

class Gsend_messageVarsBuilder
    implements Builder<Gsend_messageVars, Gsend_messageVarsBuilder> {
  _$Gsend_messageVars? _$v;

  _i1.GSendResponseInputBuilder? _input;
  _i1.GSendResponseInputBuilder get input =>
      _$this._input ??= new _i1.GSendResponseInputBuilder();
  set input(_i1.GSendResponseInputBuilder? input) => _$this._input = input;

  Gsend_messageVarsBuilder();

  Gsend_messageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageVars;
  }

  @override
  void update(void Function(Gsend_messageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageVars build() => _build();

  _$Gsend_messageVars _build() {
    _$Gsend_messageVars _$result;
    try {
      _$result = _$v ?? new _$Gsend_messageVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
