// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_get_document_default_confidentiality.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_document_default_confidentialityData>
    _$ggetDocumentDefaultConfidentialityDataSerializer =
    new _$Gget_document_default_confidentialityDataSerializer();
Serializer<Gget_document_default_confidentialityData_getDefaultConfidentiality>
    _$ggetDocumentDefaultConfidentialityDataGetDefaultConfidentialitySerializer =
    new _$Gget_document_default_confidentialityData_getDefaultConfidentialitySerializer();

class _$Gget_document_default_confidentialityDataSerializer
    implements StructuredSerializer<Gget_document_default_confidentialityData> {
  @override
  final Iterable<Type> types = const [
    Gget_document_default_confidentialityData,
    _$Gget_document_default_confidentialityData
  ];
  @override
  final String wireName = 'Gget_document_default_confidentialityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_document_default_confidentialityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getDefaultConfidentiality;
    if (value != null) {
      result
        ..add('getDefaultConfidentiality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_document_default_confidentialityData_getDefaultConfidentiality)));
    }
    return result;
  }

  @override
  Gget_document_default_confidentialityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_document_default_confidentialityDataBuilder();

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
        case 'getDefaultConfidentiality':
          result.getDefaultConfidentiality.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_document_default_confidentialityData_getDefaultConfidentiality))!
              as Gget_document_default_confidentialityData_getDefaultConfidentiality);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_document_default_confidentialityData_getDefaultConfidentialitySerializer
    implements
        StructuredSerializer<
            Gget_document_default_confidentialityData_getDefaultConfidentiality> {
  @override
  final Iterable<Type> types = const [
    Gget_document_default_confidentialityData_getDefaultConfidentiality,
    _$Gget_document_default_confidentialityData_getDefaultConfidentiality
  ];
  @override
  final String wireName =
      'Gget_document_default_confidentialityData_getDefaultConfidentiality';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_document_default_confidentialityData_getDefaultConfidentiality
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'masked',
      serializers.serialize(object.masked, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_document_default_confidentialityData_getDefaultConfidentiality
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder();

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
        case 'masked':
          result.masked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_document_default_confidentialityData
    extends Gget_document_default_confidentialityData {
  @override
  final String G__typename;
  @override
  final Gget_document_default_confidentialityData_getDefaultConfidentiality?
      getDefaultConfidentiality;

  factory _$Gget_document_default_confidentialityData(
          [void Function(Gget_document_default_confidentialityDataBuilder)?
              updates]) =>
      (new Gget_document_default_confidentialityDataBuilder()..update(updates))
          ._build();

  _$Gget_document_default_confidentialityData._(
      {required this.G__typename, this.getDefaultConfidentiality})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_document_default_confidentialityData', 'G__typename');
  }

  @override
  Gget_document_default_confidentialityData rebuild(
          void Function(Gget_document_default_confidentialityDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_default_confidentialityDataBuilder toBuilder() =>
      new Gget_document_default_confidentialityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_document_default_confidentialityData &&
        G__typename == other.G__typename &&
        getDefaultConfidentiality == other.getDefaultConfidentiality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDefaultConfidentiality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_document_default_confidentialityData')
          ..add('G__typename', G__typename)
          ..add('getDefaultConfidentiality', getDefaultConfidentiality))
        .toString();
  }
}

class Gget_document_default_confidentialityDataBuilder
    implements
        Builder<Gget_document_default_confidentialityData,
            Gget_document_default_confidentialityDataBuilder> {
  _$Gget_document_default_confidentialityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder?
      _getDefaultConfidentiality;
  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
      get getDefaultConfidentiality => _$this._getDefaultConfidentiality ??=
          new Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder();
  set getDefaultConfidentiality(
          Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder?
              getDefaultConfidentiality) =>
      _$this._getDefaultConfidentiality = getDefaultConfidentiality;

  Gget_document_default_confidentialityDataBuilder() {
    Gget_document_default_confidentialityData._initializeBuilder(this);
  }

  Gget_document_default_confidentialityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDefaultConfidentiality = $v.getDefaultConfidentiality?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_document_default_confidentialityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_document_default_confidentialityData;
  }

  @override
  void update(
      void Function(Gget_document_default_confidentialityDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_default_confidentialityData build() => _build();

  _$Gget_document_default_confidentialityData _build() {
    _$Gget_document_default_confidentialityData _$result;
    try {
      _$result = _$v ??
          new _$Gget_document_default_confidentialityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_document_default_confidentialityData', 'G__typename'),
              getDefaultConfidentiality: _getDefaultConfidentiality?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDefaultConfidentiality';
        _getDefaultConfidentiality?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_document_default_confidentialityData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_document_default_confidentialityData_getDefaultConfidentiality
    extends Gget_document_default_confidentialityData_getDefaultConfidentiality {
  @override
  final String G__typename;
  @override
  final bool masked;

  factory _$Gget_document_default_confidentialityData_getDefaultConfidentiality(
          [void Function(
                  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder)?
              updates]) =>
      (new Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder()
            ..update(updates))
          ._build();

  _$Gget_document_default_confidentialityData_getDefaultConfidentiality._(
      {required this.G__typename, required this.masked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_document_default_confidentialityData_getDefaultConfidentiality',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        masked,
        r'Gget_document_default_confidentialityData_getDefaultConfidentiality',
        'masked');
  }

  @override
  Gget_document_default_confidentialityData_getDefaultConfidentiality rebuild(
          void Function(
                  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
      toBuilder() =>
          new Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_document_default_confidentialityData_getDefaultConfidentiality &&
        G__typename == other.G__typename &&
        masked == other.masked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, masked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_document_default_confidentialityData_getDefaultConfidentiality')
          ..add('G__typename', G__typename)
          ..add('masked', masked))
        .toString();
  }
}

class Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
    implements
        Builder<
            Gget_document_default_confidentialityData_getDefaultConfidentiality,
            Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder> {
  _$Gget_document_default_confidentialityData_getDefaultConfidentiality? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _masked;
  bool? get masked => _$this._masked;
  set masked(bool? masked) => _$this._masked = masked;

  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder() {
    Gget_document_default_confidentialityData_getDefaultConfidentiality
        ._initializeBuilder(this);
  }

  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _masked = $v.masked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_document_default_confidentialityData_getDefaultConfidentiality
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_document_default_confidentialityData_getDefaultConfidentiality;
  }

  @override
  void update(
      void Function(
              Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_default_confidentialityData_getDefaultConfidentiality build() =>
      _build();

  _$Gget_document_default_confidentialityData_getDefaultConfidentiality
      _build() {
    final _$result = _$v ??
        new _$Gget_document_default_confidentialityData_getDefaultConfidentiality
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_document_default_confidentialityData_getDefaultConfidentiality',
                'G__typename'),
            masked: BuiltValueNullFieldError.checkNotNull(
                masked,
                r'Gget_document_default_confidentialityData_getDefaultConfidentiality',
                'masked'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
