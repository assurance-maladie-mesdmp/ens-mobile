// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_examen_status.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_examen_statusData> _$gupdateExamenStatusDataSerializer =
    new _$Gupdate_examen_statusDataSerializer();
Serializer<Gupdate_examen_statusData_updatePreventionStatus>
    _$gupdateExamenStatusDataUpdatePreventionStatusSerializer =
    new _$Gupdate_examen_statusData_updatePreventionStatusSerializer();

class _$Gupdate_examen_statusDataSerializer
    implements StructuredSerializer<Gupdate_examen_statusData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_examen_statusData,
    _$Gupdate_examen_statusData
  ];
  @override
  final String wireName = 'Gupdate_examen_statusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_examen_statusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updatePreventionStatus',
      serializers.serialize(object.updatePreventionStatus,
          specifiedType:
              const FullType(Gupdate_examen_statusData_updatePreventionStatus)),
    ];

    return result;
  }

  @override
  Gupdate_examen_statusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_examen_statusDataBuilder();

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
        case 'updatePreventionStatus':
          result.updatePreventionStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_examen_statusData_updatePreventionStatus))!
              as Gupdate_examen_statusData_updatePreventionStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_examen_statusData_updatePreventionStatusSerializer
    implements
        StructuredSerializer<Gupdate_examen_statusData_updatePreventionStatus> {
  @override
  final Iterable<Type> types = const [
    Gupdate_examen_statusData_updatePreventionStatus,
    _$Gupdate_examen_statusData_updatePreventionStatus
  ];
  @override
  final String wireName = 'Gupdate_examen_statusData_updatePreventionStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_examen_statusData_updatePreventionStatus object,
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
  Gupdate_examen_statusData_updatePreventionStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_examen_statusData_updatePreventionStatusBuilder();

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

class _$Gupdate_examen_statusData extends Gupdate_examen_statusData {
  @override
  final String G__typename;
  @override
  final Gupdate_examen_statusData_updatePreventionStatus updatePreventionStatus;

  factory _$Gupdate_examen_statusData(
          [void Function(Gupdate_examen_statusDataBuilder)? updates]) =>
      (new Gupdate_examen_statusDataBuilder()..update(updates))._build();

  _$Gupdate_examen_statusData._(
      {required this.G__typename, required this.updatePreventionStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_examen_statusData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updatePreventionStatus,
        r'Gupdate_examen_statusData', 'updatePreventionStatus');
  }

  @override
  Gupdate_examen_statusData rebuild(
          void Function(Gupdate_examen_statusDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_examen_statusDataBuilder toBuilder() =>
      new Gupdate_examen_statusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_examen_statusData &&
        G__typename == other.G__typename &&
        updatePreventionStatus == other.updatePreventionStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updatePreventionStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_examen_statusData')
          ..add('G__typename', G__typename)
          ..add('updatePreventionStatus', updatePreventionStatus))
        .toString();
  }
}

class Gupdate_examen_statusDataBuilder
    implements
        Builder<Gupdate_examen_statusData, Gupdate_examen_statusDataBuilder> {
  _$Gupdate_examen_statusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_examen_statusData_updatePreventionStatusBuilder?
      _updatePreventionStatus;
  Gupdate_examen_statusData_updatePreventionStatusBuilder
      get updatePreventionStatus => _$this._updatePreventionStatus ??=
          new Gupdate_examen_statusData_updatePreventionStatusBuilder();
  set updatePreventionStatus(
          Gupdate_examen_statusData_updatePreventionStatusBuilder?
              updatePreventionStatus) =>
      _$this._updatePreventionStatus = updatePreventionStatus;

  Gupdate_examen_statusDataBuilder() {
    Gupdate_examen_statusData._initializeBuilder(this);
  }

  Gupdate_examen_statusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updatePreventionStatus = $v.updatePreventionStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_examen_statusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_examen_statusData;
  }

  @override
  void update(void Function(Gupdate_examen_statusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_examen_statusData build() => _build();

  _$Gupdate_examen_statusData _build() {
    _$Gupdate_examen_statusData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_examen_statusData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_examen_statusData', 'G__typename'),
              updatePreventionStatus: updatePreventionStatus.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatePreventionStatus';
        updatePreventionStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_examen_statusData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_examen_statusData_updatePreventionStatus
    extends Gupdate_examen_statusData_updatePreventionStatus {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_examen_statusData_updatePreventionStatus(
          [void Function(
                  Gupdate_examen_statusData_updatePreventionStatusBuilder)?
              updates]) =>
      (new Gupdate_examen_statusData_updatePreventionStatusBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_examen_statusData_updatePreventionStatus._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_examen_statusData_updatePreventionStatus', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gupdate_examen_statusData_updatePreventionStatus', 'success');
  }

  @override
  Gupdate_examen_statusData_updatePreventionStatus rebuild(
          void Function(Gupdate_examen_statusData_updatePreventionStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_examen_statusData_updatePreventionStatusBuilder toBuilder() =>
      new Gupdate_examen_statusData_updatePreventionStatusBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_examen_statusData_updatePreventionStatus &&
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
            r'Gupdate_examen_statusData_updatePreventionStatus')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_examen_statusData_updatePreventionStatusBuilder
    implements
        Builder<Gupdate_examen_statusData_updatePreventionStatus,
            Gupdate_examen_statusData_updatePreventionStatusBuilder> {
  _$Gupdate_examen_statusData_updatePreventionStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_examen_statusData_updatePreventionStatusBuilder() {
    Gupdate_examen_statusData_updatePreventionStatus._initializeBuilder(this);
  }

  Gupdate_examen_statusData_updatePreventionStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_examen_statusData_updatePreventionStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_examen_statusData_updatePreventionStatus;
  }

  @override
  void update(
      void Function(Gupdate_examen_statusData_updatePreventionStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_examen_statusData_updatePreventionStatus build() => _build();

  _$Gupdate_examen_statusData_updatePreventionStatus _build() {
    final _$result = _$v ??
        new _$Gupdate_examen_statusData_updatePreventionStatus._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_examen_statusData_updatePreventionStatus',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_examen_statusData_updatePreventionStatus',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
