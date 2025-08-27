// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_acteur_sante_auteur.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GepisodePsAuteurData> _$gepisodePsAuteurDataSerializer =
    new _$GepisodePsAuteurDataSerializer();
Serializer<GepisodeEsAuteurData> _$gepisodeEsAuteurDataSerializer =
    new _$GepisodeEsAuteurDataSerializer();

class _$GepisodePsAuteurDataSerializer
    implements StructuredSerializer<GepisodePsAuteurData> {
  @override
  final Iterable<Type> types = const [
    GepisodePsAuteurData,
    _$GepisodePsAuteurData
  ];
  @override
  final String wireName = 'GepisodePsAuteurData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodePsAuteurData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'profession',
      serializers.serialize(object.profession,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'specialities',
      serializers.serialize(object.specialities,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GepisodePsAuteurData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodePsAuteurDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profession':
          result.profession.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'specialities':
          result.specialities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeEsAuteurDataSerializer
    implements StructuredSerializer<GepisodeEsAuteurData> {
  @override
  final Iterable<Type> types = const [
    GepisodeEsAuteurData,
    _$GepisodeEsAuteurData
  ];
  @override
  final String wireName = 'GepisodeEsAuteurData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeEsAuteurData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GepisodeEsAuteurData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeEsAuteurDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodePsAuteurData extends GepisodePsAuteurData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;
  @override
  final BuiltList<String> profession;
  @override
  final BuiltList<String> specialities;

  factory _$GepisodePsAuteurData(
          [void Function(GepisodePsAuteurDataBuilder)? updates]) =>
      (new GepisodePsAuteurDataBuilder()..update(updates))._build();

  _$GepisodePsAuteurData._(
      {required this.G__typename,
      required this.id,
      required this.fullName,
      required this.profession,
      required this.specialities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GepisodePsAuteurData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GepisodePsAuteurData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GepisodePsAuteurData', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        profession, r'GepisodePsAuteurData', 'profession');
    BuiltValueNullFieldError.checkNotNull(
        specialities, r'GepisodePsAuteurData', 'specialities');
  }

  @override
  GepisodePsAuteurData rebuild(
          void Function(GepisodePsAuteurDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodePsAuteurDataBuilder toBuilder() =>
      new GepisodePsAuteurDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodePsAuteurData &&
        G__typename == other.G__typename &&
        id == other.id &&
        fullName == other.fullName &&
        profession == other.profession &&
        specialities == other.specialities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, specialities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodePsAuteurData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('profession', profession)
          ..add('specialities', specialities))
        .toString();
  }
}

class GepisodePsAuteurDataBuilder
    implements Builder<GepisodePsAuteurData, GepisodePsAuteurDataBuilder> {
  _$GepisodePsAuteurData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  ListBuilder<String>? _profession;
  ListBuilder<String> get profession =>
      _$this._profession ??= new ListBuilder<String>();
  set profession(ListBuilder<String>? profession) =>
      _$this._profession = profession;

  ListBuilder<String>? _specialities;
  ListBuilder<String> get specialities =>
      _$this._specialities ??= new ListBuilder<String>();
  set specialities(ListBuilder<String>? specialities) =>
      _$this._specialities = specialities;

  GepisodePsAuteurDataBuilder() {
    GepisodePsAuteurData._initializeBuilder(this);
  }

  GepisodePsAuteurDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _fullName = $v.fullName;
      _profession = $v.profession.toBuilder();
      _specialities = $v.specialities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodePsAuteurData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodePsAuteurData;
  }

  @override
  void update(void Function(GepisodePsAuteurDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodePsAuteurData build() => _build();

  _$GepisodePsAuteurData _build() {
    _$GepisodePsAuteurData _$result;
    try {
      _$result = _$v ??
          new _$GepisodePsAuteurData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GepisodePsAuteurData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GepisodePsAuteurData', 'id'),
              fullName: BuiltValueNullFieldError.checkNotNull(
                  fullName, r'GepisodePsAuteurData', 'fullName'),
              profession: profession.build(),
              specialities: specialities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profession';
        profession.build();
        _$failedField = 'specialities';
        specialities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodePsAuteurData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeEsAuteurData extends GepisodeEsAuteurData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GepisodeEsAuteurData(
          [void Function(GepisodeEsAuteurDataBuilder)? updates]) =>
      (new GepisodeEsAuteurDataBuilder()..update(updates))._build();

  _$GepisodeEsAuteurData._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GepisodeEsAuteurData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GepisodeEsAuteurData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GepisodeEsAuteurData', 'name');
  }

  @override
  GepisodeEsAuteurData rebuild(
          void Function(GepisodeEsAuteurDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeEsAuteurDataBuilder toBuilder() =>
      new GepisodeEsAuteurDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeEsAuteurData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeEsAuteurData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GepisodeEsAuteurDataBuilder
    implements Builder<GepisodeEsAuteurData, GepisodeEsAuteurDataBuilder> {
  _$GepisodeEsAuteurData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GepisodeEsAuteurDataBuilder() {
    GepisodeEsAuteurData._initializeBuilder(this);
  }

  GepisodeEsAuteurDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeEsAuteurData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeEsAuteurData;
  }

  @override
  void update(void Function(GepisodeEsAuteurDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeEsAuteurData build() => _build();

  _$GepisodeEsAuteurData _build() {
    final _$result = _$v ??
        new _$GepisodeEsAuteurData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GepisodeEsAuteurData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GepisodeEsAuteurData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GepisodeEsAuteurData', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
