// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get_section_answer.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_habitudes_de_vie_section_answerData>
    _$ggetHabitudesDeVieSectionAnswerDataSerializer =
    new _$Gget_habitudes_de_vie_section_answerDataSerializer();
Serializer<
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection>
    _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionSerializer =
    new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionSerializer();
Serializer<
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>
    _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsSerializer =
    new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsSerializer();
Serializer<
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>
    _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsDetailsSerializer =
    new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsSerializer();
Serializer<
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>
    _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsDetailsAnswersSerializer =
    new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersSerializer();

class _$Gget_habitudes_de_vie_section_answerDataSerializer
    implements StructuredSerializer<Gget_habitudes_de_vie_section_answerData> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerData,
    _$Gget_habitudes_de_vie_section_answerData
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vie_section_answerData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_habitudes_de_vie_section_answerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchLifestyleAnswersForGivenSection',
      serializers.serialize(object.fetchLifestyleAnswersForGivenSection,
          specifiedType: const FullType(
              Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection)),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vie_section_answerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_habitudes_de_vie_section_answerDataBuilder();

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
        case 'fetchLifestyleAnswersForGivenSection':
          result.fetchLifestyleAnswersForGivenSection.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection))!
              as Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection,
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i3.GLifestyleSectionEnum)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder();

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
                  specifiedType: const FullType(_i3.GLifestyleSectionEnum))!
              as _i3.GLifestyleSectionEnum;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items,
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder();

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
                const FullType(
                    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details,
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastModifiedType',
      serializers.serialize(object.lastModifiedType,
          specifiedType: const FullType(_i3.GLifestyleCreationTypeEnum)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
      'answers',
      serializers.serialize(object.answers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder();

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
                      const FullType(_i3.GLifestyleCreationTypeEnum))!
              as _i3.GLifestyleCreationTypeEnum;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers,
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
          object,
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
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder();

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

class _$Gget_habitudes_de_vie_section_answerData
    extends Gget_habitudes_de_vie_section_answerData {
  @override
  final String G__typename;
  @override
  final Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      fetchLifestyleAnswersForGivenSection;

  factory _$Gget_habitudes_de_vie_section_answerData(
          [void Function(Gget_habitudes_de_vie_section_answerDataBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerDataBuilder()..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerData._(
      {required this.G__typename,
      required this.fetchLifestyleAnswersForGivenSection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_habitudes_de_vie_section_answerData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchLifestyleAnswersForGivenSection,
        r'Gget_habitudes_de_vie_section_answerData',
        'fetchLifestyleAnswersForGivenSection');
  }

  @override
  Gget_habitudes_de_vie_section_answerData rebuild(
          void Function(Gget_habitudes_de_vie_section_answerDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerDataBuilder toBuilder() =>
      new Gget_habitudes_de_vie_section_answerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vie_section_answerData &&
        G__typename == other.G__typename &&
        fetchLifestyleAnswersForGivenSection ==
            other.fetchLifestyleAnswersForGivenSection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchLifestyleAnswersForGivenSection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vie_section_answerData')
          ..add('G__typename', G__typename)
          ..add('fetchLifestyleAnswersForGivenSection',
              fetchLifestyleAnswersForGivenSection))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerDataBuilder
    implements
        Builder<Gget_habitudes_de_vie_section_answerData,
            Gget_habitudes_de_vie_section_answerDataBuilder> {
  _$Gget_habitudes_de_vie_section_answerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder?
      _fetchLifestyleAnswersForGivenSection;
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
      get fetchLifestyleAnswersForGivenSection => _$this
              ._fetchLifestyleAnswersForGivenSection ??=
          new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder();
  set fetchLifestyleAnswersForGivenSection(
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder?
              fetchLifestyleAnswersForGivenSection) =>
      _$this._fetchLifestyleAnswersForGivenSection =
          fetchLifestyleAnswersForGivenSection;

  Gget_habitudes_de_vie_section_answerDataBuilder() {
    Gget_habitudes_de_vie_section_answerData._initializeBuilder(this);
  }

  Gget_habitudes_de_vie_section_answerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchLifestyleAnswersForGivenSection =
          $v.fetchLifestyleAnswersForGivenSection.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vie_section_answerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vie_section_answerData;
  }

  @override
  void update(
      void Function(Gget_habitudes_de_vie_section_answerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerData build() => _build();

  _$Gget_habitudes_de_vie_section_answerData _build() {
    _$Gget_habitudes_de_vie_section_answerData _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vie_section_answerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_habitudes_de_vie_section_answerData', 'G__typename'),
              fetchLifestyleAnswersForGivenSection:
                  fetchLifestyleAnswersForGivenSection.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchLifestyleAnswersForGivenSection';
        fetchLifestyleAnswersForGivenSection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vie_section_answerData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
    extends Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection {
  @override
  final String G__typename;
  @override
  final _i3.GLifestyleSectionEnum name;
  @override
  final BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>
      items;

  factory _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection._(
      {required this.G__typename, required this.name, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        items,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
        'items');
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      rebuild(
              void Function(
                      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
      toBuilder() =>
          new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
    implements
        Builder<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder> {
  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GLifestyleSectionEnum? _name;
  _i3.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i3.GLifestyleSectionEnum? name) => _$this._name = name;

  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>?
      _items;
  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>();
  set items(
          ListBuilder<
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>?
              items) =>
      _$this._items = items;

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder() {
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
      get _$this {
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
  void replace(
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      build() => _build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      _build() {
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
                  'name'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
    extends Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>
      details;

  factory _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items._(
      {required this.G__typename, required this.name, required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        details,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
        'details');
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
      rebuild(
              void Function(
                      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder
    implements
        Builder<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder> {
  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>?
      _details;
  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>();
  set details(
          ListBuilder<
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>?
              details) =>
      _$this._details = details;

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder() {
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder
      get _$this {
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
  void replace(
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
      build() => _build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
      _build() {
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
                  'name'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
    extends Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GLifestyleCreationTypeEnum lastModifiedType;
  @override
  final String effectiveDate;
  @override
  final BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>
      answers;

  factory _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details._(
      {required this.G__typename,
      required this.id,
      required this.lastModifiedType,
      required this.effectiveDate,
      required this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        lastModifiedType,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
        'lastModifiedType');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
        'effectiveDate');
    BuiltValueNullFieldError.checkNotNull(
        answers,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
        'answers');
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
      rebuild(
              void Function(
                      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastModifiedType', lastModifiedType)
          ..add('effectiveDate', effectiveDate)
          ..add('answers', answers))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder
    implements
        Builder<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder> {
  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GLifestyleCreationTypeEnum? _lastModifiedType;
  _i3.GLifestyleCreationTypeEnum? get lastModifiedType =>
      _$this._lastModifiedType;
  set lastModifiedType(_i3.GLifestyleCreationTypeEnum? lastModifiedType) =>
      _$this._lastModifiedType = lastModifiedType;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>?
      _answers;
  ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>
      get answers => _$this._answers ??= new ListBuilder<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>();
  set answers(
          ListBuilder<
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>?
              answers) =>
      _$this._answers = answers;

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder() {
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder
      get _$this {
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
  void replace(
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
      build() => _build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
      _build() {
    _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
                  'id'),
              lastModifiedType: BuiltValueNullFieldError.checkNotNull(
                  lastModifiedType,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
                  'lastModifiedType'),
              effectiveDate: BuiltValueNullFieldError.checkNotNull(
                  effectiveDate,
                  r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
                  'effectiveDate'),
              answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
    extends Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String value;

  factory _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
        'value');
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
      rebuild(
              void Function(
                      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder
      toBuilder() =>
          new Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers &&
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
            r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder
    implements
        Builder<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder> {
  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers?
      _$v;

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

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder() {
    Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder
      get _$this {
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
  void replace(
      Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
      build() => _build();

  _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
      _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
                'name'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
                'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers',
                'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
