// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccin_by_cip.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccin_by_cipData> _$ggetVaccinByCipDataSerializer =
    new _$Gget_vaccin_by_cipDataSerializer();
Serializer<Gget_vaccin_by_cipData_vaccineRefByCipCode>
    _$ggetVaccinByCipDataVaccineRefByCipCodeSerializer =
    new _$Gget_vaccin_by_cipData_vaccineRefByCipCodeSerializer();

class _$Gget_vaccin_by_cipDataSerializer
    implements StructuredSerializer<Gget_vaccin_by_cipData> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccin_by_cipData,
    _$Gget_vaccin_by_cipData
  ];
  @override
  final String wireName = 'Gget_vaccin_by_cipData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccin_by_cipData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccineRefByCipCode',
      serializers.serialize(object.vaccineRefByCipCode,
          specifiedType:
              const FullType(Gget_vaccin_by_cipData_vaccineRefByCipCode)),
    ];

    return result;
  }

  @override
  Gget_vaccin_by_cipData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccin_by_cipDataBuilder();

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
        case 'vaccineRefByCipCode':
          result.vaccineRefByCipCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_vaccin_by_cipData_vaccineRefByCipCode))!
              as Gget_vaccin_by_cipData_vaccineRefByCipCode);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccin_by_cipData_vaccineRefByCipCodeSerializer
    implements
        StructuredSerializer<Gget_vaccin_by_cipData_vaccineRefByCipCode> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccin_by_cipData_vaccineRefByCipCode,
    _$Gget_vaccin_by_cipData_vaccineRefByCipCode
  ];
  @override
  final String wireName = 'Gget_vaccin_by_cipData_vaccineRefByCipCode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_vaccin_by_cipData_vaccineRefByCipCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccineRefId',
      serializers.serialize(object.vaccineRefId,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'pathologies',
      serializers.serialize(object.pathologies,
          specifiedType: const FullType(String)),
      'cipCodes',
      serializers.serialize(object.cipCodes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.marketingStart;
    if (value != null) {
      result
        ..add('marketingStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marketingEnd;
    if (value != null) {
      result
        ..add('marketingEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_vaccin_by_cipData_vaccineRefByCipCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder();

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
        case 'vaccineRefId':
          result.vaccineRefId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pathologies':
          result.pathologies = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'marketingStart':
          result.marketingStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marketingEnd':
          result.marketingEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cipCodes':
          result.cipCodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccin_by_cipData extends Gget_vaccin_by_cipData {
  @override
  final String G__typename;
  @override
  final Gget_vaccin_by_cipData_vaccineRefByCipCode vaccineRefByCipCode;

  factory _$Gget_vaccin_by_cipData(
          [void Function(Gget_vaccin_by_cipDataBuilder)? updates]) =>
      (new Gget_vaccin_by_cipDataBuilder()..update(updates))._build();

  _$Gget_vaccin_by_cipData._(
      {required this.G__typename, required this.vaccineRefByCipCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccin_by_cipData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccineRefByCipCode, r'Gget_vaccin_by_cipData', 'vaccineRefByCipCode');
  }

  @override
  Gget_vaccin_by_cipData rebuild(
          void Function(Gget_vaccin_by_cipDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccin_by_cipDataBuilder toBuilder() =>
      new Gget_vaccin_by_cipDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccin_by_cipData &&
        G__typename == other.G__typename &&
        vaccineRefByCipCode == other.vaccineRefByCipCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccineRefByCipCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_vaccin_by_cipData')
          ..add('G__typename', G__typename)
          ..add('vaccineRefByCipCode', vaccineRefByCipCode))
        .toString();
  }
}

class Gget_vaccin_by_cipDataBuilder
    implements Builder<Gget_vaccin_by_cipData, Gget_vaccin_by_cipDataBuilder> {
  _$Gget_vaccin_by_cipData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder? _vaccineRefByCipCode;
  Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder get vaccineRefByCipCode =>
      _$this._vaccineRefByCipCode ??=
          new Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder();
  set vaccineRefByCipCode(
          Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder?
              vaccineRefByCipCode) =>
      _$this._vaccineRefByCipCode = vaccineRefByCipCode;

  Gget_vaccin_by_cipDataBuilder() {
    Gget_vaccin_by_cipData._initializeBuilder(this);
  }

  Gget_vaccin_by_cipDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineRefByCipCode = $v.vaccineRefByCipCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccin_by_cipData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccin_by_cipData;
  }

  @override
  void update(void Function(Gget_vaccin_by_cipDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccin_by_cipData build() => _build();

  _$Gget_vaccin_by_cipData _build() {
    _$Gget_vaccin_by_cipData _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccin_by_cipData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_vaccin_by_cipData', 'G__typename'),
              vaccineRefByCipCode: vaccineRefByCipCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccineRefByCipCode';
        vaccineRefByCipCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccin_by_cipData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_vaccin_by_cipData_vaccineRefByCipCode
    extends Gget_vaccin_by_cipData_vaccineRefByCipCode {
  @override
  final String G__typename;
  @override
  final String vaccineRefId;
  @override
  final String label;
  @override
  final String pathologies;
  @override
  final String? marketingStart;
  @override
  final String? marketingEnd;
  @override
  final BuiltList<String> cipCodes;

  factory _$Gget_vaccin_by_cipData_vaccineRefByCipCode(
          [void Function(Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder)?
              updates]) =>
      (new Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder()..update(updates))
          ._build();

  _$Gget_vaccin_by_cipData_vaccineRefByCipCode._(
      {required this.G__typename,
      required this.vaccineRefId,
      required this.label,
      required this.pathologies,
      this.marketingStart,
      this.marketingEnd,
      required this.cipCodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(vaccineRefId,
        r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'vaccineRefId');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'label');
    BuiltValueNullFieldError.checkNotNull(pathologies,
        r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'pathologies');
    BuiltValueNullFieldError.checkNotNull(
        cipCodes, r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'cipCodes');
  }

  @override
  Gget_vaccin_by_cipData_vaccineRefByCipCode rebuild(
          void Function(Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder toBuilder() =>
      new Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccin_by_cipData_vaccineRefByCipCode &&
        G__typename == other.G__typename &&
        vaccineRefId == other.vaccineRefId &&
        label == other.label &&
        pathologies == other.pathologies &&
        marketingStart == other.marketingStart &&
        marketingEnd == other.marketingEnd &&
        cipCodes == other.cipCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccineRefId.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, marketingStart.hashCode);
    _$hash = $jc(_$hash, marketingEnd.hashCode);
    _$hash = $jc(_$hash, cipCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_vaccin_by_cipData_vaccineRefByCipCode')
          ..add('G__typename', G__typename)
          ..add('vaccineRefId', vaccineRefId)
          ..add('label', label)
          ..add('pathologies', pathologies)
          ..add('marketingStart', marketingStart)
          ..add('marketingEnd', marketingEnd)
          ..add('cipCodes', cipCodes))
        .toString();
  }
}

class Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder
    implements
        Builder<Gget_vaccin_by_cipData_vaccineRefByCipCode,
            Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder> {
  _$Gget_vaccin_by_cipData_vaccineRefByCipCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineRefId;
  String? get vaccineRefId => _$this._vaccineRefId;
  set vaccineRefId(String? vaccineRefId) => _$this._vaccineRefId = vaccineRefId;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _pathologies;
  String? get pathologies => _$this._pathologies;
  set pathologies(String? pathologies) => _$this._pathologies = pathologies;

  String? _marketingStart;
  String? get marketingStart => _$this._marketingStart;
  set marketingStart(String? marketingStart) =>
      _$this._marketingStart = marketingStart;

  String? _marketingEnd;
  String? get marketingEnd => _$this._marketingEnd;
  set marketingEnd(String? marketingEnd) => _$this._marketingEnd = marketingEnd;

  ListBuilder<String>? _cipCodes;
  ListBuilder<String> get cipCodes =>
      _$this._cipCodes ??= new ListBuilder<String>();
  set cipCodes(ListBuilder<String>? cipCodes) => _$this._cipCodes = cipCodes;

  Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder() {
    Gget_vaccin_by_cipData_vaccineRefByCipCode._initializeBuilder(this);
  }

  Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineRefId = $v.vaccineRefId;
      _label = $v.label;
      _pathologies = $v.pathologies;
      _marketingStart = $v.marketingStart;
      _marketingEnd = $v.marketingEnd;
      _cipCodes = $v.cipCodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccin_by_cipData_vaccineRefByCipCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccin_by_cipData_vaccineRefByCipCode;
  }

  @override
  void update(
      void Function(Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccin_by_cipData_vaccineRefByCipCode build() => _build();

  _$Gget_vaccin_by_cipData_vaccineRefByCipCode _build() {
    _$Gget_vaccin_by_cipData_vaccineRefByCipCode _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccin_by_cipData_vaccineRefByCipCode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'G__typename'),
              vaccineRefId: BuiltValueNullFieldError.checkNotNull(
                  vaccineRefId,
                  r'Gget_vaccin_by_cipData_vaccineRefByCipCode',
                  'vaccineRefId'),
              label: BuiltValueNullFieldError.checkNotNull(label,
                  r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'label'),
              pathologies: BuiltValueNullFieldError.checkNotNull(pathologies,
                  r'Gget_vaccin_by_cipData_vaccineRefByCipCode', 'pathologies'),
              marketingStart: marketingStart,
              marketingEnd: marketingEnd,
              cipCodes: cipCodes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cipCodes';
        cipCodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccin_by_cipData_vaccineRefByCipCode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
