// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_add_consent_for_service_by_oid.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_consent_for_service_by_oidData>
    _$gaddConsentForServiceByOidDataSerializer =
    new _$Gadd_consent_for_service_by_oidDataSerializer();
Serializer<Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid>
    _$gaddConsentForServiceByOidDataAddFinalityConsentByServiceOidSerializer =
    new _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidSerializer();

class _$Gadd_consent_for_service_by_oidDataSerializer
    implements StructuredSerializer<Gadd_consent_for_service_by_oidData> {
  @override
  final Iterable<Type> types = const [
    Gadd_consent_for_service_by_oidData,
    _$Gadd_consent_for_service_by_oidData
  ];
  @override
  final String wireName = 'Gadd_consent_for_service_by_oidData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_consent_for_service_by_oidData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addFinalityConsentByServiceOid',
      serializers.serialize(object.addFinalityConsentByServiceOid,
          specifiedType: const FullType(
              Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid)),
    ];

    return result;
  }

  @override
  Gadd_consent_for_service_by_oidData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_consent_for_service_by_oidDataBuilder();

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
        case 'addFinalityConsentByServiceOid':
          result.addFinalityConsentByServiceOid.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid))!
              as Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidSerializer
    implements
        StructuredSerializer<
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid> {
  @override
  final Iterable<Type> types = const [
    Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid,
    _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
  ];
  @override
  final String wireName =
      'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_consent_for_service_by_oidData
    extends Gadd_consent_for_service_by_oidData {
  @override
  final String G__typename;
  @override
  final Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
      addFinalityConsentByServiceOid;

  factory _$Gadd_consent_for_service_by_oidData(
          [void Function(Gadd_consent_for_service_by_oidDataBuilder)?
              updates]) =>
      (new Gadd_consent_for_service_by_oidDataBuilder()..update(updates))
          ._build();

  _$Gadd_consent_for_service_by_oidData._(
      {required this.G__typename, required this.addFinalityConsentByServiceOid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_consent_for_service_by_oidData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        addFinalityConsentByServiceOid,
        r'Gadd_consent_for_service_by_oidData',
        'addFinalityConsentByServiceOid');
  }

  @override
  Gadd_consent_for_service_by_oidData rebuild(
          void Function(Gadd_consent_for_service_by_oidDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_consent_for_service_by_oidDataBuilder toBuilder() =>
      new Gadd_consent_for_service_by_oidDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_consent_for_service_by_oidData &&
        G__typename == other.G__typename &&
        addFinalityConsentByServiceOid == other.addFinalityConsentByServiceOid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addFinalityConsentByServiceOid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_consent_for_service_by_oidData')
          ..add('G__typename', G__typename)
          ..add(
              'addFinalityConsentByServiceOid', addFinalityConsentByServiceOid))
        .toString();
  }
}

class Gadd_consent_for_service_by_oidDataBuilder
    implements
        Builder<Gadd_consent_for_service_by_oidData,
            Gadd_consent_for_service_by_oidDataBuilder> {
  _$Gadd_consent_for_service_by_oidData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder?
      _addFinalityConsentByServiceOid;
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
      get addFinalityConsentByServiceOid => _$this
              ._addFinalityConsentByServiceOid ??=
          new Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder();
  set addFinalityConsentByServiceOid(
          Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder?
              addFinalityConsentByServiceOid) =>
      _$this._addFinalityConsentByServiceOid = addFinalityConsentByServiceOid;

  Gadd_consent_for_service_by_oidDataBuilder() {
    Gadd_consent_for_service_by_oidData._initializeBuilder(this);
  }

  Gadd_consent_for_service_by_oidDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addFinalityConsentByServiceOid =
          $v.addFinalityConsentByServiceOid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_consent_for_service_by_oidData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_consent_for_service_by_oidData;
  }

  @override
  void update(
      void Function(Gadd_consent_for_service_by_oidDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_consent_for_service_by_oidData build() => _build();

  _$Gadd_consent_for_service_by_oidData _build() {
    _$Gadd_consent_for_service_by_oidData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_consent_for_service_by_oidData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gadd_consent_for_service_by_oidData', 'G__typename'),
              addFinalityConsentByServiceOid:
                  addFinalityConsentByServiceOid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addFinalityConsentByServiceOid';
        addFinalityConsentByServiceOid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_consent_for_service_by_oidData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
    extends Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid(
          [void Function(
                  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder)?
              updates]) =>
      (new Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder()
            ..update(updates))
          ._build();

  _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid',
        'success');
  }

  @override
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid rebuild(
          void Function(
                  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
      toBuilder() =>
          new Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
    implements
        Builder<
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid,
            Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder> {
  _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder() {
    Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
        ._initializeBuilder(this);
  }

  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid;
  }

  @override
  void update(
      void Function(
              Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOidBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid build() =>
      _build();

  _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
      _build() {
    final _$result = _$v ??
        new _$Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gadd_consent_for_service_by_oidData_addFinalityConsentByServiceOid',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
