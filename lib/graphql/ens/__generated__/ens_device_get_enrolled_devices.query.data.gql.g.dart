// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_device_get_enrolled_devices.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_enrolled_devicesData> _$ggetEnrolledDevicesDataSerializer =
    new _$Gget_enrolled_devicesDataSerializer();
Serializer<Gget_enrolled_devicesData_getEnrolledDevices>
    _$ggetEnrolledDevicesDataGetEnrolledDevicesSerializer =
    new _$Gget_enrolled_devicesData_getEnrolledDevicesSerializer();

class _$Gget_enrolled_devicesDataSerializer
    implements StructuredSerializer<Gget_enrolled_devicesData> {
  @override
  final Iterable<Type> types = const [
    Gget_enrolled_devicesData,
    _$Gget_enrolled_devicesData
  ];
  @override
  final String wireName = 'Gget_enrolled_devicesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_enrolled_devicesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getEnrolledDevices',
      serializers.serialize(object.getEnrolledDevices,
          specifiedType:
              const FullType(Gget_enrolled_devicesData_getEnrolledDevices)),
    ];

    return result;
  }

  @override
  Gget_enrolled_devicesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_enrolled_devicesDataBuilder();

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
        case 'getEnrolledDevices':
          result.getEnrolledDevices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_enrolled_devicesData_getEnrolledDevices))!
              as Gget_enrolled_devicesData_getEnrolledDevices);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_enrolled_devicesData_getEnrolledDevicesSerializer
    implements
        StructuredSerializer<Gget_enrolled_devicesData_getEnrolledDevices> {
  @override
  final Iterable<Type> types = const [
    Gget_enrolled_devicesData_getEnrolledDevices,
    _$Gget_enrolled_devicesData_getEnrolledDevices
  ];
  @override
  final String wireName = 'Gget_enrolled_devicesData_getEnrolledDevices';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_enrolled_devicesData_getEnrolledDevices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'numberOfDevices',
      serializers.serialize(object.numberOfDevices,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Gget_enrolled_devicesData_getEnrolledDevices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_enrolled_devicesData_getEnrolledDevicesBuilder();

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
        case 'numberOfDevices':
          result.numberOfDevices = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_enrolled_devicesData extends Gget_enrolled_devicesData {
  @override
  final String G__typename;
  @override
  final Gget_enrolled_devicesData_getEnrolledDevices getEnrolledDevices;

  factory _$Gget_enrolled_devicesData(
          [void Function(Gget_enrolled_devicesDataBuilder)? updates]) =>
      (new Gget_enrolled_devicesDataBuilder()..update(updates))._build();

  _$Gget_enrolled_devicesData._(
      {required this.G__typename, required this.getEnrolledDevices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_enrolled_devicesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getEnrolledDevices, r'Gget_enrolled_devicesData', 'getEnrolledDevices');
  }

  @override
  Gget_enrolled_devicesData rebuild(
          void Function(Gget_enrolled_devicesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_enrolled_devicesDataBuilder toBuilder() =>
      new Gget_enrolled_devicesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_enrolled_devicesData &&
        G__typename == other.G__typename &&
        getEnrolledDevices == other.getEnrolledDevices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getEnrolledDevices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_enrolled_devicesData')
          ..add('G__typename', G__typename)
          ..add('getEnrolledDevices', getEnrolledDevices))
        .toString();
  }
}

class Gget_enrolled_devicesDataBuilder
    implements
        Builder<Gget_enrolled_devicesData, Gget_enrolled_devicesDataBuilder> {
  _$Gget_enrolled_devicesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_enrolled_devicesData_getEnrolledDevicesBuilder? _getEnrolledDevices;
  Gget_enrolled_devicesData_getEnrolledDevicesBuilder get getEnrolledDevices =>
      _$this._getEnrolledDevices ??=
          new Gget_enrolled_devicesData_getEnrolledDevicesBuilder();
  set getEnrolledDevices(
          Gget_enrolled_devicesData_getEnrolledDevicesBuilder?
              getEnrolledDevices) =>
      _$this._getEnrolledDevices = getEnrolledDevices;

  Gget_enrolled_devicesDataBuilder() {
    Gget_enrolled_devicesData._initializeBuilder(this);
  }

  Gget_enrolled_devicesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getEnrolledDevices = $v.getEnrolledDevices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_enrolled_devicesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_enrolled_devicesData;
  }

  @override
  void update(void Function(Gget_enrolled_devicesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_enrolled_devicesData build() => _build();

  _$Gget_enrolled_devicesData _build() {
    _$Gget_enrolled_devicesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_enrolled_devicesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_enrolled_devicesData', 'G__typename'),
              getEnrolledDevices: getEnrolledDevices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getEnrolledDevices';
        getEnrolledDevices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_enrolled_devicesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_enrolled_devicesData_getEnrolledDevices
    extends Gget_enrolled_devicesData_getEnrolledDevices {
  @override
  final String G__typename;
  @override
  final int numberOfDevices;

  factory _$Gget_enrolled_devicesData_getEnrolledDevices(
          [void Function(Gget_enrolled_devicesData_getEnrolledDevicesBuilder)?
              updates]) =>
      (new Gget_enrolled_devicesData_getEnrolledDevicesBuilder()
            ..update(updates))
          ._build();

  _$Gget_enrolled_devicesData_getEnrolledDevices._(
      {required this.G__typename, required this.numberOfDevices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_enrolled_devicesData_getEnrolledDevices', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(numberOfDevices,
        r'Gget_enrolled_devicesData_getEnrolledDevices', 'numberOfDevices');
  }

  @override
  Gget_enrolled_devicesData_getEnrolledDevices rebuild(
          void Function(Gget_enrolled_devicesData_getEnrolledDevicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_enrolled_devicesData_getEnrolledDevicesBuilder toBuilder() =>
      new Gget_enrolled_devicesData_getEnrolledDevicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_enrolled_devicesData_getEnrolledDevices &&
        G__typename == other.G__typename &&
        numberOfDevices == other.numberOfDevices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, numberOfDevices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_enrolled_devicesData_getEnrolledDevices')
          ..add('G__typename', G__typename)
          ..add('numberOfDevices', numberOfDevices))
        .toString();
  }
}

class Gget_enrolled_devicesData_getEnrolledDevicesBuilder
    implements
        Builder<Gget_enrolled_devicesData_getEnrolledDevices,
            Gget_enrolled_devicesData_getEnrolledDevicesBuilder> {
  _$Gget_enrolled_devicesData_getEnrolledDevices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _numberOfDevices;
  int? get numberOfDevices => _$this._numberOfDevices;
  set numberOfDevices(int? numberOfDevices) =>
      _$this._numberOfDevices = numberOfDevices;

  Gget_enrolled_devicesData_getEnrolledDevicesBuilder() {
    Gget_enrolled_devicesData_getEnrolledDevices._initializeBuilder(this);
  }

  Gget_enrolled_devicesData_getEnrolledDevicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _numberOfDevices = $v.numberOfDevices;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_enrolled_devicesData_getEnrolledDevices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_enrolled_devicesData_getEnrolledDevices;
  }

  @override
  void update(
      void Function(Gget_enrolled_devicesData_getEnrolledDevicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_enrolled_devicesData_getEnrolledDevices build() => _build();

  _$Gget_enrolled_devicesData_getEnrolledDevices _build() {
    final _$result = _$v ??
        new _$Gget_enrolled_devicesData_getEnrolledDevices._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_enrolled_devicesData_getEnrolledDevices', 'G__typename'),
            numberOfDevices: BuiltValueNullFieldError.checkNotNull(
                numberOfDevices,
                r'Gget_enrolled_devicesData_getEnrolledDevices',
                'numberOfDevices'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
