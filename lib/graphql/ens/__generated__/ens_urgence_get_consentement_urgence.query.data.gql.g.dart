// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_urgence_get_consentement_urgence.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_consentement_urgenceData>
    _$ggetConsentementUrgenceDataSerializer =
    new _$Gget_consentement_urgenceDataSerializer();
Serializer<Gget_consentement_urgenceData_getDmpConsentement>
    _$ggetConsentementUrgenceDataGetDmpConsentementSerializer =
    new _$Gget_consentement_urgenceData_getDmpConsentementSerializer();

class _$Gget_consentement_urgenceDataSerializer
    implements StructuredSerializer<Gget_consentement_urgenceData> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_urgenceData,
    _$Gget_consentement_urgenceData
  ];
  @override
  final String wireName = 'Gget_consentement_urgenceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_consentement_urgenceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getDmpConsentement',
      serializers.serialize(object.getDmpConsentement,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_consentement_urgenceData_getDmpConsentement)
          ])),
    ];

    return result;
  }

  @override
  Gget_consentement_urgenceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_consentement_urgenceDataBuilder();

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
        case 'getDmpConsentement':
          result.getDmpConsentement.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_consentement_urgenceData_getDmpConsentement)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consentement_urgenceData_getDmpConsentementSerializer
    implements
        StructuredSerializer<Gget_consentement_urgenceData_getDmpConsentement> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_urgenceData_getDmpConsentement,
    _$Gget_consentement_urgenceData_getDmpConsentement
  ];
  @override
  final String wireName = 'Gget_consentement_urgenceData_getDmpConsentement';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_consentement_urgenceData_getDmpConsentement object,
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
  Gget_consentement_urgenceData_getDmpConsentement deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consentement_urgenceData_getDmpConsentementBuilder();

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

class _$Gget_consentement_urgenceData extends Gget_consentement_urgenceData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_consentement_urgenceData_getDmpConsentement>
      getDmpConsentement;

  factory _$Gget_consentement_urgenceData(
          [void Function(Gget_consentement_urgenceDataBuilder)? updates]) =>
      (new Gget_consentement_urgenceDataBuilder()..update(updates))._build();

  _$Gget_consentement_urgenceData._(
      {required this.G__typename, required this.getDmpConsentement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_consentement_urgenceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getDmpConsentement,
        r'Gget_consentement_urgenceData', 'getDmpConsentement');
  }

  @override
  Gget_consentement_urgenceData rebuild(
          void Function(Gget_consentement_urgenceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_urgenceDataBuilder toBuilder() =>
      new Gget_consentement_urgenceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consentement_urgenceData &&
        G__typename == other.G__typename &&
        getDmpConsentement == other.getDmpConsentement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDmpConsentement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_consentement_urgenceData')
          ..add('G__typename', G__typename)
          ..add('getDmpConsentement', getDmpConsentement))
        .toString();
  }
}

class Gget_consentement_urgenceDataBuilder
    implements
        Builder<Gget_consentement_urgenceData,
            Gget_consentement_urgenceDataBuilder> {
  _$Gget_consentement_urgenceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_consentement_urgenceData_getDmpConsentement>?
      _getDmpConsentement;
  ListBuilder<Gget_consentement_urgenceData_getDmpConsentement>
      get getDmpConsentement => _$this._getDmpConsentement ??=
          new ListBuilder<Gget_consentement_urgenceData_getDmpConsentement>();
  set getDmpConsentement(
          ListBuilder<Gget_consentement_urgenceData_getDmpConsentement>?
              getDmpConsentement) =>
      _$this._getDmpConsentement = getDmpConsentement;

  Gget_consentement_urgenceDataBuilder() {
    Gget_consentement_urgenceData._initializeBuilder(this);
  }

  Gget_consentement_urgenceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDmpConsentement = $v.getDmpConsentement.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_consentement_urgenceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consentement_urgenceData;
  }

  @override
  void update(void Function(Gget_consentement_urgenceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_urgenceData build() => _build();

  _$Gget_consentement_urgenceData _build() {
    _$Gget_consentement_urgenceData _$result;
    try {
      _$result = _$v ??
          new _$Gget_consentement_urgenceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_consentement_urgenceData', 'G__typename'),
              getDmpConsentement: getDmpConsentement.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDmpConsentement';
        getDmpConsentement.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consentement_urgenceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consentement_urgenceData_getDmpConsentement
    extends Gget_consentement_urgenceData_getDmpConsentement {
  @override
  final String G__typename;
  @override
  final String identifier;
  @override
  final String purpose;
  @override
  final String type;

  factory _$Gget_consentement_urgenceData_getDmpConsentement(
          [void Function(
                  Gget_consentement_urgenceData_getDmpConsentementBuilder)?
              updates]) =>
      (new Gget_consentement_urgenceData_getDmpConsentementBuilder()
            ..update(updates))
          ._build();

  _$Gget_consentement_urgenceData_getDmpConsentement._(
      {required this.G__typename,
      required this.identifier,
      required this.purpose,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_consentement_urgenceData_getDmpConsentement', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(identifier,
        r'Gget_consentement_urgenceData_getDmpConsentement', 'identifier');
    BuiltValueNullFieldError.checkNotNull(purpose,
        r'Gget_consentement_urgenceData_getDmpConsentement', 'purpose');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_consentement_urgenceData_getDmpConsentement', 'type');
  }

  @override
  Gget_consentement_urgenceData_getDmpConsentement rebuild(
          void Function(Gget_consentement_urgenceData_getDmpConsentementBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_urgenceData_getDmpConsentementBuilder toBuilder() =>
      new Gget_consentement_urgenceData_getDmpConsentementBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consentement_urgenceData_getDmpConsentement &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_consentement_urgenceData_getDmpConsentement')
          ..add('G__typename', G__typename)
          ..add('identifier', identifier)
          ..add('purpose', purpose)
          ..add('type', type))
        .toString();
  }
}

class Gget_consentement_urgenceData_getDmpConsentementBuilder
    implements
        Builder<Gget_consentement_urgenceData_getDmpConsentement,
            Gget_consentement_urgenceData_getDmpConsentementBuilder> {
  _$Gget_consentement_urgenceData_getDmpConsentement? _$v;

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

  Gget_consentement_urgenceData_getDmpConsentementBuilder() {
    Gget_consentement_urgenceData_getDmpConsentement._initializeBuilder(this);
  }

  Gget_consentement_urgenceData_getDmpConsentementBuilder get _$this {
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
  void replace(Gget_consentement_urgenceData_getDmpConsentement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consentement_urgenceData_getDmpConsentement;
  }

  @override
  void update(
      void Function(Gget_consentement_urgenceData_getDmpConsentementBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_urgenceData_getDmpConsentement build() => _build();

  _$Gget_consentement_urgenceData_getDmpConsentement _build() {
    final _$result = _$v ??
        new _$Gget_consentement_urgenceData_getDmpConsentement._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_consentement_urgenceData_getDmpConsentement',
                'G__typename'),
            identifier: BuiltValueNullFieldError.checkNotNull(
                identifier,
                r'Gget_consentement_urgenceData_getDmpConsentement',
                'identifier'),
            purpose: BuiltValueNullFieldError.checkNotNull(purpose,
                r'Gget_consentement_urgenceData_getDmpConsentement', 'purpose'),
            type: BuiltValueNullFieldError.checkNotNull(type,
                r'Gget_consentement_urgenceData_getDmpConsentement', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
