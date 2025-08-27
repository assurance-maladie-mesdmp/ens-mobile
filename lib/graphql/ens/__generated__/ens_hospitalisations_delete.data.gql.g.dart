// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_delete.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_hospitalisationData> _$gdeleteHospitalisationDataSerializer =
    new _$Gdelete_hospitalisationDataSerializer();
Serializer<Gdelete_hospitalisationData_deleteHospitalization>
    _$gdeleteHospitalisationDataDeleteHospitalizationSerializer =
    new _$Gdelete_hospitalisationData_deleteHospitalizationSerializer();

class _$Gdelete_hospitalisationDataSerializer
    implements StructuredSerializer<Gdelete_hospitalisationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_hospitalisationData,
    _$Gdelete_hospitalisationData
  ];
  @override
  final String wireName = 'Gdelete_hospitalisationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_hospitalisationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteHospitalization',
      serializers.serialize(object.deleteHospitalization,
          specifiedType: const FullType(
              Gdelete_hospitalisationData_deleteHospitalization)),
    ];

    return result;
  }

  @override
  Gdelete_hospitalisationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_hospitalisationDataBuilder();

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
        case 'deleteHospitalization':
          result.deleteHospitalization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_hospitalisationData_deleteHospitalization))!
              as Gdelete_hospitalisationData_deleteHospitalization);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_hospitalisationData_deleteHospitalizationSerializer
    implements
        StructuredSerializer<
            Gdelete_hospitalisationData_deleteHospitalization> {
  @override
  final Iterable<Type> types = const [
    Gdelete_hospitalisationData_deleteHospitalization,
    _$Gdelete_hospitalisationData_deleteHospitalization
  ];
  @override
  final String wireName = 'Gdelete_hospitalisationData_deleteHospitalization';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_hospitalisationData_deleteHospitalization object,
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
  Gdelete_hospitalisationData_deleteHospitalization deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_hospitalisationData_deleteHospitalizationBuilder();

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

class _$Gdelete_hospitalisationData extends Gdelete_hospitalisationData {
  @override
  final String G__typename;
  @override
  final Gdelete_hospitalisationData_deleteHospitalization deleteHospitalization;

  factory _$Gdelete_hospitalisationData(
          [void Function(Gdelete_hospitalisationDataBuilder)? updates]) =>
      (new Gdelete_hospitalisationDataBuilder()..update(updates))._build();

  _$Gdelete_hospitalisationData._(
      {required this.G__typename, required this.deleteHospitalization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_hospitalisationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteHospitalization,
        r'Gdelete_hospitalisationData', 'deleteHospitalization');
  }

  @override
  Gdelete_hospitalisationData rebuild(
          void Function(Gdelete_hospitalisationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_hospitalisationDataBuilder toBuilder() =>
      new Gdelete_hospitalisationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_hospitalisationData &&
        G__typename == other.G__typename &&
        deleteHospitalization == other.deleteHospitalization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteHospitalization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_hospitalisationData')
          ..add('G__typename', G__typename)
          ..add('deleteHospitalization', deleteHospitalization))
        .toString();
  }
}

class Gdelete_hospitalisationDataBuilder
    implements
        Builder<Gdelete_hospitalisationData,
            Gdelete_hospitalisationDataBuilder> {
  _$Gdelete_hospitalisationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_hospitalisationData_deleteHospitalizationBuilder?
      _deleteHospitalization;
  Gdelete_hospitalisationData_deleteHospitalizationBuilder
      get deleteHospitalization => _$this._deleteHospitalization ??=
          new Gdelete_hospitalisationData_deleteHospitalizationBuilder();
  set deleteHospitalization(
          Gdelete_hospitalisationData_deleteHospitalizationBuilder?
              deleteHospitalization) =>
      _$this._deleteHospitalization = deleteHospitalization;

  Gdelete_hospitalisationDataBuilder() {
    Gdelete_hospitalisationData._initializeBuilder(this);
  }

  Gdelete_hospitalisationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteHospitalization = $v.deleteHospitalization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_hospitalisationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_hospitalisationData;
  }

  @override
  void update(void Function(Gdelete_hospitalisationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_hospitalisationData build() => _build();

  _$Gdelete_hospitalisationData _build() {
    _$Gdelete_hospitalisationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_hospitalisationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_hospitalisationData', 'G__typename'),
              deleteHospitalization: deleteHospitalization.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteHospitalization';
        deleteHospitalization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_hospitalisationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_hospitalisationData_deleteHospitalization
    extends Gdelete_hospitalisationData_deleteHospitalization {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_hospitalisationData_deleteHospitalization(
          [void Function(
                  Gdelete_hospitalisationData_deleteHospitalizationBuilder)?
              updates]) =>
      (new Gdelete_hospitalisationData_deleteHospitalizationBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_hospitalisationData_deleteHospitalization._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_hospitalisationData_deleteHospitalization', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_hospitalisationData_deleteHospitalization', 'success');
  }

  @override
  Gdelete_hospitalisationData_deleteHospitalization rebuild(
          void Function(
                  Gdelete_hospitalisationData_deleteHospitalizationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_hospitalisationData_deleteHospitalizationBuilder toBuilder() =>
      new Gdelete_hospitalisationData_deleteHospitalizationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_hospitalisationData_deleteHospitalization &&
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
            r'Gdelete_hospitalisationData_deleteHospitalization')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_hospitalisationData_deleteHospitalizationBuilder
    implements
        Builder<Gdelete_hospitalisationData_deleteHospitalization,
            Gdelete_hospitalisationData_deleteHospitalizationBuilder> {
  _$Gdelete_hospitalisationData_deleteHospitalization? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_hospitalisationData_deleteHospitalizationBuilder() {
    Gdelete_hospitalisationData_deleteHospitalization._initializeBuilder(this);
  }

  Gdelete_hospitalisationData_deleteHospitalizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_hospitalisationData_deleteHospitalization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_hospitalisationData_deleteHospitalization;
  }

  @override
  void update(
      void Function(Gdelete_hospitalisationData_deleteHospitalizationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_hospitalisationData_deleteHospitalization build() => _build();

  _$Gdelete_hospitalisationData_deleteHospitalization _build() {
    final _$result = _$v ??
        new _$Gdelete_hospitalisationData_deleteHospitalization._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_hospitalisationData_deleteHospitalization',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_hospitalisationData_deleteHospitalization',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
