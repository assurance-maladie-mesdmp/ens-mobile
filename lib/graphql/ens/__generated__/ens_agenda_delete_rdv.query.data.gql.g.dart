// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_delete_rdv.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_rdvData> _$gdeleteRdvDataSerializer =
    new _$Gdelete_rdvDataSerializer();
Serializer<Gdelete_rdvData_removeAppointmentByIdAndPatientId>
    _$gdeleteRdvDataRemoveAppointmentByIdAndPatientIdSerializer =
    new _$Gdelete_rdvData_removeAppointmentByIdAndPatientIdSerializer();

class _$Gdelete_rdvDataSerializer
    implements StructuredSerializer<Gdelete_rdvData> {
  @override
  final Iterable<Type> types = const [Gdelete_rdvData, _$Gdelete_rdvData];
  @override
  final String wireName = 'Gdelete_rdvData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gdelete_rdvData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeAppointmentByIdAndPatientId',
      serializers.serialize(object.removeAppointmentByIdAndPatientId,
          specifiedType: const FullType(
              Gdelete_rdvData_removeAppointmentByIdAndPatientId)),
    ];

    return result;
  }

  @override
  Gdelete_rdvData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_rdvDataBuilder();

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
        case 'removeAppointmentByIdAndPatientId':
          result.removeAppointmentByIdAndPatientId.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          Gdelete_rdvData_removeAppointmentByIdAndPatientId))!
                  as Gdelete_rdvData_removeAppointmentByIdAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_rdvData_removeAppointmentByIdAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gdelete_rdvData_removeAppointmentByIdAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gdelete_rdvData_removeAppointmentByIdAndPatientId,
    _$Gdelete_rdvData_removeAppointmentByIdAndPatientId
  ];
  @override
  final String wireName = 'Gdelete_rdvData_removeAppointmentByIdAndPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_rdvData_removeAppointmentByIdAndPatientId object,
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
  Gdelete_rdvData_removeAppointmentByIdAndPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder();

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

class _$Gdelete_rdvData extends Gdelete_rdvData {
  @override
  final String G__typename;
  @override
  final Gdelete_rdvData_removeAppointmentByIdAndPatientId
      removeAppointmentByIdAndPatientId;

  factory _$Gdelete_rdvData([void Function(Gdelete_rdvDataBuilder)? updates]) =>
      (new Gdelete_rdvDataBuilder()..update(updates))._build();

  _$Gdelete_rdvData._(
      {required this.G__typename,
      required this.removeAppointmentByIdAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_rdvData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(removeAppointmentByIdAndPatientId,
        r'Gdelete_rdvData', 'removeAppointmentByIdAndPatientId');
  }

  @override
  Gdelete_rdvData rebuild(void Function(Gdelete_rdvDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rdvDataBuilder toBuilder() =>
      new Gdelete_rdvDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rdvData &&
        G__typename == other.G__typename &&
        removeAppointmentByIdAndPatientId ==
            other.removeAppointmentByIdAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeAppointmentByIdAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_rdvData')
          ..add('G__typename', G__typename)
          ..add('removeAppointmentByIdAndPatientId',
              removeAppointmentByIdAndPatientId))
        .toString();
  }
}

class Gdelete_rdvDataBuilder
    implements Builder<Gdelete_rdvData, Gdelete_rdvDataBuilder> {
  _$Gdelete_rdvData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder?
      _removeAppointmentByIdAndPatientId;
  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder
      get removeAppointmentByIdAndPatientId =>
          _$this._removeAppointmentByIdAndPatientId ??=
              new Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder();
  set removeAppointmentByIdAndPatientId(
          Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder?
              removeAppointmentByIdAndPatientId) =>
      _$this._removeAppointmentByIdAndPatientId =
          removeAppointmentByIdAndPatientId;

  Gdelete_rdvDataBuilder() {
    Gdelete_rdvData._initializeBuilder(this);
  }

  Gdelete_rdvDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeAppointmentByIdAndPatientId =
          $v.removeAppointmentByIdAndPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rdvData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rdvData;
  }

  @override
  void update(void Function(Gdelete_rdvDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rdvData build() => _build();

  _$Gdelete_rdvData _build() {
    _$Gdelete_rdvData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_rdvData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_rdvData', 'G__typename'),
              removeAppointmentByIdAndPatientId:
                  removeAppointmentByIdAndPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeAppointmentByIdAndPatientId';
        removeAppointmentByIdAndPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_rdvData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_rdvData_removeAppointmentByIdAndPatientId
    extends Gdelete_rdvData_removeAppointmentByIdAndPatientId {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_rdvData_removeAppointmentByIdAndPatientId(
          [void Function(
                  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder)?
              updates]) =>
      (new Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_rdvData_removeAppointmentByIdAndPatientId._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_rdvData_removeAppointmentByIdAndPatientId', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_rdvData_removeAppointmentByIdAndPatientId', 'success');
  }

  @override
  Gdelete_rdvData_removeAppointmentByIdAndPatientId rebuild(
          void Function(
                  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder toBuilder() =>
      new Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rdvData_removeAppointmentByIdAndPatientId &&
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
            r'Gdelete_rdvData_removeAppointmentByIdAndPatientId')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder
    implements
        Builder<Gdelete_rdvData_removeAppointmentByIdAndPatientId,
            Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder> {
  _$Gdelete_rdvData_removeAppointmentByIdAndPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder() {
    Gdelete_rdvData_removeAppointmentByIdAndPatientId._initializeBuilder(this);
  }

  Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rdvData_removeAppointmentByIdAndPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rdvData_removeAppointmentByIdAndPatientId;
  }

  @override
  void update(
      void Function(Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rdvData_removeAppointmentByIdAndPatientId build() => _build();

  _$Gdelete_rdvData_removeAppointmentByIdAndPatientId _build() {
    final _$result = _$v ??
        new _$Gdelete_rdvData_removeAppointmentByIdAndPatientId._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_rdvData_removeAppointmentByIdAndPatientId',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_rdvData_removeAppointmentByIdAndPatientId',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
