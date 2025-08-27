// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_remove_consent_for_service_by_oid.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gremove_consent_for_service_by_oidData>
    _$gremoveConsentForServiceByOidDataSerializer =
    new _$Gremove_consent_for_service_by_oidDataSerializer();
Serializer<
        Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid>
    _$gremoveConsentForServiceByOidDataRemoveFinalityConsentByServiceOidSerializer =
    new _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidSerializer();

class _$Gremove_consent_for_service_by_oidDataSerializer
    implements StructuredSerializer<Gremove_consent_for_service_by_oidData> {
  @override
  final Iterable<Type> types = const [
    Gremove_consent_for_service_by_oidData,
    _$Gremove_consent_for_service_by_oidData
  ];
  @override
  final String wireName = 'Gremove_consent_for_service_by_oidData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gremove_consent_for_service_by_oidData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeFinalityConsentByServiceOid',
      serializers.serialize(object.removeFinalityConsentByServiceOid,
          specifiedType: const FullType(
              Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid)),
    ];

    return result;
  }

  @override
  Gremove_consent_for_service_by_oidData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gremove_consent_for_service_by_oidDataBuilder();

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
        case 'removeFinalityConsentByServiceOid':
          result.removeFinalityConsentByServiceOid.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid))!
              as Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid);
          break;
      }
    }

    return result.build();
  }
}

class _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidSerializer
    implements
        StructuredSerializer<
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid> {
  @override
  final Iterable<Type> types = const [
    Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid,
    _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
  ];
  @override
  final String wireName =
      'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
          object,
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
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder();

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

class _$Gremove_consent_for_service_by_oidData
    extends Gremove_consent_for_service_by_oidData {
  @override
  final String G__typename;
  @override
  final Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
      removeFinalityConsentByServiceOid;

  factory _$Gremove_consent_for_service_by_oidData(
          [void Function(Gremove_consent_for_service_by_oidDataBuilder)?
              updates]) =>
      (new Gremove_consent_for_service_by_oidDataBuilder()..update(updates))
          ._build();

  _$Gremove_consent_for_service_by_oidData._(
      {required this.G__typename,
      required this.removeFinalityConsentByServiceOid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gremove_consent_for_service_by_oidData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeFinalityConsentByServiceOid,
        r'Gremove_consent_for_service_by_oidData',
        'removeFinalityConsentByServiceOid');
  }

  @override
  Gremove_consent_for_service_by_oidData rebuild(
          void Function(Gremove_consent_for_service_by_oidDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_consent_for_service_by_oidDataBuilder toBuilder() =>
      new Gremove_consent_for_service_by_oidDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gremove_consent_for_service_by_oidData &&
        G__typename == other.G__typename &&
        removeFinalityConsentByServiceOid ==
            other.removeFinalityConsentByServiceOid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeFinalityConsentByServiceOid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gremove_consent_for_service_by_oidData')
          ..add('G__typename', G__typename)
          ..add('removeFinalityConsentByServiceOid',
              removeFinalityConsentByServiceOid))
        .toString();
  }
}

class Gremove_consent_for_service_by_oidDataBuilder
    implements
        Builder<Gremove_consent_for_service_by_oidData,
            Gremove_consent_for_service_by_oidDataBuilder> {
  _$Gremove_consent_for_service_by_oidData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder?
      _removeFinalityConsentByServiceOid;
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
      get removeFinalityConsentByServiceOid => _$this
              ._removeFinalityConsentByServiceOid ??=
          new Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder();
  set removeFinalityConsentByServiceOid(
          Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder?
              removeFinalityConsentByServiceOid) =>
      _$this._removeFinalityConsentByServiceOid =
          removeFinalityConsentByServiceOid;

  Gremove_consent_for_service_by_oidDataBuilder() {
    Gremove_consent_for_service_by_oidData._initializeBuilder(this);
  }

  Gremove_consent_for_service_by_oidDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeFinalityConsentByServiceOid =
          $v.removeFinalityConsentByServiceOid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gremove_consent_for_service_by_oidData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gremove_consent_for_service_by_oidData;
  }

  @override
  void update(
      void Function(Gremove_consent_for_service_by_oidDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_consent_for_service_by_oidData build() => _build();

  _$Gremove_consent_for_service_by_oidData _build() {
    _$Gremove_consent_for_service_by_oidData _$result;
    try {
      _$result = _$v ??
          new _$Gremove_consent_for_service_by_oidData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gremove_consent_for_service_by_oidData', 'G__typename'),
              removeFinalityConsentByServiceOid:
                  removeFinalityConsentByServiceOid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeFinalityConsentByServiceOid';
        removeFinalityConsentByServiceOid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gremove_consent_for_service_by_oidData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
    extends Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid(
          [void Function(
                  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder)?
              updates]) =>
      (new Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder()
            ..update(updates))
          ._build();

  _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid',
        'success');
  }

  @override
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid rebuild(
          void Function(
                  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
      toBuilder() =>
          new Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid &&
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
            r'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
    implements
        Builder<
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid,
            Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder> {
  _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder() {
    Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
        ._initializeBuilder(this);
  }

  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder
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
      Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid;
  }

  @override
  void update(
      void Function(
              Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOidBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
      build() => _build();

  _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
      _build() {
    final _$result = _$v ??
        new _$Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gremove_consent_for_service_by_oidData_removeFinalityConsentByServiceOid',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
