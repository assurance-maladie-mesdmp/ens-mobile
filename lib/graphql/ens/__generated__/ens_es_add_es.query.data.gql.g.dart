// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_add_es.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_etablissement_de_santeData>
    _$gaddEtablissementDeSanteDataSerializer =
    new _$Gadd_etablissement_de_santeDataSerializer();
Serializer<Gadd_etablissement_de_santeData_postHealthStructure>
    _$gaddEtablissementDeSanteDataPostHealthStructureSerializer =
    new _$Gadd_etablissement_de_santeData_postHealthStructureSerializer();

class _$Gadd_etablissement_de_santeDataSerializer
    implements StructuredSerializer<Gadd_etablissement_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gadd_etablissement_de_santeData,
    _$Gadd_etablissement_de_santeData
  ];
  @override
  final String wireName = 'Gadd_etablissement_de_santeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_etablissement_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postHealthStructure',
      serializers.serialize(object.postHealthStructure,
          specifiedType: const FullType(
              Gadd_etablissement_de_santeData_postHealthStructure)),
    ];

    return result;
  }

  @override
  Gadd_etablissement_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_etablissement_de_santeDataBuilder();

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
        case 'postHealthStructure':
          result.postHealthStructure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gadd_etablissement_de_santeData_postHealthStructure))!
              as Gadd_etablissement_de_santeData_postHealthStructure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_etablissement_de_santeData_postHealthStructureSerializer
    implements
        StructuredSerializer<
            Gadd_etablissement_de_santeData_postHealthStructure> {
  @override
  final Iterable<Type> types = const [
    Gadd_etablissement_de_santeData_postHealthStructure,
    _$Gadd_etablissement_de_santeData_postHealthStructure
  ];
  @override
  final String wireName = 'Gadd_etablissement_de_santeData_postHealthStructure';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gadd_etablissement_de_santeData_postHealthStructure object,
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
  Gadd_etablissement_de_santeData_postHealthStructure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gadd_etablissement_de_santeData_postHealthStructureBuilder();

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

class _$Gadd_etablissement_de_santeData
    extends Gadd_etablissement_de_santeData {
  @override
  final String G__typename;
  @override
  final Gadd_etablissement_de_santeData_postHealthStructure postHealthStructure;

  factory _$Gadd_etablissement_de_santeData(
          [void Function(Gadd_etablissement_de_santeDataBuilder)? updates]) =>
      (new Gadd_etablissement_de_santeDataBuilder()..update(updates))._build();

  _$Gadd_etablissement_de_santeData._(
      {required this.G__typename, required this.postHealthStructure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_etablissement_de_santeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postHealthStructure,
        r'Gadd_etablissement_de_santeData', 'postHealthStructure');
  }

  @override
  Gadd_etablissement_de_santeData rebuild(
          void Function(Gadd_etablissement_de_santeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_etablissement_de_santeDataBuilder toBuilder() =>
      new Gadd_etablissement_de_santeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_etablissement_de_santeData &&
        G__typename == other.G__typename &&
        postHealthStructure == other.postHealthStructure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postHealthStructure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_etablissement_de_santeData')
          ..add('G__typename', G__typename)
          ..add('postHealthStructure', postHealthStructure))
        .toString();
  }
}

class Gadd_etablissement_de_santeDataBuilder
    implements
        Builder<Gadd_etablissement_de_santeData,
            Gadd_etablissement_de_santeDataBuilder> {
  _$Gadd_etablissement_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_etablissement_de_santeData_postHealthStructureBuilder?
      _postHealthStructure;
  Gadd_etablissement_de_santeData_postHealthStructureBuilder
      get postHealthStructure => _$this._postHealthStructure ??=
          new Gadd_etablissement_de_santeData_postHealthStructureBuilder();
  set postHealthStructure(
          Gadd_etablissement_de_santeData_postHealthStructureBuilder?
              postHealthStructure) =>
      _$this._postHealthStructure = postHealthStructure;

  Gadd_etablissement_de_santeDataBuilder() {
    Gadd_etablissement_de_santeData._initializeBuilder(this);
  }

  Gadd_etablissement_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postHealthStructure = $v.postHealthStructure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_etablissement_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_etablissement_de_santeData;
  }

  @override
  void update(void Function(Gadd_etablissement_de_santeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_etablissement_de_santeData build() => _build();

  _$Gadd_etablissement_de_santeData _build() {
    _$Gadd_etablissement_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_etablissement_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gadd_etablissement_de_santeData', 'G__typename'),
              postHealthStructure: postHealthStructure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postHealthStructure';
        postHealthStructure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_etablissement_de_santeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_etablissement_de_santeData_postHealthStructure
    extends Gadd_etablissement_de_santeData_postHealthStructure {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_etablissement_de_santeData_postHealthStructure(
          [void Function(
                  Gadd_etablissement_de_santeData_postHealthStructureBuilder)?
              updates]) =>
      (new Gadd_etablissement_de_santeData_postHealthStructureBuilder()
            ..update(updates))
          ._build();

  _$Gadd_etablissement_de_santeData_postHealthStructure._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gadd_etablissement_de_santeData_postHealthStructure', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gadd_etablissement_de_santeData_postHealthStructure', 'success');
  }

  @override
  Gadd_etablissement_de_santeData_postHealthStructure rebuild(
          void Function(
                  Gadd_etablissement_de_santeData_postHealthStructureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_etablissement_de_santeData_postHealthStructureBuilder toBuilder() =>
      new Gadd_etablissement_de_santeData_postHealthStructureBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_etablissement_de_santeData_postHealthStructure &&
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
            r'Gadd_etablissement_de_santeData_postHealthStructure')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_etablissement_de_santeData_postHealthStructureBuilder
    implements
        Builder<Gadd_etablissement_de_santeData_postHealthStructure,
            Gadd_etablissement_de_santeData_postHealthStructureBuilder> {
  _$Gadd_etablissement_de_santeData_postHealthStructure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_etablissement_de_santeData_postHealthStructureBuilder() {
    Gadd_etablissement_de_santeData_postHealthStructure._initializeBuilder(
        this);
  }

  Gadd_etablissement_de_santeData_postHealthStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_etablissement_de_santeData_postHealthStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_etablissement_de_santeData_postHealthStructure;
  }

  @override
  void update(
      void Function(Gadd_etablissement_de_santeData_postHealthStructureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_etablissement_de_santeData_postHealthStructure build() => _build();

  _$Gadd_etablissement_de_santeData_postHealthStructure _build() {
    final _$result = _$v ??
        new _$Gadd_etablissement_de_santeData_postHealthStructure._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gadd_etablissement_de_santeData_postHealthStructure',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gadd_etablissement_de_santeData_postHealthStructure',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
