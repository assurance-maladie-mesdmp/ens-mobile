// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_traitement_auto_doc.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_treatment_doc_auto_finalityData>
    _$ggetTreatmentDocAutoFinalityDataSerializer =
    new _$Gget_treatment_doc_auto_finalityDataSerializer();
Serializer<
        Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId>
    _$ggetTreatmentDocAutoFinalityDataFetchTreatmentDocAutoFinalityByPatientIdSerializer =
    new _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdSerializer();

class _$Gget_treatment_doc_auto_finalityDataSerializer
    implements StructuredSerializer<Gget_treatment_doc_auto_finalityData> {
  @override
  final Iterable<Type> types = const [
    Gget_treatment_doc_auto_finalityData,
    _$Gget_treatment_doc_auto_finalityData
  ];
  @override
  final String wireName = 'Gget_treatment_doc_auto_finalityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_treatment_doc_auto_finalityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchTreatmentDocAutoFinalityByPatientId',
      serializers.serialize(object.fetchTreatmentDocAutoFinalityByPatientId,
          specifiedType: const FullType(
              Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId)),
    ];

    return result;
  }

  @override
  Gget_treatment_doc_auto_finalityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_treatment_doc_auto_finalityDataBuilder();

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
        case 'fetchTreatmentDocAutoFinalityByPatientId':
          result.fetchTreatmentDocAutoFinalityByPatientId.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId))!
              as Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId,
    _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
  ];
  @override
  final String wireName =
      'Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.consent;
    if (value != null) {
      result
        ..add('consent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isWhitelisted;
    if (value != null) {
      result
        ..add('isWhitelisted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder();

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
        case 'consent':
          result.consent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isWhitelisted':
          result.isWhitelisted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_treatment_doc_auto_finalityData
    extends Gget_treatment_doc_auto_finalityData {
  @override
  final String G__typename;
  @override
  final Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      fetchTreatmentDocAutoFinalityByPatientId;

  factory _$Gget_treatment_doc_auto_finalityData(
          [void Function(Gget_treatment_doc_auto_finalityDataBuilder)?
              updates]) =>
      (new Gget_treatment_doc_auto_finalityDataBuilder()..update(updates))
          ._build();

  _$Gget_treatment_doc_auto_finalityData._(
      {required this.G__typename,
      required this.fetchTreatmentDocAutoFinalityByPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_treatment_doc_auto_finalityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchTreatmentDocAutoFinalityByPatientId,
        r'Gget_treatment_doc_auto_finalityData',
        'fetchTreatmentDocAutoFinalityByPatientId');
  }

  @override
  Gget_treatment_doc_auto_finalityData rebuild(
          void Function(Gget_treatment_doc_auto_finalityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_treatment_doc_auto_finalityDataBuilder toBuilder() =>
      new Gget_treatment_doc_auto_finalityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_treatment_doc_auto_finalityData &&
        G__typename == other.G__typename &&
        fetchTreatmentDocAutoFinalityByPatientId ==
            other.fetchTreatmentDocAutoFinalityByPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchTreatmentDocAutoFinalityByPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_treatment_doc_auto_finalityData')
          ..add('G__typename', G__typename)
          ..add('fetchTreatmentDocAutoFinalityByPatientId',
              fetchTreatmentDocAutoFinalityByPatientId))
        .toString();
  }
}

class Gget_treatment_doc_auto_finalityDataBuilder
    implements
        Builder<Gget_treatment_doc_auto_finalityData,
            Gget_treatment_doc_auto_finalityDataBuilder> {
  _$Gget_treatment_doc_auto_finalityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder?
      _fetchTreatmentDocAutoFinalityByPatientId;
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
      get fetchTreatmentDocAutoFinalityByPatientId => _$this
              ._fetchTreatmentDocAutoFinalityByPatientId ??=
          new Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder();
  set fetchTreatmentDocAutoFinalityByPatientId(
          Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder?
              fetchTreatmentDocAutoFinalityByPatientId) =>
      _$this._fetchTreatmentDocAutoFinalityByPatientId =
          fetchTreatmentDocAutoFinalityByPatientId;

  Gget_treatment_doc_auto_finalityDataBuilder() {
    Gget_treatment_doc_auto_finalityData._initializeBuilder(this);
  }

  Gget_treatment_doc_auto_finalityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchTreatmentDocAutoFinalityByPatientId =
          $v.fetchTreatmentDocAutoFinalityByPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_treatment_doc_auto_finalityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_treatment_doc_auto_finalityData;
  }

  @override
  void update(
      void Function(Gget_treatment_doc_auto_finalityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_treatment_doc_auto_finalityData build() => _build();

  _$Gget_treatment_doc_auto_finalityData _build() {
    _$Gget_treatment_doc_auto_finalityData _$result;
    try {
      _$result = _$v ??
          new _$Gget_treatment_doc_auto_finalityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_treatment_doc_auto_finalityData', 'G__typename'),
              fetchTreatmentDocAutoFinalityByPatientId:
                  fetchTreatmentDocAutoFinalityByPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchTreatmentDocAutoFinalityByPatientId';
        fetchTreatmentDocAutoFinalityByPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_treatment_doc_auto_finalityData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
    extends Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId {
  @override
  final String G__typename;
  @override
  final bool? consent;
  @override
  final bool? isWhitelisted;

  factory _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId(
          [void Function(
                  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder)?
              updates]) =>
      (new Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId._(
      {required this.G__typename, this.consent, this.isWhitelisted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId',
        'G__typename');
  }

  @override
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      rebuild(
              void Function(
                      Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
      toBuilder() =>
          new Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId &&
        G__typename == other.G__typename &&
        consent == other.consent &&
        isWhitelisted == other.isWhitelisted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, consent.hashCode);
    _$hash = $jc(_$hash, isWhitelisted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId')
          ..add('G__typename', G__typename)
          ..add('consent', consent)
          ..add('isWhitelisted', isWhitelisted))
        .toString();
  }
}

class Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
    implements
        Builder<
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId,
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder> {
  _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _consent;
  bool? get consent => _$this._consent;
  set consent(bool? consent) => _$this._consent = consent;

  bool? _isWhitelisted;
  bool? get isWhitelisted => _$this._isWhitelisted;
  set isWhitelisted(bool? isWhitelisted) =>
      _$this._isWhitelisted = isWhitelisted;

  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder() {
    Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
        ._initializeBuilder(this);
  }

  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _consent = $v.consent;
      _isWhitelisted = $v.isWhitelisted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      build() => _build();

  _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      _build() {
    final _$result = _$v ??
        new _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId',
                'G__typename'),
            consent: consent,
            isWhitelisted: isWhitelisted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
