// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_dechiffrement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdecrypt_valueVars> _$gdecryptValueVarsSerializer =
    new _$Gdecrypt_valueVarsSerializer();

class _$Gdecrypt_valueVarsSerializer
    implements StructuredSerializer<Gdecrypt_valueVars> {
  @override
  final Iterable<Type> types = const [Gdecrypt_valueVars, _$Gdecrypt_valueVars];
  @override
  final String wireName = 'Gdecrypt_valueVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdecrypt_valueVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'encryptValue',
      serializers.serialize(object.encryptValue,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdecrypt_valueVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdecrypt_valueVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'encryptValue':
          result.encryptValue = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdecrypt_valueVars extends Gdecrypt_valueVars {
  @override
  final String encryptValue;

  factory _$Gdecrypt_valueVars(
          [void Function(Gdecrypt_valueVarsBuilder)? updates]) =>
      (new Gdecrypt_valueVarsBuilder()..update(updates))._build();

  _$Gdecrypt_valueVars._({required this.encryptValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encryptValue, r'Gdecrypt_valueVars', 'encryptValue');
  }

  @override
  Gdecrypt_valueVars rebuild(
          void Function(Gdecrypt_valueVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdecrypt_valueVarsBuilder toBuilder() =>
      new Gdecrypt_valueVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdecrypt_valueVars && encryptValue == other.encryptValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encryptValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdecrypt_valueVars')
          ..add('encryptValue', encryptValue))
        .toString();
  }
}

class Gdecrypt_valueVarsBuilder
    implements Builder<Gdecrypt_valueVars, Gdecrypt_valueVarsBuilder> {
  _$Gdecrypt_valueVars? _$v;

  String? _encryptValue;
  String? get encryptValue => _$this._encryptValue;
  set encryptValue(String? encryptValue) => _$this._encryptValue = encryptValue;

  Gdecrypt_valueVarsBuilder();

  Gdecrypt_valueVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encryptValue = $v.encryptValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdecrypt_valueVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdecrypt_valueVars;
  }

  @override
  void update(void Function(Gdecrypt_valueVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdecrypt_valueVars build() => _build();

  _$Gdecrypt_valueVars _build() {
    final _$result = _$v ??
        new _$Gdecrypt_valueVars._(
            encryptValue: BuiltValueNullFieldError.checkNotNull(
                encryptValue, r'Gdecrypt_valueVars', 'encryptValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
