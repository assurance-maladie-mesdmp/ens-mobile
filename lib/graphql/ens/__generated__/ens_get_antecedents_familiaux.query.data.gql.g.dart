// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_antecedents_familiaux.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_antecedents_familiauxData>
    _$ggetAntecedentsFamiliauxDataSerializer =
    new _$Gget_antecedents_familiauxDataSerializer();
Serializer<Gget_antecedents_familiauxData_familyHistories>
    _$ggetAntecedentsFamiliauxDataFamilyHistoriesSerializer =
    new _$Gget_antecedents_familiauxData_familyHistoriesSerializer();
Serializer<Gget_antecedents_familiauxData_familyHistories_familyHistories>
    _$ggetAntecedentsFamiliauxDataFamilyHistoriesFamilyHistoriesSerializer =
    new _$Gget_antecedents_familiauxData_familyHistories_familyHistoriesSerializer();
Serializer<Gget_antecedents_familiauxData_unconcerned>
    _$ggetAntecedentsFamiliauxDataUnconcernedSerializer =
    new _$Gget_antecedents_familiauxData_unconcernedSerializer();

class _$Gget_antecedents_familiauxDataSerializer
    implements StructuredSerializer<Gget_antecedents_familiauxData> {
  @override
  final Iterable<Type> types = const [
    Gget_antecedents_familiauxData,
    _$Gget_antecedents_familiauxData
  ];
  @override
  final String wireName = 'Gget_antecedents_familiauxData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_antecedents_familiauxData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'familyHistories',
      serializers.serialize(object.familyHistories,
          specifiedType:
              const FullType(Gget_antecedents_familiauxData_familyHistories)),
      'unconcerned',
      serializers.serialize(object.unconcerned,
          specifiedType:
              const FullType(Gget_antecedents_familiauxData_unconcerned)),
    ];

    return result;
  }

  @override
  Gget_antecedents_familiauxData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_antecedents_familiauxDataBuilder();

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
        case 'familyHistories':
          result.familyHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_antecedents_familiauxData_familyHistories))!
              as Gget_antecedents_familiauxData_familyHistories);
          break;
        case 'unconcerned':
          result.unconcerned.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_antecedents_familiauxData_unconcerned))!
              as Gget_antecedents_familiauxData_unconcerned);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_antecedents_familiauxData_familyHistoriesSerializer
    implements
        StructuredSerializer<Gget_antecedents_familiauxData_familyHistories> {
  @override
  final Iterable<Type> types = const [
    Gget_antecedents_familiauxData_familyHistories,
    _$Gget_antecedents_familiauxData_familyHistories
  ];
  @override
  final String wireName = 'Gget_antecedents_familiauxData_familyHistories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_antecedents_familiauxData_familyHistories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'familyHistories',
      serializers.serialize(object.familyHistories,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_antecedents_familiauxData_familyHistories_familyHistories)
          ])),
    ];

    return result;
  }

  @override
  Gget_antecedents_familiauxData_familyHistories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_antecedents_familiauxData_familyHistoriesBuilder();

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
        case 'familyHistories':
          result.familyHistories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_antecedents_familiauxData_familyHistories_familyHistories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_antecedents_familiauxData_familyHistories_familyHistoriesSerializer
    implements
        StructuredSerializer<
            Gget_antecedents_familiauxData_familyHistories_familyHistories> {
  @override
  final Iterable<Type> types = const [
    Gget_antecedents_familiauxData_familyHistories_familyHistories,
    _$Gget_antecedents_familiauxData_familyHistories_familyHistories
  ];
  @override
  final String wireName =
      'Gget_antecedents_familiauxData_familyHistories_familyHistories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_antecedents_familiauxData_familyHistories_familyHistories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'familyRelationship',
      serializers.serialize(object.familyRelationship,
          specifiedType: const FullType(_i2.GFamilyRelationshipEnum)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_antecedents_familiauxData_familyHistories_familyHistories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder();

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
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'familyRelationship':
          result.familyRelationship = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GFamilyRelationshipEnum))!
              as _i2.GFamilyRelationshipEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_antecedents_familiauxData_unconcernedSerializer
    implements
        StructuredSerializer<Gget_antecedents_familiauxData_unconcerned> {
  @override
  final Iterable<Type> types = const [
    Gget_antecedents_familiauxData_unconcerned,
    _$Gget_antecedents_familiauxData_unconcerned
  ];
  @override
  final String wireName = 'Gget_antecedents_familiauxData_unconcerned';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_antecedents_familiauxData_unconcerned object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.declarationDate;
    if (value != null) {
      result
        ..add('declarationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_antecedents_familiauxData_unconcerned deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_antecedents_familiauxData_unconcernedBuilder();

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
        case 'declarationDate':
          result.declarationDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_antecedents_familiauxData extends Gget_antecedents_familiauxData {
  @override
  final String G__typename;
  @override
  final Gget_antecedents_familiauxData_familyHistories familyHistories;
  @override
  final Gget_antecedents_familiauxData_unconcerned unconcerned;

  factory _$Gget_antecedents_familiauxData(
          [void Function(Gget_antecedents_familiauxDataBuilder)? updates]) =>
      (new Gget_antecedents_familiauxDataBuilder()..update(updates))._build();

  _$Gget_antecedents_familiauxData._(
      {required this.G__typename,
      required this.familyHistories,
      required this.unconcerned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_antecedents_familiauxData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        familyHistories, r'Gget_antecedents_familiauxData', 'familyHistories');
    BuiltValueNullFieldError.checkNotNull(
        unconcerned, r'Gget_antecedents_familiauxData', 'unconcerned');
  }

  @override
  Gget_antecedents_familiauxData rebuild(
          void Function(Gget_antecedents_familiauxDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_antecedents_familiauxDataBuilder toBuilder() =>
      new Gget_antecedents_familiauxDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_antecedents_familiauxData &&
        G__typename == other.G__typename &&
        familyHistories == other.familyHistories &&
        unconcerned == other.unconcerned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, familyHistories.hashCode);
    _$hash = $jc(_$hash, unconcerned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_antecedents_familiauxData')
          ..add('G__typename', G__typename)
          ..add('familyHistories', familyHistories)
          ..add('unconcerned', unconcerned))
        .toString();
  }
}

class Gget_antecedents_familiauxDataBuilder
    implements
        Builder<Gget_antecedents_familiauxData,
            Gget_antecedents_familiauxDataBuilder> {
  _$Gget_antecedents_familiauxData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_antecedents_familiauxData_familyHistoriesBuilder? _familyHistories;
  Gget_antecedents_familiauxData_familyHistoriesBuilder get familyHistories =>
      _$this._familyHistories ??=
          new Gget_antecedents_familiauxData_familyHistoriesBuilder();
  set familyHistories(
          Gget_antecedents_familiauxData_familyHistoriesBuilder?
              familyHistories) =>
      _$this._familyHistories = familyHistories;

  Gget_antecedents_familiauxData_unconcernedBuilder? _unconcerned;
  Gget_antecedents_familiauxData_unconcernedBuilder get unconcerned =>
      _$this._unconcerned ??=
          new Gget_antecedents_familiauxData_unconcernedBuilder();
  set unconcerned(
          Gget_antecedents_familiauxData_unconcernedBuilder? unconcerned) =>
      _$this._unconcerned = unconcerned;

  Gget_antecedents_familiauxDataBuilder() {
    Gget_antecedents_familiauxData._initializeBuilder(this);
  }

  Gget_antecedents_familiauxDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _familyHistories = $v.familyHistories.toBuilder();
      _unconcerned = $v.unconcerned.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_antecedents_familiauxData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_antecedents_familiauxData;
  }

  @override
  void update(void Function(Gget_antecedents_familiauxDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_antecedents_familiauxData build() => _build();

  _$Gget_antecedents_familiauxData _build() {
    _$Gget_antecedents_familiauxData _$result;
    try {
      _$result = _$v ??
          new _$Gget_antecedents_familiauxData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_antecedents_familiauxData', 'G__typename'),
              familyHistories: familyHistories.build(),
              unconcerned: unconcerned.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'familyHistories';
        familyHistories.build();
        _$failedField = 'unconcerned';
        unconcerned.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_antecedents_familiauxData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_antecedents_familiauxData_familyHistories
    extends Gget_antecedents_familiauxData_familyHistories {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_antecedents_familiauxData_familyHistories_familyHistories>
      familyHistories;

  factory _$Gget_antecedents_familiauxData_familyHistories(
          [void Function(Gget_antecedents_familiauxData_familyHistoriesBuilder)?
              updates]) =>
      (new Gget_antecedents_familiauxData_familyHistoriesBuilder()
            ..update(updates))
          ._build();

  _$Gget_antecedents_familiauxData_familyHistories._(
      {required this.G__typename, required this.familyHistories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_antecedents_familiauxData_familyHistories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(familyHistories,
        r'Gget_antecedents_familiauxData_familyHistories', 'familyHistories');
  }

  @override
  Gget_antecedents_familiauxData_familyHistories rebuild(
          void Function(Gget_antecedents_familiauxData_familyHistoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_antecedents_familiauxData_familyHistoriesBuilder toBuilder() =>
      new Gget_antecedents_familiauxData_familyHistoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_antecedents_familiauxData_familyHistories &&
        G__typename == other.G__typename &&
        familyHistories == other.familyHistories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, familyHistories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_antecedents_familiauxData_familyHistories')
          ..add('G__typename', G__typename)
          ..add('familyHistories', familyHistories))
        .toString();
  }
}

class Gget_antecedents_familiauxData_familyHistoriesBuilder
    implements
        Builder<Gget_antecedents_familiauxData_familyHistories,
            Gget_antecedents_familiauxData_familyHistoriesBuilder> {
  _$Gget_antecedents_familiauxData_familyHistories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_antecedents_familiauxData_familyHistories_familyHistories>?
      _familyHistories;
  ListBuilder<Gget_antecedents_familiauxData_familyHistories_familyHistories>
      get familyHistories => _$this._familyHistories ??= new ListBuilder<
          Gget_antecedents_familiauxData_familyHistories_familyHistories>();
  set familyHistories(
          ListBuilder<
                  Gget_antecedents_familiauxData_familyHistories_familyHistories>?
              familyHistories) =>
      _$this._familyHistories = familyHistories;

  Gget_antecedents_familiauxData_familyHistoriesBuilder() {
    Gget_antecedents_familiauxData_familyHistories._initializeBuilder(this);
  }

  Gget_antecedents_familiauxData_familyHistoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _familyHistories = $v.familyHistories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_antecedents_familiauxData_familyHistories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_antecedents_familiauxData_familyHistories;
  }

  @override
  void update(
      void Function(Gget_antecedents_familiauxData_familyHistoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_antecedents_familiauxData_familyHistories build() => _build();

  _$Gget_antecedents_familiauxData_familyHistories _build() {
    _$Gget_antecedents_familiauxData_familyHistories _$result;
    try {
      _$result = _$v ??
          new _$Gget_antecedents_familiauxData_familyHistories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_antecedents_familiauxData_familyHistories',
                  'G__typename'),
              familyHistories: familyHistories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'familyHistories';
        familyHistories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_antecedents_familiauxData_familyHistories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_antecedents_familiauxData_familyHistories_familyHistories
    extends Gget_antecedents_familiauxData_familyHistories_familyHistories {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final _i2.GFamilyRelationshipEnum familyRelationship;

  factory _$Gget_antecedents_familiauxData_familyHistories_familyHistories(
          [void Function(
                  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder)?
              updates]) =>
      (new Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder()
            ..update(updates))
          ._build();

  _$Gget_antecedents_familiauxData_familyHistories_familyHistories._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment,
      required this.familyRelationship})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        familyRelationship,
        r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
        'familyRelationship');
  }

  @override
  Gget_antecedents_familiauxData_familyHistories_familyHistories rebuild(
          void Function(
                  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder
      toBuilder() =>
          new Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_antecedents_familiauxData_familyHistories_familyHistories &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        familyRelationship == other.familyRelationship;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, familyRelationship.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_antecedents_familiauxData_familyHistories_familyHistories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('familyRelationship', familyRelationship))
        .toString();
  }
}

class Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder
    implements
        Builder<Gget_antecedents_familiauxData_familyHistories_familyHistories,
            Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder> {
  _$Gget_antecedents_familiauxData_familyHistories_familyHistories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  _i2.GFamilyRelationshipEnum? _familyRelationship;
  _i2.GFamilyRelationshipEnum? get familyRelationship =>
      _$this._familyRelationship;
  set familyRelationship(_i2.GFamilyRelationshipEnum? familyRelationship) =>
      _$this._familyRelationship = familyRelationship;

  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder() {
    Gget_antecedents_familiauxData_familyHistories_familyHistories
        ._initializeBuilder(this);
  }

  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _familyRelationship = $v.familyRelationship;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_antecedents_familiauxData_familyHistories_familyHistories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_antecedents_familiauxData_familyHistories_familyHistories;
  }

  @override
  void update(
      void Function(
              Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_antecedents_familiauxData_familyHistories_familyHistories build() =>
      _build();

  _$Gget_antecedents_familiauxData_familyHistories_familyHistories _build() {
    final _$result = _$v ??
        new _$Gget_antecedents_familiauxData_familyHistories_familyHistories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'Gget_antecedents_familiauxData_familyHistories_familyHistories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
                'name'),
            comment: comment,
            familyRelationship: BuiltValueNullFieldError.checkNotNull(
                familyRelationship,
                r'Gget_antecedents_familiauxData_familyHistories_familyHistories',
                'familyRelationship'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_antecedents_familiauxData_unconcerned
    extends Gget_antecedents_familiauxData_unconcerned {
  @override
  final String G__typename;
  @override
  final String? declarationDate;

  factory _$Gget_antecedents_familiauxData_unconcerned(
          [void Function(Gget_antecedents_familiauxData_unconcernedBuilder)?
              updates]) =>
      (new Gget_antecedents_familiauxData_unconcernedBuilder()..update(updates))
          ._build();

  _$Gget_antecedents_familiauxData_unconcerned._(
      {required this.G__typename, this.declarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_antecedents_familiauxData_unconcerned', 'G__typename');
  }

  @override
  Gget_antecedents_familiauxData_unconcerned rebuild(
          void Function(Gget_antecedents_familiauxData_unconcernedBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_antecedents_familiauxData_unconcernedBuilder toBuilder() =>
      new Gget_antecedents_familiauxData_unconcernedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_antecedents_familiauxData_unconcerned &&
        G__typename == other.G__typename &&
        declarationDate == other.declarationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, declarationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_antecedents_familiauxData_unconcerned')
          ..add('G__typename', G__typename)
          ..add('declarationDate', declarationDate))
        .toString();
  }
}

class Gget_antecedents_familiauxData_unconcernedBuilder
    implements
        Builder<Gget_antecedents_familiauxData_unconcerned,
            Gget_antecedents_familiauxData_unconcernedBuilder> {
  _$Gget_antecedents_familiauxData_unconcerned? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _declarationDate;
  String? get declarationDate => _$this._declarationDate;
  set declarationDate(String? declarationDate) =>
      _$this._declarationDate = declarationDate;

  Gget_antecedents_familiauxData_unconcernedBuilder() {
    Gget_antecedents_familiauxData_unconcerned._initializeBuilder(this);
  }

  Gget_antecedents_familiauxData_unconcernedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _declarationDate = $v.declarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_antecedents_familiauxData_unconcerned other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_antecedents_familiauxData_unconcerned;
  }

  @override
  void update(
      void Function(Gget_antecedents_familiauxData_unconcernedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_antecedents_familiauxData_unconcerned build() => _build();

  _$Gget_antecedents_familiauxData_unconcerned _build() {
    final _$result = _$v ??
        new _$Gget_antecedents_familiauxData_unconcerned._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_antecedents_familiauxData_unconcerned', 'G__typename'),
            declarationDate: declarationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
