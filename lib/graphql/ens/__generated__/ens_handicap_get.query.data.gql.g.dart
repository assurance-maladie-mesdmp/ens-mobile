// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_get.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_handicapsData> _$ggetHandicapsDataSerializer =
    new _$Gget_handicapsDataSerializer();
Serializer<Gget_handicapsData_fetchAllDisabilities>
    _$ggetHandicapsDataFetchAllDisabilitiesSerializer =
    new _$Gget_handicapsData_fetchAllDisabilitiesSerializer();
Serializer<Gget_handicapsData_fetchAllDisabilities_disabilities>
    _$ggetHandicapsDataFetchAllDisabilitiesDisabilitiesSerializer =
    new _$Gget_handicapsData_fetchAllDisabilities_disabilitiesSerializer();
Serializer<Gget_handicapsData_unconcerned>
    _$ggetHandicapsDataUnconcernedSerializer =
    new _$Gget_handicapsData_unconcernedSerializer();

class _$Gget_handicapsDataSerializer
    implements StructuredSerializer<Gget_handicapsData> {
  @override
  final Iterable<Type> types = const [Gget_handicapsData, _$Gget_handicapsData];
  @override
  final String wireName = 'Gget_handicapsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_handicapsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchAllDisabilities',
      serializers.serialize(object.fetchAllDisabilities,
          specifiedType:
              const FullType(Gget_handicapsData_fetchAllDisabilities)),
      'unconcerned',
      serializers.serialize(object.unconcerned,
          specifiedType: const FullType(Gget_handicapsData_unconcerned)),
    ];

    return result;
  }

  @override
  Gget_handicapsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_handicapsDataBuilder();

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
        case 'fetchAllDisabilities':
          result.fetchAllDisabilities.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_handicapsData_fetchAllDisabilities))!
              as Gget_handicapsData_fetchAllDisabilities);
          break;
        case 'unconcerned':
          result.unconcerned.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_handicapsData_unconcerned))!
              as Gget_handicapsData_unconcerned);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_handicapsData_fetchAllDisabilitiesSerializer
    implements StructuredSerializer<Gget_handicapsData_fetchAllDisabilities> {
  @override
  final Iterable<Type> types = const [
    Gget_handicapsData_fetchAllDisabilities,
    _$Gget_handicapsData_fetchAllDisabilities
  ];
  @override
  final String wireName = 'Gget_handicapsData_fetchAllDisabilities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_handicapsData_fetchAllDisabilities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'disabilities',
      serializers.serialize(object.disabilities,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_handicapsData_fetchAllDisabilities_disabilities)
          ])),
    ];

    return result;
  }

  @override
  Gget_handicapsData_fetchAllDisabilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_handicapsData_fetchAllDisabilitiesBuilder();

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
        case 'disabilities':
          result.disabilities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_handicapsData_fetchAllDisabilities_disabilities)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_handicapsData_fetchAllDisabilities_disabilitiesSerializer
    implements
        StructuredSerializer<
            Gget_handicapsData_fetchAllDisabilities_disabilities> {
  @override
  final Iterable<Type> types = const [
    Gget_handicapsData_fetchAllDisabilities_disabilities,
    _$Gget_handicapsData_fetchAllDisabilities_disabilities
  ];
  @override
  final String wireName =
      'Gget_handicapsData_fetchAllDisabilities_disabilities';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_handicapsData_fetchAllDisabilities_disabilities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'humanHelp',
      serializers.serialize(object.humanHelp,
          specifiedType: const FullType(_i2.GHumanHelpEnum)),
      'types',
      serializers.serialize(object.types,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i2.GDisabilitiesTypesEnum)])),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disabilityRate;
    if (value != null) {
      result
        ..add('disabilityRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDisabilityRateEnum)));
    }
    value = object.technicalHelp;
    if (value != null) {
      result
        ..add('technicalHelp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_handicapsData_fetchAllDisabilities_disabilities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder();

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
        case 'disabilityRate':
          result.disabilityRate = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GDisabilityRateEnum))
              as _i2.GDisabilityRateEnum?;
          break;
        case 'humanHelp':
          result.humanHelp = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GHumanHelpEnum))!
              as _i2.GHumanHelpEnum;
          break;
        case 'technicalHelp':
          result.technicalHelp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i2.GDisabilitiesTypesEnum)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_handicapsData_unconcernedSerializer
    implements StructuredSerializer<Gget_handicapsData_unconcerned> {
  @override
  final Iterable<Type> types = const [
    Gget_handicapsData_unconcerned,
    _$Gget_handicapsData_unconcerned
  ];
  @override
  final String wireName = 'Gget_handicapsData_unconcerned';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_handicapsData_unconcerned object,
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
  Gget_handicapsData_unconcerned deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_handicapsData_unconcernedBuilder();

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

class _$Gget_handicapsData extends Gget_handicapsData {
  @override
  final String G__typename;
  @override
  final Gget_handicapsData_fetchAllDisabilities fetchAllDisabilities;
  @override
  final Gget_handicapsData_unconcerned unconcerned;

  factory _$Gget_handicapsData(
          [void Function(Gget_handicapsDataBuilder)? updates]) =>
      (new Gget_handicapsDataBuilder()..update(updates))._build();

  _$Gget_handicapsData._(
      {required this.G__typename,
      required this.fetchAllDisabilities,
      required this.unconcerned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_handicapsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchAllDisabilities, r'Gget_handicapsData', 'fetchAllDisabilities');
    BuiltValueNullFieldError.checkNotNull(
        unconcerned, r'Gget_handicapsData', 'unconcerned');
  }

  @override
  Gget_handicapsData rebuild(
          void Function(Gget_handicapsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_handicapsDataBuilder toBuilder() =>
      new Gget_handicapsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_handicapsData &&
        G__typename == other.G__typename &&
        fetchAllDisabilities == other.fetchAllDisabilities &&
        unconcerned == other.unconcerned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchAllDisabilities.hashCode);
    _$hash = $jc(_$hash, unconcerned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_handicapsData')
          ..add('G__typename', G__typename)
          ..add('fetchAllDisabilities', fetchAllDisabilities)
          ..add('unconcerned', unconcerned))
        .toString();
  }
}

class Gget_handicapsDataBuilder
    implements Builder<Gget_handicapsData, Gget_handicapsDataBuilder> {
  _$Gget_handicapsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_handicapsData_fetchAllDisabilitiesBuilder? _fetchAllDisabilities;
  Gget_handicapsData_fetchAllDisabilitiesBuilder get fetchAllDisabilities =>
      _$this._fetchAllDisabilities ??=
          new Gget_handicapsData_fetchAllDisabilitiesBuilder();
  set fetchAllDisabilities(
          Gget_handicapsData_fetchAllDisabilitiesBuilder?
              fetchAllDisabilities) =>
      _$this._fetchAllDisabilities = fetchAllDisabilities;

  Gget_handicapsData_unconcernedBuilder? _unconcerned;
  Gget_handicapsData_unconcernedBuilder get unconcerned =>
      _$this._unconcerned ??= new Gget_handicapsData_unconcernedBuilder();
  set unconcerned(Gget_handicapsData_unconcernedBuilder? unconcerned) =>
      _$this._unconcerned = unconcerned;

  Gget_handicapsDataBuilder() {
    Gget_handicapsData._initializeBuilder(this);
  }

  Gget_handicapsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchAllDisabilities = $v.fetchAllDisabilities.toBuilder();
      _unconcerned = $v.unconcerned.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_handicapsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_handicapsData;
  }

  @override
  void update(void Function(Gget_handicapsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_handicapsData build() => _build();

  _$Gget_handicapsData _build() {
    _$Gget_handicapsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_handicapsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_handicapsData', 'G__typename'),
              fetchAllDisabilities: fetchAllDisabilities.build(),
              unconcerned: unconcerned.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchAllDisabilities';
        fetchAllDisabilities.build();
        _$failedField = 'unconcerned';
        unconcerned.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_handicapsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_handicapsData_fetchAllDisabilities
    extends Gget_handicapsData_fetchAllDisabilities {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_handicapsData_fetchAllDisabilities_disabilities>
      disabilities;

  factory _$Gget_handicapsData_fetchAllDisabilities(
          [void Function(Gget_handicapsData_fetchAllDisabilitiesBuilder)?
              updates]) =>
      (new Gget_handicapsData_fetchAllDisabilitiesBuilder()..update(updates))
          ._build();

  _$Gget_handicapsData_fetchAllDisabilities._(
      {required this.G__typename, required this.disabilities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_handicapsData_fetchAllDisabilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(disabilities,
        r'Gget_handicapsData_fetchAllDisabilities', 'disabilities');
  }

  @override
  Gget_handicapsData_fetchAllDisabilities rebuild(
          void Function(Gget_handicapsData_fetchAllDisabilitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_handicapsData_fetchAllDisabilitiesBuilder toBuilder() =>
      new Gget_handicapsData_fetchAllDisabilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_handicapsData_fetchAllDisabilities &&
        G__typename == other.G__typename &&
        disabilities == other.disabilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, disabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_handicapsData_fetchAllDisabilities')
          ..add('G__typename', G__typename)
          ..add('disabilities', disabilities))
        .toString();
  }
}

class Gget_handicapsData_fetchAllDisabilitiesBuilder
    implements
        Builder<Gget_handicapsData_fetchAllDisabilities,
            Gget_handicapsData_fetchAllDisabilitiesBuilder> {
  _$Gget_handicapsData_fetchAllDisabilities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_handicapsData_fetchAllDisabilities_disabilities>?
      _disabilities;
  ListBuilder<Gget_handicapsData_fetchAllDisabilities_disabilities>
      get disabilities => _$this._disabilities ??= new ListBuilder<
          Gget_handicapsData_fetchAllDisabilities_disabilities>();
  set disabilities(
          ListBuilder<Gget_handicapsData_fetchAllDisabilities_disabilities>?
              disabilities) =>
      _$this._disabilities = disabilities;

  Gget_handicapsData_fetchAllDisabilitiesBuilder() {
    Gget_handicapsData_fetchAllDisabilities._initializeBuilder(this);
  }

  Gget_handicapsData_fetchAllDisabilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _disabilities = $v.disabilities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_handicapsData_fetchAllDisabilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_handicapsData_fetchAllDisabilities;
  }

  @override
  void update(
      void Function(Gget_handicapsData_fetchAllDisabilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_handicapsData_fetchAllDisabilities build() => _build();

  _$Gget_handicapsData_fetchAllDisabilities _build() {
    _$Gget_handicapsData_fetchAllDisabilities _$result;
    try {
      _$result = _$v ??
          new _$Gget_handicapsData_fetchAllDisabilities._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_handicapsData_fetchAllDisabilities', 'G__typename'),
              disabilities: disabilities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disabilities';
        disabilities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_handicapsData_fetchAllDisabilities',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_handicapsData_fetchAllDisabilities_disabilities
    extends Gget_handicapsData_fetchAllDisabilities_disabilities {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final _i2.GDisabilityRateEnum? disabilityRate;
  @override
  final _i2.GHumanHelpEnum humanHelp;
  @override
  final String? technicalHelp;
  @override
  final BuiltList<_i2.GDisabilitiesTypesEnum> types;

  factory _$Gget_handicapsData_fetchAllDisabilities_disabilities(
          [void Function(
                  Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder)?
              updates]) =>
      (new Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_handicapsData_fetchAllDisabilities_disabilities._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment,
      this.disabilityRate,
      required this.humanHelp,
      this.technicalHelp,
      required this.types})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_handicapsData_fetchAllDisabilities_disabilities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_handicapsData_fetchAllDisabilities_disabilities', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_handicapsData_fetchAllDisabilities_disabilities', 'name');
    BuiltValueNullFieldError.checkNotNull(humanHelp,
        r'Gget_handicapsData_fetchAllDisabilities_disabilities', 'humanHelp');
    BuiltValueNullFieldError.checkNotNull(types,
        r'Gget_handicapsData_fetchAllDisabilities_disabilities', 'types');
  }

  @override
  Gget_handicapsData_fetchAllDisabilities_disabilities rebuild(
          void Function(
                  Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder toBuilder() =>
      new Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_handicapsData_fetchAllDisabilities_disabilities &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        disabilityRate == other.disabilityRate &&
        humanHelp == other.humanHelp &&
        technicalHelp == other.technicalHelp &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, disabilityRate.hashCode);
    _$hash = $jc(_$hash, humanHelp.hashCode);
    _$hash = $jc(_$hash, technicalHelp.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_handicapsData_fetchAllDisabilities_disabilities')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('disabilityRate', disabilityRate)
          ..add('humanHelp', humanHelp)
          ..add('technicalHelp', technicalHelp)
          ..add('types', types))
        .toString();
  }
}

class Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder
    implements
        Builder<Gget_handicapsData_fetchAllDisabilities_disabilities,
            Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder> {
  _$Gget_handicapsData_fetchAllDisabilities_disabilities? _$v;

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

  _i2.GDisabilityRateEnum? _disabilityRate;
  _i2.GDisabilityRateEnum? get disabilityRate => _$this._disabilityRate;
  set disabilityRate(_i2.GDisabilityRateEnum? disabilityRate) =>
      _$this._disabilityRate = disabilityRate;

  _i2.GHumanHelpEnum? _humanHelp;
  _i2.GHumanHelpEnum? get humanHelp => _$this._humanHelp;
  set humanHelp(_i2.GHumanHelpEnum? humanHelp) => _$this._humanHelp = humanHelp;

  String? _technicalHelp;
  String? get technicalHelp => _$this._technicalHelp;
  set technicalHelp(String? technicalHelp) =>
      _$this._technicalHelp = technicalHelp;

  ListBuilder<_i2.GDisabilitiesTypesEnum>? _types;
  ListBuilder<_i2.GDisabilitiesTypesEnum> get types =>
      _$this._types ??= new ListBuilder<_i2.GDisabilitiesTypesEnum>();
  set types(ListBuilder<_i2.GDisabilitiesTypesEnum>? types) =>
      _$this._types = types;

  Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder() {
    Gget_handicapsData_fetchAllDisabilities_disabilities._initializeBuilder(
        this);
  }

  Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _disabilityRate = $v.disabilityRate;
      _humanHelp = $v.humanHelp;
      _technicalHelp = $v.technicalHelp;
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_handicapsData_fetchAllDisabilities_disabilities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_handicapsData_fetchAllDisabilities_disabilities;
  }

  @override
  void update(
      void Function(
              Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_handicapsData_fetchAllDisabilities_disabilities build() => _build();

  _$Gget_handicapsData_fetchAllDisabilities_disabilities _build() {
    _$Gget_handicapsData_fetchAllDisabilities_disabilities _$result;
    try {
      _$result = _$v ??
          new _$Gget_handicapsData_fetchAllDisabilities_disabilities._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_handicapsData_fetchAllDisabilities_disabilities',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_handicapsData_fetchAllDisabilities_disabilities',
                  'id'),
              name:
                  BuiltValueNullFieldError.checkNotNull(
                      name,
                      r'Gget_handicapsData_fetchAllDisabilities_disabilities',
                      'name'),
              comment: comment,
              disabilityRate: disabilityRate,
              humanHelp: BuiltValueNullFieldError.checkNotNull(
                  humanHelp,
                  r'Gget_handicapsData_fetchAllDisabilities_disabilities',
                  'humanHelp'),
              technicalHelp: technicalHelp,
              types: types.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_handicapsData_fetchAllDisabilities_disabilities',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_handicapsData_unconcerned extends Gget_handicapsData_unconcerned {
  @override
  final String G__typename;
  @override
  final String? declarationDate;

  factory _$Gget_handicapsData_unconcerned(
          [void Function(Gget_handicapsData_unconcernedBuilder)? updates]) =>
      (new Gget_handicapsData_unconcernedBuilder()..update(updates))._build();

  _$Gget_handicapsData_unconcerned._(
      {required this.G__typename, this.declarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_handicapsData_unconcerned', 'G__typename');
  }

  @override
  Gget_handicapsData_unconcerned rebuild(
          void Function(Gget_handicapsData_unconcernedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_handicapsData_unconcernedBuilder toBuilder() =>
      new Gget_handicapsData_unconcernedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_handicapsData_unconcerned &&
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
    return (newBuiltValueToStringHelper(r'Gget_handicapsData_unconcerned')
          ..add('G__typename', G__typename)
          ..add('declarationDate', declarationDate))
        .toString();
  }
}

class Gget_handicapsData_unconcernedBuilder
    implements
        Builder<Gget_handicapsData_unconcerned,
            Gget_handicapsData_unconcernedBuilder> {
  _$Gget_handicapsData_unconcerned? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _declarationDate;
  String? get declarationDate => _$this._declarationDate;
  set declarationDate(String? declarationDate) =>
      _$this._declarationDate = declarationDate;

  Gget_handicapsData_unconcernedBuilder() {
    Gget_handicapsData_unconcerned._initializeBuilder(this);
  }

  Gget_handicapsData_unconcernedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _declarationDate = $v.declarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_handicapsData_unconcerned other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_handicapsData_unconcerned;
  }

  @override
  void update(void Function(Gget_handicapsData_unconcernedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_handicapsData_unconcerned build() => _build();

  _$Gget_handicapsData_unconcerned _build() {
    final _$result = _$v ??
        new _$Gget_handicapsData_unconcerned._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_handicapsData_unconcerned', 'G__typename'),
            declarationDate: declarationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
