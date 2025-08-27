// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_set_all_documents_confidentiality.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_all_documents_confidentialityData>
    _$gsetAllDocumentsConfidentialityDataSerializer =
    new _$Gset_all_documents_confidentialityDataSerializer();
Serializer<
        Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality>
    _$gsetAllDocumentsConfidentialityDataSetAllDocumentsConfidentialitySerializer =
    new _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentialitySerializer();

class _$Gset_all_documents_confidentialityDataSerializer
    implements StructuredSerializer<Gset_all_documents_confidentialityData> {
  @override
  final Iterable<Type> types = const [
    Gset_all_documents_confidentialityData,
    _$Gset_all_documents_confidentialityData
  ];
  @override
  final String wireName = 'Gset_all_documents_confidentialityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_all_documents_confidentialityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setAllDocumentsConfidentiality',
      serializers.serialize(object.setAllDocumentsConfidentiality,
          specifiedType: const FullType(
              Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality)),
    ];

    return result;
  }

  @override
  Gset_all_documents_confidentialityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_all_documents_confidentialityDataBuilder();

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
        case 'setAllDocumentsConfidentiality':
          result.setAllDocumentsConfidentiality.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality))!
              as Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality);
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentialitySerializer
    implements
        StructuredSerializer<
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality> {
  @override
  final Iterable<Type> types = const [
    Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality,
    _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
  ];
  @override
  final String wireName =
      'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
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
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder();

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

class _$Gset_all_documents_confidentialityData
    extends Gset_all_documents_confidentialityData {
  @override
  final String G__typename;
  @override
  final Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
      setAllDocumentsConfidentiality;

  factory _$Gset_all_documents_confidentialityData(
          [void Function(Gset_all_documents_confidentialityDataBuilder)?
              updates]) =>
      (new Gset_all_documents_confidentialityDataBuilder()..update(updates))
          ._build();

  _$Gset_all_documents_confidentialityData._(
      {required this.G__typename, required this.setAllDocumentsConfidentiality})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_all_documents_confidentialityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        setAllDocumentsConfidentiality,
        r'Gset_all_documents_confidentialityData',
        'setAllDocumentsConfidentiality');
  }

  @override
  Gset_all_documents_confidentialityData rebuild(
          void Function(Gset_all_documents_confidentialityDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_all_documents_confidentialityDataBuilder toBuilder() =>
      new Gset_all_documents_confidentialityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_all_documents_confidentialityData &&
        G__typename == other.G__typename &&
        setAllDocumentsConfidentiality == other.setAllDocumentsConfidentiality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setAllDocumentsConfidentiality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gset_all_documents_confidentialityData')
          ..add('G__typename', G__typename)
          ..add(
              'setAllDocumentsConfidentiality', setAllDocumentsConfidentiality))
        .toString();
  }
}

class Gset_all_documents_confidentialityDataBuilder
    implements
        Builder<Gset_all_documents_confidentialityData,
            Gset_all_documents_confidentialityDataBuilder> {
  _$Gset_all_documents_confidentialityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder?
      _setAllDocumentsConfidentiality;
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
      get setAllDocumentsConfidentiality => _$this
              ._setAllDocumentsConfidentiality ??=
          new Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder();
  set setAllDocumentsConfidentiality(
          Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder?
              setAllDocumentsConfidentiality) =>
      _$this._setAllDocumentsConfidentiality = setAllDocumentsConfidentiality;

  Gset_all_documents_confidentialityDataBuilder() {
    Gset_all_documents_confidentialityData._initializeBuilder(this);
  }

  Gset_all_documents_confidentialityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setAllDocumentsConfidentiality =
          $v.setAllDocumentsConfidentiality.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_all_documents_confidentialityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_all_documents_confidentialityData;
  }

  @override
  void update(
      void Function(Gset_all_documents_confidentialityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_all_documents_confidentialityData build() => _build();

  _$Gset_all_documents_confidentialityData _build() {
    _$Gset_all_documents_confidentialityData _$result;
    try {
      _$result = _$v ??
          new _$Gset_all_documents_confidentialityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gset_all_documents_confidentialityData', 'G__typename'),
              setAllDocumentsConfidentiality:
                  setAllDocumentsConfidentiality.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setAllDocumentsConfidentiality';
        setAllDocumentsConfidentiality.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gset_all_documents_confidentialityData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
    extends Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality(
          [void Function(
                  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder)?
              updates]) =>
      (new Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder()
            ..update(updates))
          ._build();

  _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality',
        'success');
  }

  @override
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality rebuild(
          void Function(
                  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
      toBuilder() =>
          new Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality &&
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
            r'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
    implements
        Builder<
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality,
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder> {
  _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder() {
    Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
        ._initializeBuilder(this);
  }

  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
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
      Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality;
  }

  @override
  void update(
      void Function(
              Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
      build() => _build();

  _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
      _build() {
    final _$result = _$v ??
        new _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
