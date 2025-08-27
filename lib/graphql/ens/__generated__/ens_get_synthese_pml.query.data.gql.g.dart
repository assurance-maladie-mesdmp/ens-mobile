// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_synthese_pml.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_synthese_pmlData> _$ggetSynthesePmlDataSerializer =
    new _$Gget_synthese_pmlDataSerializer();
Serializer<Gget_synthese_pmlData_getMedicalSynthesisPDF>
    _$ggetSynthesePmlDataGetMedicalSynthesisPDFSerializer =
    new _$Gget_synthese_pmlData_getMedicalSynthesisPDFSerializer();

class _$Gget_synthese_pmlDataSerializer
    implements StructuredSerializer<Gget_synthese_pmlData> {
  @override
  final Iterable<Type> types = const [
    Gget_synthese_pmlData,
    _$Gget_synthese_pmlData
  ];
  @override
  final String wireName = 'Gget_synthese_pmlData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_synthese_pmlData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMedicalSynthesisPDF',
      serializers.serialize(object.getMedicalSynthesisPDF,
          specifiedType:
              const FullType(Gget_synthese_pmlData_getMedicalSynthesisPDF)),
    ];

    return result;
  }

  @override
  Gget_synthese_pmlData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_synthese_pmlDataBuilder();

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
        case 'getMedicalSynthesisPDF':
          result.getMedicalSynthesisPDF.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_synthese_pmlData_getMedicalSynthesisPDF))!
              as Gget_synthese_pmlData_getMedicalSynthesisPDF);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_synthese_pmlData_getMedicalSynthesisPDFSerializer
    implements
        StructuredSerializer<Gget_synthese_pmlData_getMedicalSynthesisPDF> {
  @override
  final Iterable<Type> types = const [
    Gget_synthese_pmlData_getMedicalSynthesisPDF,
    _$Gget_synthese_pmlData_getMedicalSynthesisPDF
  ];
  @override
  final String wireName = 'Gget_synthese_pmlData_getMedicalSynthesisPDF';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_synthese_pmlData_getMedicalSynthesisPDF object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'mimeType',
      serializers.serialize(object.mimeType,
          specifiedType: const FullType(String)),
      'binary',
      serializers.serialize(object.binary,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_synthese_pmlData_getMedicalSynthesisPDF deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mimeType':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'binary':
          result.binary = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_synthese_pmlData extends Gget_synthese_pmlData {
  @override
  final String G__typename;
  @override
  final Gget_synthese_pmlData_getMedicalSynthesisPDF getMedicalSynthesisPDF;

  factory _$Gget_synthese_pmlData(
          [void Function(Gget_synthese_pmlDataBuilder)? updates]) =>
      (new Gget_synthese_pmlDataBuilder()..update(updates))._build();

  _$Gget_synthese_pmlData._(
      {required this.G__typename, required this.getMedicalSynthesisPDF})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_synthese_pmlData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getMedicalSynthesisPDF,
        r'Gget_synthese_pmlData', 'getMedicalSynthesisPDF');
  }

  @override
  Gget_synthese_pmlData rebuild(
          void Function(Gget_synthese_pmlDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_synthese_pmlDataBuilder toBuilder() =>
      new Gget_synthese_pmlDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_synthese_pmlData &&
        G__typename == other.G__typename &&
        getMedicalSynthesisPDF == other.getMedicalSynthesisPDF;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getMedicalSynthesisPDF.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_synthese_pmlData')
          ..add('G__typename', G__typename)
          ..add('getMedicalSynthesisPDF', getMedicalSynthesisPDF))
        .toString();
  }
}

class Gget_synthese_pmlDataBuilder
    implements Builder<Gget_synthese_pmlData, Gget_synthese_pmlDataBuilder> {
  _$Gget_synthese_pmlData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder? _getMedicalSynthesisPDF;
  Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder
      get getMedicalSynthesisPDF => _$this._getMedicalSynthesisPDF ??=
          new Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder();
  set getMedicalSynthesisPDF(
          Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder?
              getMedicalSynthesisPDF) =>
      _$this._getMedicalSynthesisPDF = getMedicalSynthesisPDF;

  Gget_synthese_pmlDataBuilder() {
    Gget_synthese_pmlData._initializeBuilder(this);
  }

  Gget_synthese_pmlDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMedicalSynthesisPDF = $v.getMedicalSynthesisPDF.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_synthese_pmlData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_synthese_pmlData;
  }

  @override
  void update(void Function(Gget_synthese_pmlDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_synthese_pmlData build() => _build();

  _$Gget_synthese_pmlData _build() {
    _$Gget_synthese_pmlData _$result;
    try {
      _$result = _$v ??
          new _$Gget_synthese_pmlData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_synthese_pmlData', 'G__typename'),
              getMedicalSynthesisPDF: getMedicalSynthesisPDF.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMedicalSynthesisPDF';
        getMedicalSynthesisPDF.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_synthese_pmlData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_synthese_pmlData_getMedicalSynthesisPDF
    extends Gget_synthese_pmlData_getMedicalSynthesisPDF {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String mimeType;
  @override
  final String binary;

  factory _$Gget_synthese_pmlData_getMedicalSynthesisPDF(
          [void Function(Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder)?
              updates]) =>
      (new Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder()
            ..update(updates))
          ._build();

  _$Gget_synthese_pmlData_getMedicalSynthesisPDF._(
      {required this.G__typename,
      required this.name,
      required this.mimeType,
      required this.binary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'name');
    BuiltValueNullFieldError.checkNotNull(
        mimeType, r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'mimeType');
    BuiltValueNullFieldError.checkNotNull(
        binary, r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'binary');
  }

  @override
  Gget_synthese_pmlData_getMedicalSynthesisPDF rebuild(
          void Function(Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder toBuilder() =>
      new Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_synthese_pmlData_getMedicalSynthesisPDF &&
        G__typename == other.G__typename &&
        name == other.name &&
        mimeType == other.mimeType &&
        binary == other.binary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, binary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_synthese_pmlData_getMedicalSynthesisPDF')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('mimeType', mimeType)
          ..add('binary', binary))
        .toString();
  }
}

class Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder
    implements
        Builder<Gget_synthese_pmlData_getMedicalSynthesisPDF,
            Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder> {
  _$Gget_synthese_pmlData_getMedicalSynthesisPDF? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _binary;
  String? get binary => _$this._binary;
  set binary(String? binary) => _$this._binary = binary;

  Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder() {
    Gget_synthese_pmlData_getMedicalSynthesisPDF._initializeBuilder(this);
  }

  Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _mimeType = $v.mimeType;
      _binary = $v.binary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_synthese_pmlData_getMedicalSynthesisPDF other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_synthese_pmlData_getMedicalSynthesisPDF;
  }

  @override
  void update(
      void Function(Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_synthese_pmlData_getMedicalSynthesisPDF build() => _build();

  _$Gget_synthese_pmlData_getMedicalSynthesisPDF _build() {
    final _$result = _$v ??
        new _$Gget_synthese_pmlData_getMedicalSynthesisPDF._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'name'),
            mimeType: BuiltValueNullFieldError.checkNotNull(mimeType,
                r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'mimeType'),
            binary: BuiltValueNullFieldError.checkNotNull(binary,
                r'Gget_synthese_pmlData_getMedicalSynthesisPDF', 'binary'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
