// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GhabitudesDeVieData> _$ghabitudesDeVieDataSerializer =
    new _$GhabitudesDeVieDataSerializer();
Serializer<GhabitudesDeVieData_items> _$ghabitudesDeVieDataItemsSerializer =
    new _$GhabitudesDeVieData_itemsSerializer();
Serializer<GhabitudesDeVieData_items_details>
    _$ghabitudesDeVieDataItemsDetailsSerializer =
    new _$GhabitudesDeVieData_items_detailsSerializer();
Serializer<GhabitudesDeVieData_items_details_answers>
    _$ghabitudesDeVieDataItemsDetailsAnswersSerializer =
    new _$GhabitudesDeVieData_items_details_answersSerializer();

class _$GhabitudesDeVieDataSerializer
    implements StructuredSerializer<GhabitudesDeVieData> {
  @override
  final Iterable<Type> types = const [
    GhabitudesDeVieData,
    _$GhabitudesDeVieData
  ];
  @override
  final String wireName = 'GhabitudesDeVieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GhabitudesDeVieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i1.GLifestyleSectionEnum)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GhabitudesDeVieData_items)])),
    ];

    return result;
  }

  @override
  GhabitudesDeVieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GhabitudesDeVieDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLifestyleSectionEnum))!
              as _i1.GLifestyleSectionEnum;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GhabitudesDeVieData_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GhabitudesDeVieData_itemsSerializer
    implements StructuredSerializer<GhabitudesDeVieData_items> {
  @override
  final Iterable<Type> types = const [
    GhabitudesDeVieData_items,
    _$GhabitudesDeVieData_items
  ];
  @override
  final String wireName = 'GhabitudesDeVieData_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GhabitudesDeVieData_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GhabitudesDeVieData_items_details)])),
    ];

    return result;
  }

  @override
  GhabitudesDeVieData_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GhabitudesDeVieData_itemsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GhabitudesDeVieData_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GhabitudesDeVieData_items_detailsSerializer
    implements StructuredSerializer<GhabitudesDeVieData_items_details> {
  @override
  final Iterable<Type> types = const [
    GhabitudesDeVieData_items_details,
    _$GhabitudesDeVieData_items_details
  ];
  @override
  final String wireName = 'GhabitudesDeVieData_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GhabitudesDeVieData_items_details object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastModifiedType',
      serializers.serialize(object.lastModifiedType,
          specifiedType: const FullType(_i1.GLifestyleCreationTypeEnum)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
      'answers',
      serializers.serialize(object.answers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GhabitudesDeVieData_items_details_answers)
          ])),
    ];

    return result;
  }

  @override
  GhabitudesDeVieData_items_details deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GhabitudesDeVieData_items_detailsBuilder();

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
        case 'lastModifiedType':
          result.lastModifiedType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GLifestyleCreationTypeEnum))!
              as _i1.GLifestyleCreationTypeEnum;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GhabitudesDeVieData_items_details_answers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GhabitudesDeVieData_items_details_answersSerializer
    implements StructuredSerializer<GhabitudesDeVieData_items_details_answers> {
  @override
  final Iterable<Type> types = const [
    GhabitudesDeVieData_items_details_answers,
    _$GhabitudesDeVieData_items_details_answers
  ];
  @override
  final String wireName = 'GhabitudesDeVieData_items_details_answers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GhabitudesDeVieData_items_details_answers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GhabitudesDeVieData_items_details_answers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GhabitudesDeVieData_items_details_answersBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GhabitudesDeVieData extends GhabitudesDeVieData {
  @override
  final String G__typename;
  @override
  final _i1.GLifestyleSectionEnum name;
  @override
  final BuiltList<GhabitudesDeVieData_items> items;

  factory _$GhabitudesDeVieData(
          [void Function(GhabitudesDeVieDataBuilder)? updates]) =>
      (new GhabitudesDeVieDataBuilder()..update(updates))._build();

  _$GhabitudesDeVieData._(
      {required this.G__typename, required this.name, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GhabitudesDeVieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(name, r'GhabitudesDeVieData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        items, r'GhabitudesDeVieData', 'items');
  }

  @override
  GhabitudesDeVieData rebuild(
          void Function(GhabitudesDeVieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GhabitudesDeVieDataBuilder toBuilder() =>
      new GhabitudesDeVieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GhabitudesDeVieData &&
        G__typename == other.G__typename &&
        name == other.name &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GhabitudesDeVieData')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class GhabitudesDeVieDataBuilder
    implements Builder<GhabitudesDeVieData, GhabitudesDeVieDataBuilder> {
  _$GhabitudesDeVieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GLifestyleSectionEnum? _name;
  _i1.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i1.GLifestyleSectionEnum? name) => _$this._name = name;

  ListBuilder<GhabitudesDeVieData_items>? _items;
  ListBuilder<GhabitudesDeVieData_items> get items =>
      _$this._items ??= new ListBuilder<GhabitudesDeVieData_items>();
  set items(ListBuilder<GhabitudesDeVieData_items>? items) =>
      _$this._items = items;

  GhabitudesDeVieDataBuilder() {
    GhabitudesDeVieData._initializeBuilder(this);
  }

  GhabitudesDeVieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GhabitudesDeVieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GhabitudesDeVieData;
  }

  @override
  void update(void Function(GhabitudesDeVieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GhabitudesDeVieData build() => _build();

  _$GhabitudesDeVieData _build() {
    _$GhabitudesDeVieData _$result;
    try {
      _$result = _$v ??
          new _$GhabitudesDeVieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GhabitudesDeVieData', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GhabitudesDeVieData', 'name'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GhabitudesDeVieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GhabitudesDeVieData_items extends GhabitudesDeVieData_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final BuiltList<GhabitudesDeVieData_items_details> details;

  factory _$GhabitudesDeVieData_items(
          [void Function(GhabitudesDeVieData_itemsBuilder)? updates]) =>
      (new GhabitudesDeVieData_itemsBuilder()..update(updates))._build();

  _$GhabitudesDeVieData_items._(
      {required this.G__typename, required this.name, required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GhabitudesDeVieData_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GhabitudesDeVieData_items', 'name');
    BuiltValueNullFieldError.checkNotNull(
        details, r'GhabitudesDeVieData_items', 'details');
  }

  @override
  GhabitudesDeVieData_items rebuild(
          void Function(GhabitudesDeVieData_itemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GhabitudesDeVieData_itemsBuilder toBuilder() =>
      new GhabitudesDeVieData_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GhabitudesDeVieData_items &&
        G__typename == other.G__typename &&
        name == other.name &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GhabitudesDeVieData_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class GhabitudesDeVieData_itemsBuilder
    implements
        Builder<GhabitudesDeVieData_items, GhabitudesDeVieData_itemsBuilder> {
  _$GhabitudesDeVieData_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<GhabitudesDeVieData_items_details>? _details;
  ListBuilder<GhabitudesDeVieData_items_details> get details =>
      _$this._details ??= new ListBuilder<GhabitudesDeVieData_items_details>();
  set details(ListBuilder<GhabitudesDeVieData_items_details>? details) =>
      _$this._details = details;

  GhabitudesDeVieData_itemsBuilder() {
    GhabitudesDeVieData_items._initializeBuilder(this);
  }

  GhabitudesDeVieData_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GhabitudesDeVieData_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GhabitudesDeVieData_items;
  }

  @override
  void update(void Function(GhabitudesDeVieData_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GhabitudesDeVieData_items build() => _build();

  _$GhabitudesDeVieData_items _build() {
    _$GhabitudesDeVieData_items _$result;
    try {
      _$result = _$v ??
          new _$GhabitudesDeVieData_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GhabitudesDeVieData_items', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GhabitudesDeVieData_items', 'name'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GhabitudesDeVieData_items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GhabitudesDeVieData_items_details
    extends GhabitudesDeVieData_items_details {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i1.GLifestyleCreationTypeEnum lastModifiedType;
  @override
  final String effectiveDate;
  @override
  final BuiltList<GhabitudesDeVieData_items_details_answers> answers;

  factory _$GhabitudesDeVieData_items_details(
          [void Function(GhabitudesDeVieData_items_detailsBuilder)? updates]) =>
      (new GhabitudesDeVieData_items_detailsBuilder()..update(updates))
          ._build();

  _$GhabitudesDeVieData_items_details._(
      {required this.G__typename,
      required this.id,
      required this.lastModifiedType,
      required this.effectiveDate,
      required this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GhabitudesDeVieData_items_details', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GhabitudesDeVieData_items_details', 'id');
    BuiltValueNullFieldError.checkNotNull(lastModifiedType,
        r'GhabitudesDeVieData_items_details', 'lastModifiedType');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate, r'GhabitudesDeVieData_items_details', 'effectiveDate');
    BuiltValueNullFieldError.checkNotNull(
        answers, r'GhabitudesDeVieData_items_details', 'answers');
  }

  @override
  GhabitudesDeVieData_items_details rebuild(
          void Function(GhabitudesDeVieData_items_detailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GhabitudesDeVieData_items_detailsBuilder toBuilder() =>
      new GhabitudesDeVieData_items_detailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GhabitudesDeVieData_items_details &&
        G__typename == other.G__typename &&
        id == other.id &&
        lastModifiedType == other.lastModifiedType &&
        effectiveDate == other.effectiveDate &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastModifiedType.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GhabitudesDeVieData_items_details')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastModifiedType', lastModifiedType)
          ..add('effectiveDate', effectiveDate)
          ..add('answers', answers))
        .toString();
  }
}

class GhabitudesDeVieData_items_detailsBuilder
    implements
        Builder<GhabitudesDeVieData_items_details,
            GhabitudesDeVieData_items_detailsBuilder> {
  _$GhabitudesDeVieData_items_details? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i1.GLifestyleCreationTypeEnum? _lastModifiedType;
  _i1.GLifestyleCreationTypeEnum? get lastModifiedType =>
      _$this._lastModifiedType;
  set lastModifiedType(_i1.GLifestyleCreationTypeEnum? lastModifiedType) =>
      _$this._lastModifiedType = lastModifiedType;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<GhabitudesDeVieData_items_details_answers>? _answers;
  ListBuilder<GhabitudesDeVieData_items_details_answers> get answers =>
      _$this._answers ??=
          new ListBuilder<GhabitudesDeVieData_items_details_answers>();
  set answers(
          ListBuilder<GhabitudesDeVieData_items_details_answers>? answers) =>
      _$this._answers = answers;

  GhabitudesDeVieData_items_detailsBuilder() {
    GhabitudesDeVieData_items_details._initializeBuilder(this);
  }

  GhabitudesDeVieData_items_detailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lastModifiedType = $v.lastModifiedType;
      _effectiveDate = $v.effectiveDate;
      _answers = $v.answers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GhabitudesDeVieData_items_details other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GhabitudesDeVieData_items_details;
  }

  @override
  void update(
      void Function(GhabitudesDeVieData_items_detailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GhabitudesDeVieData_items_details build() => _build();

  _$GhabitudesDeVieData_items_details _build() {
    _$GhabitudesDeVieData_items_details _$result;
    try {
      _$result = _$v ??
          new _$GhabitudesDeVieData_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GhabitudesDeVieData_items_details', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GhabitudesDeVieData_items_details', 'id'),
              lastModifiedType: BuiltValueNullFieldError.checkNotNull(
                  lastModifiedType,
                  r'GhabitudesDeVieData_items_details',
                  'lastModifiedType'),
              effectiveDate: BuiltValueNullFieldError.checkNotNull(
                  effectiveDate,
                  r'GhabitudesDeVieData_items_details',
                  'effectiveDate'),
              answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GhabitudesDeVieData_items_details', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GhabitudesDeVieData_items_details_answers
    extends GhabitudesDeVieData_items_details_answers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String value;

  factory _$GhabitudesDeVieData_items_details_answers(
          [void Function(GhabitudesDeVieData_items_details_answersBuilder)?
              updates]) =>
      (new GhabitudesDeVieData_items_details_answersBuilder()..update(updates))
          ._build();

  _$GhabitudesDeVieData_items_details_answers._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GhabitudesDeVieData_items_details_answers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GhabitudesDeVieData_items_details_answers', 'name');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GhabitudesDeVieData_items_details_answers', 'label');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GhabitudesDeVieData_items_details_answers', 'value');
  }

  @override
  GhabitudesDeVieData_items_details_answers rebuild(
          void Function(GhabitudesDeVieData_items_details_answersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GhabitudesDeVieData_items_details_answersBuilder toBuilder() =>
      new GhabitudesDeVieData_items_details_answersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GhabitudesDeVieData_items_details_answers &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GhabitudesDeVieData_items_details_answers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class GhabitudesDeVieData_items_details_answersBuilder
    implements
        Builder<GhabitudesDeVieData_items_details_answers,
            GhabitudesDeVieData_items_details_answersBuilder> {
  _$GhabitudesDeVieData_items_details_answers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GhabitudesDeVieData_items_details_answersBuilder() {
    GhabitudesDeVieData_items_details_answers._initializeBuilder(this);
  }

  GhabitudesDeVieData_items_details_answersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GhabitudesDeVieData_items_details_answers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GhabitudesDeVieData_items_details_answers;
  }

  @override
  void update(
      void Function(GhabitudesDeVieData_items_details_answersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GhabitudesDeVieData_items_details_answers build() => _build();

  _$GhabitudesDeVieData_items_details_answers _build() {
    final _$result = _$v ??
        new _$GhabitudesDeVieData_items_details_answers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GhabitudesDeVieData_items_details_answers', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GhabitudesDeVieData_items_details_answers', 'name'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'GhabitudesDeVieData_items_details_answers', 'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GhabitudesDeVieData_items_details_answers', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
