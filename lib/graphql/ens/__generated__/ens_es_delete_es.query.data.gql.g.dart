// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_delete_es.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_etablissement_de_santeData>
    _$gdeleteEtablissementDeSanteDataSerializer =
    new _$Gdelete_etablissement_de_santeDataSerializer();
Serializer<Gdelete_etablissement_de_santeData_deleteHealthStructure>
    _$gdeleteEtablissementDeSanteDataDeleteHealthStructureSerializer =
    new _$Gdelete_etablissement_de_santeData_deleteHealthStructureSerializer();

class _$Gdelete_etablissement_de_santeDataSerializer
    implements StructuredSerializer<Gdelete_etablissement_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_etablissement_de_santeData,
    _$Gdelete_etablissement_de_santeData
  ];
  @override
  final String wireName = 'Gdelete_etablissement_de_santeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_etablissement_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteHealthStructure',
      serializers.serialize(object.deleteHealthStructure,
          specifiedType: const FullType(
              Gdelete_etablissement_de_santeData_deleteHealthStructure)),
    ];

    return result;
  }

  @override
  Gdelete_etablissement_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_etablissement_de_santeDataBuilder();

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
        case 'deleteHealthStructure':
          result.deleteHealthStructure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_etablissement_de_santeData_deleteHealthStructure))!
              as Gdelete_etablissement_de_santeData_deleteHealthStructure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_etablissement_de_santeData_deleteHealthStructureSerializer
    implements
        StructuredSerializer<
            Gdelete_etablissement_de_santeData_deleteHealthStructure> {
  @override
  final Iterable<Type> types = const [
    Gdelete_etablissement_de_santeData_deleteHealthStructure,
    _$Gdelete_etablissement_de_santeData_deleteHealthStructure
  ];
  @override
  final String wireName =
      'Gdelete_etablissement_de_santeData_deleteHealthStructure';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_etablissement_de_santeData_deleteHealthStructure object,
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
  Gdelete_etablissement_de_santeData_deleteHealthStructure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder();

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

class _$Gdelete_etablissement_de_santeData
    extends Gdelete_etablissement_de_santeData {
  @override
  final String G__typename;
  @override
  final Gdelete_etablissement_de_santeData_deleteHealthStructure
      deleteHealthStructure;

  factory _$Gdelete_etablissement_de_santeData(
          [void Function(Gdelete_etablissement_de_santeDataBuilder)?
              updates]) =>
      (new Gdelete_etablissement_de_santeDataBuilder()..update(updates))
          ._build();

  _$Gdelete_etablissement_de_santeData._(
      {required this.G__typename, required this.deleteHealthStructure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_etablissement_de_santeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteHealthStructure,
        r'Gdelete_etablissement_de_santeData', 'deleteHealthStructure');
  }

  @override
  Gdelete_etablissement_de_santeData rebuild(
          void Function(Gdelete_etablissement_de_santeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_etablissement_de_santeDataBuilder toBuilder() =>
      new Gdelete_etablissement_de_santeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_etablissement_de_santeData &&
        G__typename == other.G__typename &&
        deleteHealthStructure == other.deleteHealthStructure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteHealthStructure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_etablissement_de_santeData')
          ..add('G__typename', G__typename)
          ..add('deleteHealthStructure', deleteHealthStructure))
        .toString();
  }
}

class Gdelete_etablissement_de_santeDataBuilder
    implements
        Builder<Gdelete_etablissement_de_santeData,
            Gdelete_etablissement_de_santeDataBuilder> {
  _$Gdelete_etablissement_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder?
      _deleteHealthStructure;
  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder
      get deleteHealthStructure => _$this._deleteHealthStructure ??=
          new Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder();
  set deleteHealthStructure(
          Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder?
              deleteHealthStructure) =>
      _$this._deleteHealthStructure = deleteHealthStructure;

  Gdelete_etablissement_de_santeDataBuilder() {
    Gdelete_etablissement_de_santeData._initializeBuilder(this);
  }

  Gdelete_etablissement_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteHealthStructure = $v.deleteHealthStructure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_etablissement_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_etablissement_de_santeData;
  }

  @override
  void update(
      void Function(Gdelete_etablissement_de_santeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_etablissement_de_santeData build() => _build();

  _$Gdelete_etablissement_de_santeData _build() {
    _$Gdelete_etablissement_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_etablissement_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_etablissement_de_santeData', 'G__typename'),
              deleteHealthStructure: deleteHealthStructure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteHealthStructure';
        deleteHealthStructure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_etablissement_de_santeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_etablissement_de_santeData_deleteHealthStructure
    extends Gdelete_etablissement_de_santeData_deleteHealthStructure {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_etablissement_de_santeData_deleteHealthStructure(
          [void Function(
                  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder)?
              updates]) =>
      (new Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_etablissement_de_santeData_deleteHealthStructure._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_etablissement_de_santeData_deleteHealthStructure',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_etablissement_de_santeData_deleteHealthStructure', 'success');
  }

  @override
  Gdelete_etablissement_de_santeData_deleteHealthStructure rebuild(
          void Function(
                  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder toBuilder() =>
      new Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_etablissement_de_santeData_deleteHealthStructure &&
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
            r'Gdelete_etablissement_de_santeData_deleteHealthStructure')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder
    implements
        Builder<Gdelete_etablissement_de_santeData_deleteHealthStructure,
            Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder> {
  _$Gdelete_etablissement_de_santeData_deleteHealthStructure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder() {
    Gdelete_etablissement_de_santeData_deleteHealthStructure._initializeBuilder(
        this);
  }

  Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_etablissement_de_santeData_deleteHealthStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_etablissement_de_santeData_deleteHealthStructure;
  }

  @override
  void update(
      void Function(
              Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_etablissement_de_santeData_deleteHealthStructure build() => _build();

  _$Gdelete_etablissement_de_santeData_deleteHealthStructure _build() {
    final _$result = _$v ??
        new _$Gdelete_etablissement_de_santeData_deleteHealthStructure._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_etablissement_de_santeData_deleteHealthStructure',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_etablissement_de_santeData_deleteHealthStructure',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
