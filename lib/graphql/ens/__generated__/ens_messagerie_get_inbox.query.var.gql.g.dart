// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_inbox.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_inboxVars> _$ggetInboxVarsSerializer =
    new _$Gget_inboxVarsSerializer();

class _$Gget_inboxVarsSerializer
    implements StructuredSerializer<Gget_inboxVars> {
  @override
  final Iterable<Type> types = const [Gget_inboxVars, _$Gget_inboxVars];
  @override
  final String wireName = 'Gget_inboxVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_inboxVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GMessagingPageableInput)),
    ];

    return result;
  }

  @override
  Gget_inboxVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_inboxVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMessagingPageableInput))!
              as _i1.GMessagingPageableInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_inboxVars extends Gget_inboxVars {
  @override
  final _i1.GMessagingPageableInput input;

  factory _$Gget_inboxVars([void Function(Gget_inboxVarsBuilder)? updates]) =>
      (new Gget_inboxVarsBuilder()..update(updates))._build();

  _$Gget_inboxVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gget_inboxVars', 'input');
  }

  @override
  Gget_inboxVars rebuild(void Function(Gget_inboxVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_inboxVarsBuilder toBuilder() =>
      new Gget_inboxVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_inboxVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gget_inboxVars')..add('input', input))
        .toString();
  }
}

class Gget_inboxVarsBuilder
    implements Builder<Gget_inboxVars, Gget_inboxVarsBuilder> {
  _$Gget_inboxVars? _$v;

  _i1.GMessagingPageableInputBuilder? _input;
  _i1.GMessagingPageableInputBuilder get input =>
      _$this._input ??= new _i1.GMessagingPageableInputBuilder();
  set input(_i1.GMessagingPageableInputBuilder? input) => _$this._input = input;

  Gget_inboxVarsBuilder();

  Gget_inboxVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_inboxVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_inboxVars;
  }

  @override
  void update(void Function(Gget_inboxVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_inboxVars build() => _build();

  _$Gget_inboxVars _build() {
    _$Gget_inboxVars _$result;
    try {
      _$result = _$v ?? new _$Gget_inboxVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_inboxVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
