// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_device_revoke_enrolled_devices.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grevoke_enrolled_devicesData>
    _$grevokeEnrolledDevicesDataSerializer =
    new _$Grevoke_enrolled_devicesDataSerializer();
Serializer<Grevoke_enrolled_devicesData_deleteAllEnrolledDevices>
    _$grevokeEnrolledDevicesDataDeleteAllEnrolledDevicesSerializer =
    new _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesSerializer();

class _$Grevoke_enrolled_devicesDataSerializer
    implements StructuredSerializer<Grevoke_enrolled_devicesData> {
  @override
  final Iterable<Type> types = const [
    Grevoke_enrolled_devicesData,
    _$Grevoke_enrolled_devicesData
  ];
  @override
  final String wireName = 'Grevoke_enrolled_devicesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grevoke_enrolled_devicesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteAllEnrolledDevices',
      serializers.serialize(object.deleteAllEnrolledDevices,
          specifiedType: const FullType(
              Grevoke_enrolled_devicesData_deleteAllEnrolledDevices)),
    ];

    return result;
  }

  @override
  Grevoke_enrolled_devicesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grevoke_enrolled_devicesDataBuilder();

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
        case 'deleteAllEnrolledDevices':
          result.deleteAllEnrolledDevices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Grevoke_enrolled_devicesData_deleteAllEnrolledDevices))!
              as Grevoke_enrolled_devicesData_deleteAllEnrolledDevices);
          break;
      }
    }

    return result.build();
  }
}

class _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesSerializer
    implements
        StructuredSerializer<
            Grevoke_enrolled_devicesData_deleteAllEnrolledDevices> {
  @override
  final Iterable<Type> types = const [
    Grevoke_enrolled_devicesData_deleteAllEnrolledDevices,
    _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices
  ];
  @override
  final String wireName =
      'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Grevoke_enrolled_devicesData_deleteAllEnrolledDevices object,
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
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder();

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

class _$Grevoke_enrolled_devicesData extends Grevoke_enrolled_devicesData {
  @override
  final String G__typename;
  @override
  final Grevoke_enrolled_devicesData_deleteAllEnrolledDevices
      deleteAllEnrolledDevices;

  factory _$Grevoke_enrolled_devicesData(
          [void Function(Grevoke_enrolled_devicesDataBuilder)? updates]) =>
      (new Grevoke_enrolled_devicesDataBuilder()..update(updates))._build();

  _$Grevoke_enrolled_devicesData._(
      {required this.G__typename, required this.deleteAllEnrolledDevices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Grevoke_enrolled_devicesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteAllEnrolledDevices,
        r'Grevoke_enrolled_devicesData', 'deleteAllEnrolledDevices');
  }

  @override
  Grevoke_enrolled_devicesData rebuild(
          void Function(Grevoke_enrolled_devicesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grevoke_enrolled_devicesDataBuilder toBuilder() =>
      new Grevoke_enrolled_devicesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grevoke_enrolled_devicesData &&
        G__typename == other.G__typename &&
        deleteAllEnrolledDevices == other.deleteAllEnrolledDevices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteAllEnrolledDevices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grevoke_enrolled_devicesData')
          ..add('G__typename', G__typename)
          ..add('deleteAllEnrolledDevices', deleteAllEnrolledDevices))
        .toString();
  }
}

class Grevoke_enrolled_devicesDataBuilder
    implements
        Builder<Grevoke_enrolled_devicesData,
            Grevoke_enrolled_devicesDataBuilder> {
  _$Grevoke_enrolled_devicesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder?
      _deleteAllEnrolledDevices;
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder
      get deleteAllEnrolledDevices => _$this._deleteAllEnrolledDevices ??=
          new Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder();
  set deleteAllEnrolledDevices(
          Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder?
              deleteAllEnrolledDevices) =>
      _$this._deleteAllEnrolledDevices = deleteAllEnrolledDevices;

  Grevoke_enrolled_devicesDataBuilder() {
    Grevoke_enrolled_devicesData._initializeBuilder(this);
  }

  Grevoke_enrolled_devicesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteAllEnrolledDevices = $v.deleteAllEnrolledDevices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grevoke_enrolled_devicesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grevoke_enrolled_devicesData;
  }

  @override
  void update(void Function(Grevoke_enrolled_devicesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grevoke_enrolled_devicesData build() => _build();

  _$Grevoke_enrolled_devicesData _build() {
    _$Grevoke_enrolled_devicesData _$result;
    try {
      _$result = _$v ??
          new _$Grevoke_enrolled_devicesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Grevoke_enrolled_devicesData', 'G__typename'),
              deleteAllEnrolledDevices: deleteAllEnrolledDevices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteAllEnrolledDevices';
        deleteAllEnrolledDevices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grevoke_enrolled_devicesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices
    extends Grevoke_enrolled_devicesData_deleteAllEnrolledDevices {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices(
          [void Function(
                  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder)?
              updates]) =>
      (new Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder()
            ..update(updates))
          ._build();

  _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices', 'success');
  }

  @override
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevices rebuild(
          void Function(
                  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder toBuilder() =>
      new Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grevoke_enrolled_devicesData_deleteAllEnrolledDevices &&
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
            r'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder
    implements
        Builder<Grevoke_enrolled_devicesData_deleteAllEnrolledDevices,
            Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder> {
  _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder() {
    Grevoke_enrolled_devicesData_deleteAllEnrolledDevices._initializeBuilder(
        this);
  }

  Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grevoke_enrolled_devicesData_deleteAllEnrolledDevices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices;
  }

  @override
  void update(
      void Function(
              Grevoke_enrolled_devicesData_deleteAllEnrolledDevicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Grevoke_enrolled_devicesData_deleteAllEnrolledDevices build() => _build();

  _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices _build() {
    final _$result = _$v ??
        new _$Grevoke_enrolled_devicesData_deleteAllEnrolledDevices._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Grevoke_enrolled_devicesData_deleteAllEnrolledDevices',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
