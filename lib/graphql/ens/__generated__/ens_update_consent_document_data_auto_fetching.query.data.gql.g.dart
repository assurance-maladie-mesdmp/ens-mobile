// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_update_consent_document_data_auto_fetching.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_finality_consent_statusData>
    _$gupdateFinalityConsentStatusDataSerializer =
    new _$Gupdate_finality_consent_statusDataSerializer();
Serializer<
        Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId>
    _$gupdateFinalityConsentStatusDataUpdateFinalityConsentByCodeAndPatientIdSerializer =
    new _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdSerializer();

class _$Gupdate_finality_consent_statusDataSerializer
    implements StructuredSerializer<Gupdate_finality_consent_statusData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_finality_consent_statusData,
    _$Gupdate_finality_consent_statusData
  ];
  @override
  final String wireName = 'Gupdate_finality_consent_statusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_finality_consent_statusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateFinalityConsentByCodeAndPatientId',
      serializers.serialize(object.updateFinalityConsentByCodeAndPatientId,
          specifiedType: const FullType(
              Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId)),
    ];

    return result;
  }

  @override
  Gupdate_finality_consent_statusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_finality_consent_statusDataBuilder();

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
        case 'updateFinalityConsentByCodeAndPatientId':
          result.updateFinalityConsentByCodeAndPatientId.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId))!
              as Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId,
    _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
  ];
  @override
  final String wireName =
      'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
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
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder();

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

class _$Gupdate_finality_consent_statusData
    extends Gupdate_finality_consent_statusData {
  @override
  final String G__typename;
  @override
  final Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      updateFinalityConsentByCodeAndPatientId;

  factory _$Gupdate_finality_consent_statusData(
          [void Function(Gupdate_finality_consent_statusDataBuilder)?
              updates]) =>
      (new Gupdate_finality_consent_statusDataBuilder()..update(updates))
          ._build();

  _$Gupdate_finality_consent_statusData._(
      {required this.G__typename,
      required this.updateFinalityConsentByCodeAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_finality_consent_statusData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateFinalityConsentByCodeAndPatientId,
        r'Gupdate_finality_consent_statusData',
        'updateFinalityConsentByCodeAndPatientId');
  }

  @override
  Gupdate_finality_consent_statusData rebuild(
          void Function(Gupdate_finality_consent_statusDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_finality_consent_statusDataBuilder toBuilder() =>
      new Gupdate_finality_consent_statusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_finality_consent_statusData &&
        G__typename == other.G__typename &&
        updateFinalityConsentByCodeAndPatientId ==
            other.updateFinalityConsentByCodeAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateFinalityConsentByCodeAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_finality_consent_statusData')
          ..add('G__typename', G__typename)
          ..add('updateFinalityConsentByCodeAndPatientId',
              updateFinalityConsentByCodeAndPatientId))
        .toString();
  }
}

class Gupdate_finality_consent_statusDataBuilder
    implements
        Builder<Gupdate_finality_consent_statusData,
            Gupdate_finality_consent_statusDataBuilder> {
  _$Gupdate_finality_consent_statusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder?
      _updateFinalityConsentByCodeAndPatientId;
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
      get updateFinalityConsentByCodeAndPatientId => _$this
              ._updateFinalityConsentByCodeAndPatientId ??=
          new Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder();
  set updateFinalityConsentByCodeAndPatientId(
          Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder?
              updateFinalityConsentByCodeAndPatientId) =>
      _$this._updateFinalityConsentByCodeAndPatientId =
          updateFinalityConsentByCodeAndPatientId;

  Gupdate_finality_consent_statusDataBuilder() {
    Gupdate_finality_consent_statusData._initializeBuilder(this);
  }

  Gupdate_finality_consent_statusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateFinalityConsentByCodeAndPatientId =
          $v.updateFinalityConsentByCodeAndPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_finality_consent_statusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_finality_consent_statusData;
  }

  @override
  void update(
      void Function(Gupdate_finality_consent_statusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_finality_consent_statusData build() => _build();

  _$Gupdate_finality_consent_statusData _build() {
    _$Gupdate_finality_consent_statusData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_finality_consent_statusData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_finality_consent_statusData', 'G__typename'),
              updateFinalityConsentByCodeAndPatientId:
                  updateFinalityConsentByCodeAndPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateFinalityConsentByCodeAndPatientId';
        updateFinalityConsentByCodeAndPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_finality_consent_statusData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
    extends Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId(
          [void Function(
                  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder)?
              updates]) =>
      (new Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId',
        'success');
  }

  @override
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      rebuild(
              void Function(
                      Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
      toBuilder() =>
          new Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId &&
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
            r'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
    implements
        Builder<
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId,
            Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder> {
  _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder() {
    Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
        ._initializeBuilder(this);
  }

  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder
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
      Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId;
  }

  @override
  void update(
      void Function(
              Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      build() => _build();

  _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
      _build() {
    final _$result = _$v ??
        new _$Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_finality_consent_statusData_updateFinalityConsentByCodeAndPatientId',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
