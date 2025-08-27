// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_delete_traitement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_traitementData> _$gdeleteTraitementDataSerializer =
    new _$Gdelete_traitementDataSerializer();
Serializer<Gdelete_traitementData_deleteTreatment>
    _$gdeleteTraitementDataDeleteTreatmentSerializer =
    new _$Gdelete_traitementData_deleteTreatmentSerializer();

class _$Gdelete_traitementDataSerializer
    implements StructuredSerializer<Gdelete_traitementData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_traitementData,
    _$Gdelete_traitementData
  ];
  @override
  final String wireName = 'Gdelete_traitementData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_traitementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteTreatment',
      serializers.serialize(object.deleteTreatment,
          specifiedType:
              const FullType(Gdelete_traitementData_deleteTreatment)),
    ];

    return result;
  }

  @override
  Gdelete_traitementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_traitementDataBuilder();

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
        case 'deleteTreatment':
          result.deleteTreatment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_traitementData_deleteTreatment))!
              as Gdelete_traitementData_deleteTreatment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_traitementData_deleteTreatmentSerializer
    implements StructuredSerializer<Gdelete_traitementData_deleteTreatment> {
  @override
  final Iterable<Type> types = const [
    Gdelete_traitementData_deleteTreatment,
    _$Gdelete_traitementData_deleteTreatment
  ];
  @override
  final String wireName = 'Gdelete_traitementData_deleteTreatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_traitementData_deleteTreatment object,
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
  Gdelete_traitementData_deleteTreatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_traitementData_deleteTreatmentBuilder();

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

class _$Gdelete_traitementData extends Gdelete_traitementData {
  @override
  final String G__typename;
  @override
  final Gdelete_traitementData_deleteTreatment deleteTreatment;

  factory _$Gdelete_traitementData(
          [void Function(Gdelete_traitementDataBuilder)? updates]) =>
      (new Gdelete_traitementDataBuilder()..update(updates))._build();

  _$Gdelete_traitementData._(
      {required this.G__typename, required this.deleteTreatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_traitementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteTreatment, r'Gdelete_traitementData', 'deleteTreatment');
  }

  @override
  Gdelete_traitementData rebuild(
          void Function(Gdelete_traitementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_traitementDataBuilder toBuilder() =>
      new Gdelete_traitementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_traitementData &&
        G__typename == other.G__typename &&
        deleteTreatment == other.deleteTreatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteTreatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_traitementData')
          ..add('G__typename', G__typename)
          ..add('deleteTreatment', deleteTreatment))
        .toString();
  }
}

class Gdelete_traitementDataBuilder
    implements Builder<Gdelete_traitementData, Gdelete_traitementDataBuilder> {
  _$Gdelete_traitementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_traitementData_deleteTreatmentBuilder? _deleteTreatment;
  Gdelete_traitementData_deleteTreatmentBuilder get deleteTreatment =>
      _$this._deleteTreatment ??=
          new Gdelete_traitementData_deleteTreatmentBuilder();
  set deleteTreatment(
          Gdelete_traitementData_deleteTreatmentBuilder? deleteTreatment) =>
      _$this._deleteTreatment = deleteTreatment;

  Gdelete_traitementDataBuilder() {
    Gdelete_traitementData._initializeBuilder(this);
  }

  Gdelete_traitementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteTreatment = $v.deleteTreatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_traitementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_traitementData;
  }

  @override
  void update(void Function(Gdelete_traitementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_traitementData build() => _build();

  _$Gdelete_traitementData _build() {
    _$Gdelete_traitementData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_traitementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_traitementData', 'G__typename'),
              deleteTreatment: deleteTreatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteTreatment';
        deleteTreatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_traitementData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_traitementData_deleteTreatment
    extends Gdelete_traitementData_deleteTreatment {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_traitementData_deleteTreatment(
          [void Function(Gdelete_traitementData_deleteTreatmentBuilder)?
              updates]) =>
      (new Gdelete_traitementData_deleteTreatmentBuilder()..update(updates))
          ._build();

  _$Gdelete_traitementData_deleteTreatment._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_traitementData_deleteTreatment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_traitementData_deleteTreatment', 'success');
  }

  @override
  Gdelete_traitementData_deleteTreatment rebuild(
          void Function(Gdelete_traitementData_deleteTreatmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_traitementData_deleteTreatmentBuilder toBuilder() =>
      new Gdelete_traitementData_deleteTreatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_traitementData_deleteTreatment &&
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
            r'Gdelete_traitementData_deleteTreatment')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_traitementData_deleteTreatmentBuilder
    implements
        Builder<Gdelete_traitementData_deleteTreatment,
            Gdelete_traitementData_deleteTreatmentBuilder> {
  _$Gdelete_traitementData_deleteTreatment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_traitementData_deleteTreatmentBuilder() {
    Gdelete_traitementData_deleteTreatment._initializeBuilder(this);
  }

  Gdelete_traitementData_deleteTreatmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_traitementData_deleteTreatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_traitementData_deleteTreatment;
  }

  @override
  void update(
      void Function(Gdelete_traitementData_deleteTreatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_traitementData_deleteTreatment build() => _build();

  _$Gdelete_traitementData_deleteTreatment _build() {
    final _$result = _$v ??
        new _$Gdelete_traitementData_deleteTreatment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_traitementData_deleteTreatment', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_traitementData_deleteTreatment', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
