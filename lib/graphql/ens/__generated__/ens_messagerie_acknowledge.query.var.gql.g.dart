// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_acknowledge.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GacknowledgeVars> _$gacknowledgeVarsSerializer =
    new _$GacknowledgeVarsSerializer();

class _$GacknowledgeVarsSerializer
    implements StructuredSerializer<GacknowledgeVars> {
  @override
  final Iterable<Type> types = const [GacknowledgeVars, _$GacknowledgeVars];
  @override
  final String wireName = 'GacknowledgeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GacknowledgeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GAcknowledgeInput)),
    ];

    return result;
  }

  @override
  GacknowledgeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacknowledgeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAcknowledgeInput))!
              as _i1.GAcknowledgeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GacknowledgeVars extends GacknowledgeVars {
  @override
  final _i1.GAcknowledgeInput input;

  factory _$GacknowledgeVars(
          [void Function(GacknowledgeVarsBuilder)? updates]) =>
      (new GacknowledgeVarsBuilder()..update(updates))._build();

  _$GacknowledgeVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GacknowledgeVars', 'input');
  }

  @override
  GacknowledgeVars rebuild(void Function(GacknowledgeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacknowledgeVarsBuilder toBuilder() =>
      new GacknowledgeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacknowledgeVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GacknowledgeVars')
          ..add('input', input))
        .toString();
  }
}

class GacknowledgeVarsBuilder
    implements Builder<GacknowledgeVars, GacknowledgeVarsBuilder> {
  _$GacknowledgeVars? _$v;

  _i1.GAcknowledgeInputBuilder? _input;
  _i1.GAcknowledgeInputBuilder get input =>
      _$this._input ??= new _i1.GAcknowledgeInputBuilder();
  set input(_i1.GAcknowledgeInputBuilder? input) => _$this._input = input;

  GacknowledgeVarsBuilder();

  GacknowledgeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GacknowledgeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacknowledgeVars;
  }

  @override
  void update(void Function(GacknowledgeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacknowledgeVars build() => _build();

  _$GacknowledgeVars _build() {
    _$GacknowledgeVars _$result;
    try {
      _$result = _$v ?? new _$GacknowledgeVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GacknowledgeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
