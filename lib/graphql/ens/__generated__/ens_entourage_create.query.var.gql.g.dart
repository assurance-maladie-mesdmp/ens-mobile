// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_create.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_entourage_contactVars>
    _$gcreateEntourageContactVarsSerializer =
    new _$Gcreate_entourage_contactVarsSerializer();

class _$Gcreate_entourage_contactVarsSerializer
    implements StructuredSerializer<Gcreate_entourage_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gcreate_entourage_contactVars,
    _$Gcreate_entourage_contactVars
  ];
  @override
  final String wireName = 'Gcreate_entourage_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_entourage_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GContactPostInput)),
    ];

    return result;
  }

  @override
  Gcreate_entourage_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_entourage_contactVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GContactPostInput))!
              as _i1.GContactPostInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_entourage_contactVars extends Gcreate_entourage_contactVars {
  @override
  final _i1.GContactPostInput input;

  factory _$Gcreate_entourage_contactVars(
          [void Function(Gcreate_entourage_contactVarsBuilder)? updates]) =>
      (new Gcreate_entourage_contactVarsBuilder()..update(updates))._build();

  _$Gcreate_entourage_contactVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gcreate_entourage_contactVars', 'input');
  }

  @override
  Gcreate_entourage_contactVars rebuild(
          void Function(Gcreate_entourage_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_entourage_contactVarsBuilder toBuilder() =>
      new Gcreate_entourage_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_entourage_contactVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gcreate_entourage_contactVars')
          ..add('input', input))
        .toString();
  }
}

class Gcreate_entourage_contactVarsBuilder
    implements
        Builder<Gcreate_entourage_contactVars,
            Gcreate_entourage_contactVarsBuilder> {
  _$Gcreate_entourage_contactVars? _$v;

  _i1.GContactPostInputBuilder? _input;
  _i1.GContactPostInputBuilder get input =>
      _$this._input ??= new _i1.GContactPostInputBuilder();
  set input(_i1.GContactPostInputBuilder? input) => _$this._input = input;

  Gcreate_entourage_contactVarsBuilder();

  Gcreate_entourage_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_entourage_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_entourage_contactVars;
  }

  @override
  void update(void Function(Gcreate_entourage_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_entourage_contactVars build() => _build();

  _$Gcreate_entourage_contactVars _build() {
    _$Gcreate_entourage_contactVars _$result;
    try {
      _$result =
          _$v ?? new _$Gcreate_entourage_contactVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_entourage_contactVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
