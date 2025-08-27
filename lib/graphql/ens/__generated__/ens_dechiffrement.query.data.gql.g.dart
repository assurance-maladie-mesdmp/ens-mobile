// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_dechiffrement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdecrypt_valueData> _$gdecryptValueDataSerializer =
    new _$Gdecrypt_valueDataSerializer();
Serializer<Gdecrypt_valueData_decrypt> _$gdecryptValueDataDecryptSerializer =
    new _$Gdecrypt_valueData_decryptSerializer();

class _$Gdecrypt_valueDataSerializer
    implements StructuredSerializer<Gdecrypt_valueData> {
  @override
  final Iterable<Type> types = const [Gdecrypt_valueData, _$Gdecrypt_valueData];
  @override
  final String wireName = 'Gdecrypt_valueData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdecrypt_valueData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'decrypt',
      serializers.serialize(object.decrypt,
          specifiedType: const FullType(Gdecrypt_valueData_decrypt)),
    ];

    return result;
  }

  @override
  Gdecrypt_valueData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdecrypt_valueDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'decrypt':
          result.decrypt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gdecrypt_valueData_decrypt))!
              as Gdecrypt_valueData_decrypt);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdecrypt_valueData_decryptSerializer
    implements StructuredSerializer<Gdecrypt_valueData_decrypt> {
  @override
  final Iterable<Type> types = const [
    Gdecrypt_valueData_decrypt,
    _$Gdecrypt_valueData_decrypt
  ];
  @override
  final String wireName = 'Gdecrypt_valueData_decrypt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdecrypt_valueData_decrypt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'decryptedValue',
      serializers.serialize(object.decryptedValue,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdecrypt_valueData_decrypt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdecrypt_valueData_decryptBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'decryptedValue':
          result.decryptedValue = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdecrypt_valueData extends Gdecrypt_valueData {
  @override
  final String G__typename;
  @override
  final Gdecrypt_valueData_decrypt decrypt;

  factory _$Gdecrypt_valueData(
          [void Function(Gdecrypt_valueDataBuilder)? updates]) =>
      (new Gdecrypt_valueDataBuilder()..update(updates))._build();

  _$Gdecrypt_valueData._({required this.G__typename, required this.decrypt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdecrypt_valueData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        decrypt, r'Gdecrypt_valueData', 'decrypt');
  }

  @override
  Gdecrypt_valueData rebuild(
          void Function(Gdecrypt_valueDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdecrypt_valueDataBuilder toBuilder() =>
      new Gdecrypt_valueDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdecrypt_valueData &&
        G__typename == other.G__typename &&
        decrypt == other.decrypt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, decrypt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdecrypt_valueData')
          ..add('G__typename', G__typename)
          ..add('decrypt', decrypt))
        .toString();
  }
}

class Gdecrypt_valueDataBuilder
    implements Builder<Gdecrypt_valueData, Gdecrypt_valueDataBuilder> {
  _$Gdecrypt_valueData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdecrypt_valueData_decryptBuilder? _decrypt;
  Gdecrypt_valueData_decryptBuilder get decrypt =>
      _$this._decrypt ??= new Gdecrypt_valueData_decryptBuilder();
  set decrypt(Gdecrypt_valueData_decryptBuilder? decrypt) =>
      _$this._decrypt = decrypt;

  Gdecrypt_valueDataBuilder() {
    Gdecrypt_valueData._initializeBuilder(this);
  }

  Gdecrypt_valueDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _decrypt = $v.decrypt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdecrypt_valueData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdecrypt_valueData;
  }

  @override
  void update(void Function(Gdecrypt_valueDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdecrypt_valueData build() => _build();

  _$Gdecrypt_valueData _build() {
    _$Gdecrypt_valueData _$result;
    try {
      _$result = _$v ??
          new _$Gdecrypt_valueData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdecrypt_valueData', 'G__typename'),
              decrypt: decrypt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'decrypt';
        decrypt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdecrypt_valueData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdecrypt_valueData_decrypt extends Gdecrypt_valueData_decrypt {
  @override
  final String G__typename;
  @override
  final String decryptedValue;

  factory _$Gdecrypt_valueData_decrypt(
          [void Function(Gdecrypt_valueData_decryptBuilder)? updates]) =>
      (new Gdecrypt_valueData_decryptBuilder()..update(updates))._build();

  _$Gdecrypt_valueData_decrypt._(
      {required this.G__typename, required this.decryptedValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdecrypt_valueData_decrypt', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        decryptedValue, r'Gdecrypt_valueData_decrypt', 'decryptedValue');
  }

  @override
  Gdecrypt_valueData_decrypt rebuild(
          void Function(Gdecrypt_valueData_decryptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdecrypt_valueData_decryptBuilder toBuilder() =>
      new Gdecrypt_valueData_decryptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdecrypt_valueData_decrypt &&
        G__typename == other.G__typename &&
        decryptedValue == other.decryptedValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, decryptedValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdecrypt_valueData_decrypt')
          ..add('G__typename', G__typename)
          ..add('decryptedValue', decryptedValue))
        .toString();
  }
}

class Gdecrypt_valueData_decryptBuilder
    implements
        Builder<Gdecrypt_valueData_decrypt, Gdecrypt_valueData_decryptBuilder> {
  _$Gdecrypt_valueData_decrypt? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _decryptedValue;
  String? get decryptedValue => _$this._decryptedValue;
  set decryptedValue(String? decryptedValue) =>
      _$this._decryptedValue = decryptedValue;

  Gdecrypt_valueData_decryptBuilder() {
    Gdecrypt_valueData_decrypt._initializeBuilder(this);
  }

  Gdecrypt_valueData_decryptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _decryptedValue = $v.decryptedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdecrypt_valueData_decrypt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdecrypt_valueData_decrypt;
  }

  @override
  void update(void Function(Gdecrypt_valueData_decryptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdecrypt_valueData_decrypt build() => _build();

  _$Gdecrypt_valueData_decrypt _build() {
    final _$result = _$v ??
        new _$Gdecrypt_valueData_decrypt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gdecrypt_valueData_decrypt', 'G__typename'),
            decryptedValue: BuiltValueNullFieldError.checkNotNull(
                decryptedValue,
                r'Gdecrypt_valueData_decrypt',
                'decryptedValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
