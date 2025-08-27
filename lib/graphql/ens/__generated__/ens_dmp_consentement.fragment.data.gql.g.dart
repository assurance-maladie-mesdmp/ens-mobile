// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_dmp_consentement.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdmpConsentementData> _$gdmpConsentementDataSerializer =
    new _$GdmpConsentementDataSerializer();

class _$GdmpConsentementDataSerializer
    implements StructuredSerializer<GdmpConsentementData> {
  @override
  final Iterable<Type> types = const [
    GdmpConsentementData,
    _$GdmpConsentementData
  ];
  @override
  final String wireName = 'GdmpConsentementData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdmpConsentementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'identifier',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
      'purpose',
      serializers.serialize(object.purpose,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GdmpConsentementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdmpConsentementDataBuilder();

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
        case 'identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'purpose':
          result.purpose = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdmpConsentementData extends GdmpConsentementData {
  @override
  final String G__typename;
  @override
  final String identifier;
  @override
  final String purpose;
  @override
  final String type;

  factory _$GdmpConsentementData(
          [void Function(GdmpConsentementDataBuilder)? updates]) =>
      (new GdmpConsentementDataBuilder()..update(updates))._build();

  _$GdmpConsentementData._(
      {required this.G__typename,
      required this.identifier,
      required this.purpose,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdmpConsentementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        identifier, r'GdmpConsentementData', 'identifier');
    BuiltValueNullFieldError.checkNotNull(
        purpose, r'GdmpConsentementData', 'purpose');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GdmpConsentementData', 'type');
  }

  @override
  GdmpConsentementData rebuild(
          void Function(GdmpConsentementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdmpConsentementDataBuilder toBuilder() =>
      new GdmpConsentementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdmpConsentementData &&
        G__typename == other.G__typename &&
        identifier == other.identifier &&
        purpose == other.purpose &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdmpConsentementData')
          ..add('G__typename', G__typename)
          ..add('identifier', identifier)
          ..add('purpose', purpose)
          ..add('type', type))
        .toString();
  }
}

class GdmpConsentementDataBuilder
    implements Builder<GdmpConsentementData, GdmpConsentementDataBuilder> {
  _$GdmpConsentementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GdmpConsentementDataBuilder() {
    GdmpConsentementData._initializeBuilder(this);
  }

  GdmpConsentementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _identifier = $v.identifier;
      _purpose = $v.purpose;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdmpConsentementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdmpConsentementData;
  }

  @override
  void update(void Function(GdmpConsentementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdmpConsentementData build() => _build();

  _$GdmpConsentementData _build() {
    final _$result = _$v ??
        new _$GdmpConsentementData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdmpConsentementData', 'G__typename'),
            identifier: BuiltValueNullFieldError.checkNotNull(
                identifier, r'GdmpConsentementData', 'identifier'),
            purpose: BuiltValueNullFieldError.checkNotNull(
                purpose, r'GdmpConsentementData', 'purpose'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GdmpConsentementData', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
