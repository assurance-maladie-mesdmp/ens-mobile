// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_cities.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_citiesData> _$ggetCitiesDataSerializer =
    new _$Gget_citiesDataSerializer();
Serializer<Gget_citiesData_getGroupedCityInformation>
    _$ggetCitiesDataGetGroupedCityInformationSerializer =
    new _$Gget_citiesData_getGroupedCityInformationSerializer();

class _$Gget_citiesDataSerializer
    implements StructuredSerializer<Gget_citiesData> {
  @override
  final Iterable<Type> types = const [Gget_citiesData, _$Gget_citiesData];
  @override
  final String wireName = 'Gget_citiesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_citiesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getGroupedCityInformation',
      serializers.serialize(object.getGroupedCityInformation,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_citiesData_getGroupedCityInformation)
          ])),
    ];

    return result;
  }

  @override
  Gget_citiesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_citiesDataBuilder();

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
        case 'getGroupedCityInformation':
          result.getGroupedCityInformation.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_citiesData_getGroupedCityInformation)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_citiesData_getGroupedCityInformationSerializer
    implements StructuredSerializer<Gget_citiesData_getGroupedCityInformation> {
  @override
  final Iterable<Type> types = const [
    Gget_citiesData_getGroupedCityInformation,
    _$Gget_citiesData_getGroupedCityInformation
  ];
  @override
  final String wireName = 'Gget_citiesData_getGroupedCityInformation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_citiesData_getGroupedCityInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'inseeCode',
      serializers.serialize(object.inseeCode,
          specifiedType: const FullType(String)),
      'departmentCode',
      serializers.serialize(object.departmentCode,
          specifiedType: const FullType(String)),
      'cityName',
      serializers.serialize(object.cityName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.zipCodes;
    if (value != null) {
      result
        ..add('zipCodes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Gget_citiesData_getGroupedCityInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_citiesData_getGroupedCityInformationBuilder();

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
        case 'inseeCode':
          result.inseeCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'departmentCode':
          result.departmentCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'zipCodes':
          result.zipCodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'cityName':
          result.cityName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_citiesData extends Gget_citiesData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_citiesData_getGroupedCityInformation>
      getGroupedCityInformation;

  factory _$Gget_citiesData([void Function(Gget_citiesDataBuilder)? updates]) =>
      (new Gget_citiesDataBuilder()..update(updates))._build();

  _$Gget_citiesData._(
      {required this.G__typename, required this.getGroupedCityInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_citiesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getGroupedCityInformation,
        r'Gget_citiesData', 'getGroupedCityInformation');
  }

  @override
  Gget_citiesData rebuild(void Function(Gget_citiesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_citiesDataBuilder toBuilder() =>
      new Gget_citiesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_citiesData &&
        G__typename == other.G__typename &&
        getGroupedCityInformation == other.getGroupedCityInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getGroupedCityInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_citiesData')
          ..add('G__typename', G__typename)
          ..add('getGroupedCityInformation', getGroupedCityInformation))
        .toString();
  }
}

class Gget_citiesDataBuilder
    implements Builder<Gget_citiesData, Gget_citiesDataBuilder> {
  _$Gget_citiesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_citiesData_getGroupedCityInformation>?
      _getGroupedCityInformation;
  ListBuilder<Gget_citiesData_getGroupedCityInformation>
      get getGroupedCityInformation => _$this._getGroupedCityInformation ??=
          new ListBuilder<Gget_citiesData_getGroupedCityInformation>();
  set getGroupedCityInformation(
          ListBuilder<Gget_citiesData_getGroupedCityInformation>?
              getGroupedCityInformation) =>
      _$this._getGroupedCityInformation = getGroupedCityInformation;

  Gget_citiesDataBuilder() {
    Gget_citiesData._initializeBuilder(this);
  }

  Gget_citiesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getGroupedCityInformation = $v.getGroupedCityInformation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_citiesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_citiesData;
  }

  @override
  void update(void Function(Gget_citiesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_citiesData build() => _build();

  _$Gget_citiesData _build() {
    _$Gget_citiesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_citiesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_citiesData', 'G__typename'),
              getGroupedCityInformation: getGroupedCityInformation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getGroupedCityInformation';
        getGroupedCityInformation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_citiesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_citiesData_getGroupedCityInformation
    extends Gget_citiesData_getGroupedCityInformation {
  @override
  final String G__typename;
  @override
  final String inseeCode;
  @override
  final String departmentCode;
  @override
  final BuiltList<String>? zipCodes;
  @override
  final String cityName;

  factory _$Gget_citiesData_getGroupedCityInformation(
          [void Function(Gget_citiesData_getGroupedCityInformationBuilder)?
              updates]) =>
      (new Gget_citiesData_getGroupedCityInformationBuilder()..update(updates))
          ._build();

  _$Gget_citiesData_getGroupedCityInformation._(
      {required this.G__typename,
      required this.inseeCode,
      required this.departmentCode,
      this.zipCodes,
      required this.cityName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_citiesData_getGroupedCityInformation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        inseeCode, r'Gget_citiesData_getGroupedCityInformation', 'inseeCode');
    BuiltValueNullFieldError.checkNotNull(departmentCode,
        r'Gget_citiesData_getGroupedCityInformation', 'departmentCode');
    BuiltValueNullFieldError.checkNotNull(
        cityName, r'Gget_citiesData_getGroupedCityInformation', 'cityName');
  }

  @override
  Gget_citiesData_getGroupedCityInformation rebuild(
          void Function(Gget_citiesData_getGroupedCityInformationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_citiesData_getGroupedCityInformationBuilder toBuilder() =>
      new Gget_citiesData_getGroupedCityInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_citiesData_getGroupedCityInformation &&
        G__typename == other.G__typename &&
        inseeCode == other.inseeCode &&
        departmentCode == other.departmentCode &&
        zipCodes == other.zipCodes &&
        cityName == other.cityName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, inseeCode.hashCode);
    _$hash = $jc(_$hash, departmentCode.hashCode);
    _$hash = $jc(_$hash, zipCodes.hashCode);
    _$hash = $jc(_$hash, cityName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_citiesData_getGroupedCityInformation')
          ..add('G__typename', G__typename)
          ..add('inseeCode', inseeCode)
          ..add('departmentCode', departmentCode)
          ..add('zipCodes', zipCodes)
          ..add('cityName', cityName))
        .toString();
  }
}

class Gget_citiesData_getGroupedCityInformationBuilder
    implements
        Builder<Gget_citiesData_getGroupedCityInformation,
            Gget_citiesData_getGroupedCityInformationBuilder> {
  _$Gget_citiesData_getGroupedCityInformation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _inseeCode;
  String? get inseeCode => _$this._inseeCode;
  set inseeCode(String? inseeCode) => _$this._inseeCode = inseeCode;

  String? _departmentCode;
  String? get departmentCode => _$this._departmentCode;
  set departmentCode(String? departmentCode) =>
      _$this._departmentCode = departmentCode;

  ListBuilder<String>? _zipCodes;
  ListBuilder<String> get zipCodes =>
      _$this._zipCodes ??= new ListBuilder<String>();
  set zipCodes(ListBuilder<String>? zipCodes) => _$this._zipCodes = zipCodes;

  String? _cityName;
  String? get cityName => _$this._cityName;
  set cityName(String? cityName) => _$this._cityName = cityName;

  Gget_citiesData_getGroupedCityInformationBuilder() {
    Gget_citiesData_getGroupedCityInformation._initializeBuilder(this);
  }

  Gget_citiesData_getGroupedCityInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _inseeCode = $v.inseeCode;
      _departmentCode = $v.departmentCode;
      _zipCodes = $v.zipCodes?.toBuilder();
      _cityName = $v.cityName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_citiesData_getGroupedCityInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_citiesData_getGroupedCityInformation;
  }

  @override
  void update(
      void Function(Gget_citiesData_getGroupedCityInformationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_citiesData_getGroupedCityInformation build() => _build();

  _$Gget_citiesData_getGroupedCityInformation _build() {
    _$Gget_citiesData_getGroupedCityInformation _$result;
    try {
      _$result = _$v ??
          new _$Gget_citiesData_getGroupedCityInformation._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_citiesData_getGroupedCityInformation', 'G__typename'),
              inseeCode: BuiltValueNullFieldError.checkNotNull(inseeCode,
                  r'Gget_citiesData_getGroupedCityInformation', 'inseeCode'),
              departmentCode: BuiltValueNullFieldError.checkNotNull(
                  departmentCode,
                  r'Gget_citiesData_getGroupedCityInformation',
                  'departmentCode'),
              zipCodes: _zipCodes?.build(),
              cityName: BuiltValueNullFieldError.checkNotNull(cityName,
                  r'Gget_citiesData_getGroupedCityInformation', 'cityName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'zipCodes';
        _zipCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_citiesData_getGroupedCityInformation',
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
