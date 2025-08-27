// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_update_traitement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_traitementData> _$gupdateTraitementDataSerializer =
    new _$Gupdate_traitementDataSerializer();
Serializer<Gupdate_traitementData_putTreatment>
    _$gupdateTraitementDataPutTreatmentSerializer =
    new _$Gupdate_traitementData_putTreatmentSerializer();

class _$Gupdate_traitementDataSerializer
    implements StructuredSerializer<Gupdate_traitementData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_traitementData,
    _$Gupdate_traitementData
  ];
  @override
  final String wireName = 'Gupdate_traitementData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_traitementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putTreatment',
      serializers.serialize(object.putTreatment,
          specifiedType: const FullType(Gupdate_traitementData_putTreatment)),
    ];

    return result;
  }

  @override
  Gupdate_traitementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_traitementDataBuilder();

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
        case 'putTreatment':
          result.putTreatment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_traitementData_putTreatment))!
              as Gupdate_traitementData_putTreatment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_traitementData_putTreatmentSerializer
    implements StructuredSerializer<Gupdate_traitementData_putTreatment> {
  @override
  final Iterable<Type> types = const [
    Gupdate_traitementData_putTreatment,
    _$Gupdate_traitementData_putTreatment
  ];
  @override
  final String wireName = 'Gupdate_traitementData_putTreatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_traitementData_putTreatment object,
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
  Gupdate_traitementData_putTreatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_traitementData_putTreatmentBuilder();

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

class _$Gupdate_traitementData extends Gupdate_traitementData {
  @override
  final String G__typename;
  @override
  final Gupdate_traitementData_putTreatment putTreatment;

  factory _$Gupdate_traitementData(
          [void Function(Gupdate_traitementDataBuilder)? updates]) =>
      (new Gupdate_traitementDataBuilder()..update(updates))._build();

  _$Gupdate_traitementData._(
      {required this.G__typename, required this.putTreatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_traitementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        putTreatment, r'Gupdate_traitementData', 'putTreatment');
  }

  @override
  Gupdate_traitementData rebuild(
          void Function(Gupdate_traitementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_traitementDataBuilder toBuilder() =>
      new Gupdate_traitementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_traitementData &&
        G__typename == other.G__typename &&
        putTreatment == other.putTreatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putTreatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_traitementData')
          ..add('G__typename', G__typename)
          ..add('putTreatment', putTreatment))
        .toString();
  }
}

class Gupdate_traitementDataBuilder
    implements Builder<Gupdate_traitementData, Gupdate_traitementDataBuilder> {
  _$Gupdate_traitementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_traitementData_putTreatmentBuilder? _putTreatment;
  Gupdate_traitementData_putTreatmentBuilder get putTreatment =>
      _$this._putTreatment ??= new Gupdate_traitementData_putTreatmentBuilder();
  set putTreatment(Gupdate_traitementData_putTreatmentBuilder? putTreatment) =>
      _$this._putTreatment = putTreatment;

  Gupdate_traitementDataBuilder() {
    Gupdate_traitementData._initializeBuilder(this);
  }

  Gupdate_traitementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putTreatment = $v.putTreatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_traitementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_traitementData;
  }

  @override
  void update(void Function(Gupdate_traitementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_traitementData build() => _build();

  _$Gupdate_traitementData _build() {
    _$Gupdate_traitementData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_traitementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_traitementData', 'G__typename'),
              putTreatment: putTreatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putTreatment';
        putTreatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_traitementData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_traitementData_putTreatment
    extends Gupdate_traitementData_putTreatment {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_traitementData_putTreatment(
          [void Function(Gupdate_traitementData_putTreatmentBuilder)?
              updates]) =>
      (new Gupdate_traitementData_putTreatmentBuilder()..update(updates))
          ._build();

  _$Gupdate_traitementData_putTreatment._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_traitementData_putTreatment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_traitementData_putTreatment', 'success');
  }

  @override
  Gupdate_traitementData_putTreatment rebuild(
          void Function(Gupdate_traitementData_putTreatmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_traitementData_putTreatmentBuilder toBuilder() =>
      new Gupdate_traitementData_putTreatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_traitementData_putTreatment &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_traitementData_putTreatment')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_traitementData_putTreatmentBuilder
    implements
        Builder<Gupdate_traitementData_putTreatment,
            Gupdate_traitementData_putTreatmentBuilder> {
  _$Gupdate_traitementData_putTreatment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_traitementData_putTreatmentBuilder() {
    Gupdate_traitementData_putTreatment._initializeBuilder(this);
  }

  Gupdate_traitementData_putTreatmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_traitementData_putTreatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_traitementData_putTreatment;
  }

  @override
  void update(
      void Function(Gupdate_traitementData_putTreatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_traitementData_putTreatment build() => _build();

  _$Gupdate_traitementData_putTreatment _build() {
    final _$result = _$v ??
        new _$Gupdate_traitementData_putTreatment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_traitementData_putTreatment', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gupdate_traitementData_putTreatment', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
