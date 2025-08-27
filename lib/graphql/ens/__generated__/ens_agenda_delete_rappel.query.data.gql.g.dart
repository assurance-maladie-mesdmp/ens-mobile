// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_delete_rappel.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_rappelData> _$gdeleteRappelDataSerializer =
    new _$Gdelete_rappelDataSerializer();
Serializer<Gdelete_rappelData_removeReminderByIdAndPatientId>
    _$gdeleteRappelDataRemoveReminderByIdAndPatientIdSerializer =
    new _$Gdelete_rappelData_removeReminderByIdAndPatientIdSerializer();

class _$Gdelete_rappelDataSerializer
    implements StructuredSerializer<Gdelete_rappelData> {
  @override
  final Iterable<Type> types = const [Gdelete_rappelData, _$Gdelete_rappelData];
  @override
  final String wireName = 'Gdelete_rappelData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_rappelData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeReminderByIdAndPatientId',
      serializers.serialize(object.removeReminderByIdAndPatientId,
          specifiedType: const FullType(
              Gdelete_rappelData_removeReminderByIdAndPatientId)),
    ];

    return result;
  }

  @override
  Gdelete_rappelData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_rappelDataBuilder();

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
        case 'removeReminderByIdAndPatientId':
          result.removeReminderByIdAndPatientId.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gdelete_rappelData_removeReminderByIdAndPatientId))!
              as Gdelete_rappelData_removeReminderByIdAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_rappelData_removeReminderByIdAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gdelete_rappelData_removeReminderByIdAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gdelete_rappelData_removeReminderByIdAndPatientId,
    _$Gdelete_rappelData_removeReminderByIdAndPatientId
  ];
  @override
  final String wireName = 'Gdelete_rappelData_removeReminderByIdAndPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_rappelData_removeReminderByIdAndPatientId object,
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
  Gdelete_rappelData_removeReminderByIdAndPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder();

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

class _$Gdelete_rappelData extends Gdelete_rappelData {
  @override
  final String G__typename;
  @override
  final Gdelete_rappelData_removeReminderByIdAndPatientId
      removeReminderByIdAndPatientId;

  factory _$Gdelete_rappelData(
          [void Function(Gdelete_rappelDataBuilder)? updates]) =>
      (new Gdelete_rappelDataBuilder()..update(updates))._build();

  _$Gdelete_rappelData._(
      {required this.G__typename, required this.removeReminderByIdAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_rappelData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(removeReminderByIdAndPatientId,
        r'Gdelete_rappelData', 'removeReminderByIdAndPatientId');
  }

  @override
  Gdelete_rappelData rebuild(
          void Function(Gdelete_rappelDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rappelDataBuilder toBuilder() =>
      new Gdelete_rappelDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rappelData &&
        G__typename == other.G__typename &&
        removeReminderByIdAndPatientId == other.removeReminderByIdAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeReminderByIdAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_rappelData')
          ..add('G__typename', G__typename)
          ..add(
              'removeReminderByIdAndPatientId', removeReminderByIdAndPatientId))
        .toString();
  }
}

class Gdelete_rappelDataBuilder
    implements Builder<Gdelete_rappelData, Gdelete_rappelDataBuilder> {
  _$Gdelete_rappelData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder?
      _removeReminderByIdAndPatientId;
  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder
      get removeReminderByIdAndPatientId =>
          _$this._removeReminderByIdAndPatientId ??=
              new Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder();
  set removeReminderByIdAndPatientId(
          Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder?
              removeReminderByIdAndPatientId) =>
      _$this._removeReminderByIdAndPatientId = removeReminderByIdAndPatientId;

  Gdelete_rappelDataBuilder() {
    Gdelete_rappelData._initializeBuilder(this);
  }

  Gdelete_rappelDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeReminderByIdAndPatientId =
          $v.removeReminderByIdAndPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rappelData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rappelData;
  }

  @override
  void update(void Function(Gdelete_rappelDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rappelData build() => _build();

  _$Gdelete_rappelData _build() {
    _$Gdelete_rappelData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_rappelData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_rappelData', 'G__typename'),
              removeReminderByIdAndPatientId:
                  removeReminderByIdAndPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeReminderByIdAndPatientId';
        removeReminderByIdAndPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_rappelData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_rappelData_removeReminderByIdAndPatientId
    extends Gdelete_rappelData_removeReminderByIdAndPatientId {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_rappelData_removeReminderByIdAndPatientId(
          [void Function(
                  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder)?
              updates]) =>
      (new Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_rappelData_removeReminderByIdAndPatientId._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_rappelData_removeReminderByIdAndPatientId', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_rappelData_removeReminderByIdAndPatientId', 'success');
  }

  @override
  Gdelete_rappelData_removeReminderByIdAndPatientId rebuild(
          void Function(
                  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder toBuilder() =>
      new Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rappelData_removeReminderByIdAndPatientId &&
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
            r'Gdelete_rappelData_removeReminderByIdAndPatientId')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder
    implements
        Builder<Gdelete_rappelData_removeReminderByIdAndPatientId,
            Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder> {
  _$Gdelete_rappelData_removeReminderByIdAndPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder() {
    Gdelete_rappelData_removeReminderByIdAndPatientId._initializeBuilder(this);
  }

  Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rappelData_removeReminderByIdAndPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rappelData_removeReminderByIdAndPatientId;
  }

  @override
  void update(
      void Function(Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rappelData_removeReminderByIdAndPatientId build() => _build();

  _$Gdelete_rappelData_removeReminderByIdAndPatientId _build() {
    final _$result = _$v ??
        new _$Gdelete_rappelData_removeReminderByIdAndPatientId._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_rappelData_removeReminderByIdAndPatientId',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_rappelData_removeReminderByIdAndPatientId',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
