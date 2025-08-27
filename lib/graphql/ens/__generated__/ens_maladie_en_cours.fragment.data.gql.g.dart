// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladie_en_cours.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmaladieEnCoursData> _$gmaladieEnCoursDataSerializer =
    new _$GmaladieEnCoursDataSerializer();

class _$GmaladieEnCoursDataSerializer
    implements StructuredSerializer<GmaladieEnCoursData> {
  @override
  final Iterable<Type> types = const [
    GmaladieEnCoursData,
    _$GmaladieEnCoursData
  ];
  @override
  final String wireName = 'GmaladieEnCoursData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieEnCoursData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i1.GEpisodeCategory)),
      'categoryLabel',
      serializers.serialize(object.categoryLabel,
          specifiedType: const FullType(String)),
      'isListOfActs',
      serializers.serialize(object.isListOfActs,
          specifiedType: const FullType(bool)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'eventType',
      serializers.serialize(object.eventType,
          specifiedType: const FullType(_i1.GDiseaseEpisodeType)),
      'diseaseId',
      serializers.serialize(object.diseaseId,
          specifiedType: const FullType(String)),
      'hasOnlyYearInStartDate',
      serializers.serialize(object.hasOnlyYearInStartDate,
          specifiedType: const FullType(bool)),
      'hasOnlyMonthAndYearInStartDate',
      serializers.serialize(object.hasOnlyMonthAndYearInStartDate,
          specifiedType: const FullType(bool)),
      'hasOnlyYearInEndDate',
      serializers.serialize(object.hasOnlyYearInEndDate,
          specifiedType: const FullType(bool)),
      'hasOnlyMonthAndYearInEndDate',
      serializers.serialize(object.hasOnlyMonthAndYearInEndDate,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GmaladieEnCoursData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieEnCoursDataBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GEpisodeCategory))!
              as _i1.GEpisodeCategory;
          break;
        case 'categoryLabel':
          result.categoryLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isListOfActs':
          result.isListOfActs = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'eventType':
          result.eventType = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDiseaseEpisodeType))!
              as _i1.GDiseaseEpisodeType;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'diseaseId':
          result.diseaseId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasOnlyYearInStartDate':
          result.hasOnlyYearInStartDate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'hasOnlyMonthAndYearInStartDate':
          result.hasOnlyMonthAndYearInStartDate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'hasOnlyYearInEndDate':
          result.hasOnlyYearInEndDate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'hasOnlyMonthAndYearInEndDate':
          result.hasOnlyMonthAndYearInEndDate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieEnCoursData extends GmaladieEnCoursData {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final _i1.GEpisodeCategory category;
  @override
  final String categoryLabel;
  @override
  final bool isListOfActs;
  @override
  final String startDate;
  @override
  final String name;
  @override
  final _i1.GDiseaseEpisodeType eventType;
  @override
  final String? comment;
  @override
  final String? endDate;
  @override
  final String diseaseId;
  @override
  final bool hasOnlyYearInStartDate;
  @override
  final bool hasOnlyMonthAndYearInStartDate;
  @override
  final bool hasOnlyYearInEndDate;
  @override
  final bool hasOnlyMonthAndYearInEndDate;

  factory _$GmaladieEnCoursData(
          [void Function(GmaladieEnCoursDataBuilder)? updates]) =>
      (new GmaladieEnCoursDataBuilder()..update(updates))._build();

  _$GmaladieEnCoursData._(
      {required this.G__typename,
      required this.date,
      required this.category,
      required this.categoryLabel,
      required this.isListOfActs,
      required this.startDate,
      required this.name,
      required this.eventType,
      this.comment,
      this.endDate,
      required this.diseaseId,
      required this.hasOnlyYearInStartDate,
      required this.hasOnlyMonthAndYearInStartDate,
      required this.hasOnlyYearInEndDate,
      required this.hasOnlyMonthAndYearInEndDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieEnCoursData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(date, r'GmaladieEnCoursData', 'date');
    BuiltValueNullFieldError.checkNotNull(
        category, r'GmaladieEnCoursData', 'category');
    BuiltValueNullFieldError.checkNotNull(
        categoryLabel, r'GmaladieEnCoursData', 'categoryLabel');
    BuiltValueNullFieldError.checkNotNull(
        isListOfActs, r'GmaladieEnCoursData', 'isListOfActs');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GmaladieEnCoursData', 'startDate');
    BuiltValueNullFieldError.checkNotNull(name, r'GmaladieEnCoursData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        eventType, r'GmaladieEnCoursData', 'eventType');
    BuiltValueNullFieldError.checkNotNull(
        diseaseId, r'GmaladieEnCoursData', 'diseaseId');
    BuiltValueNullFieldError.checkNotNull(hasOnlyYearInStartDate,
        r'GmaladieEnCoursData', 'hasOnlyYearInStartDate');
    BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInStartDate,
        r'GmaladieEnCoursData', 'hasOnlyMonthAndYearInStartDate');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlyYearInEndDate, r'GmaladieEnCoursData', 'hasOnlyYearInEndDate');
    BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInEndDate,
        r'GmaladieEnCoursData', 'hasOnlyMonthAndYearInEndDate');
  }

  @override
  GmaladieEnCoursData rebuild(
          void Function(GmaladieEnCoursDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieEnCoursDataBuilder toBuilder() =>
      new GmaladieEnCoursDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieEnCoursData &&
        G__typename == other.G__typename &&
        date == other.date &&
        category == other.category &&
        categoryLabel == other.categoryLabel &&
        isListOfActs == other.isListOfActs &&
        startDate == other.startDate &&
        name == other.name &&
        eventType == other.eventType &&
        comment == other.comment &&
        endDate == other.endDate &&
        diseaseId == other.diseaseId &&
        hasOnlyYearInStartDate == other.hasOnlyYearInStartDate &&
        hasOnlyMonthAndYearInStartDate ==
            other.hasOnlyMonthAndYearInStartDate &&
        hasOnlyYearInEndDate == other.hasOnlyYearInEndDate &&
        hasOnlyMonthAndYearInEndDate == other.hasOnlyMonthAndYearInEndDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, categoryLabel.hashCode);
    _$hash = $jc(_$hash, isListOfActs.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, diseaseId.hashCode);
    _$hash = $jc(_$hash, hasOnlyYearInStartDate.hashCode);
    _$hash = $jc(_$hash, hasOnlyMonthAndYearInStartDate.hashCode);
    _$hash = $jc(_$hash, hasOnlyYearInEndDate.hashCode);
    _$hash = $jc(_$hash, hasOnlyMonthAndYearInEndDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmaladieEnCoursData')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('category', category)
          ..add('categoryLabel', categoryLabel)
          ..add('isListOfActs', isListOfActs)
          ..add('startDate', startDate)
          ..add('name', name)
          ..add('eventType', eventType)
          ..add('comment', comment)
          ..add('endDate', endDate)
          ..add('diseaseId', diseaseId)
          ..add('hasOnlyYearInStartDate', hasOnlyYearInStartDate)
          ..add(
              'hasOnlyMonthAndYearInStartDate', hasOnlyMonthAndYearInStartDate)
          ..add('hasOnlyYearInEndDate', hasOnlyYearInEndDate)
          ..add('hasOnlyMonthAndYearInEndDate', hasOnlyMonthAndYearInEndDate))
        .toString();
  }
}

class GmaladieEnCoursDataBuilder
    implements Builder<GmaladieEnCoursData, GmaladieEnCoursDataBuilder> {
  _$GmaladieEnCoursData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  _i1.GEpisodeCategory? _category;
  _i1.GEpisodeCategory? get category => _$this._category;
  set category(_i1.GEpisodeCategory? category) => _$this._category = category;

  String? _categoryLabel;
  String? get categoryLabel => _$this._categoryLabel;
  set categoryLabel(String? categoryLabel) =>
      _$this._categoryLabel = categoryLabel;

  bool? _isListOfActs;
  bool? get isListOfActs => _$this._isListOfActs;
  set isListOfActs(bool? isListOfActs) => _$this._isListOfActs = isListOfActs;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i1.GDiseaseEpisodeType? _eventType;
  _i1.GDiseaseEpisodeType? get eventType => _$this._eventType;
  set eventType(_i1.GDiseaseEpisodeType? eventType) =>
      _$this._eventType = eventType;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _diseaseId;
  String? get diseaseId => _$this._diseaseId;
  set diseaseId(String? diseaseId) => _$this._diseaseId = diseaseId;

  bool? _hasOnlyYearInStartDate;
  bool? get hasOnlyYearInStartDate => _$this._hasOnlyYearInStartDate;
  set hasOnlyYearInStartDate(bool? hasOnlyYearInStartDate) =>
      _$this._hasOnlyYearInStartDate = hasOnlyYearInStartDate;

  bool? _hasOnlyMonthAndYearInStartDate;
  bool? get hasOnlyMonthAndYearInStartDate =>
      _$this._hasOnlyMonthAndYearInStartDate;
  set hasOnlyMonthAndYearInStartDate(bool? hasOnlyMonthAndYearInStartDate) =>
      _$this._hasOnlyMonthAndYearInStartDate = hasOnlyMonthAndYearInStartDate;

  bool? _hasOnlyYearInEndDate;
  bool? get hasOnlyYearInEndDate => _$this._hasOnlyYearInEndDate;
  set hasOnlyYearInEndDate(bool? hasOnlyYearInEndDate) =>
      _$this._hasOnlyYearInEndDate = hasOnlyYearInEndDate;

  bool? _hasOnlyMonthAndYearInEndDate;
  bool? get hasOnlyMonthAndYearInEndDate =>
      _$this._hasOnlyMonthAndYearInEndDate;
  set hasOnlyMonthAndYearInEndDate(bool? hasOnlyMonthAndYearInEndDate) =>
      _$this._hasOnlyMonthAndYearInEndDate = hasOnlyMonthAndYearInEndDate;

  GmaladieEnCoursDataBuilder() {
    GmaladieEnCoursData._initializeBuilder(this);
  }

  GmaladieEnCoursDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _category = $v.category;
      _categoryLabel = $v.categoryLabel;
      _isListOfActs = $v.isListOfActs;
      _startDate = $v.startDate;
      _name = $v.name;
      _eventType = $v.eventType;
      _comment = $v.comment;
      _endDate = $v.endDate;
      _diseaseId = $v.diseaseId;
      _hasOnlyYearInStartDate = $v.hasOnlyYearInStartDate;
      _hasOnlyMonthAndYearInStartDate = $v.hasOnlyMonthAndYearInStartDate;
      _hasOnlyYearInEndDate = $v.hasOnlyYearInEndDate;
      _hasOnlyMonthAndYearInEndDate = $v.hasOnlyMonthAndYearInEndDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmaladieEnCoursData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieEnCoursData;
  }

  @override
  void update(void Function(GmaladieEnCoursDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieEnCoursData build() => _build();

  _$GmaladieEnCoursData _build() {
    final _$result = _$v ??
        new _$GmaladieEnCoursData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmaladieEnCoursData', 'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'GmaladieEnCoursData', 'date'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'GmaladieEnCoursData', 'category'),
            categoryLabel: BuiltValueNullFieldError.checkNotNull(
                categoryLabel, r'GmaladieEnCoursData', 'categoryLabel'),
            isListOfActs: BuiltValueNullFieldError.checkNotNull(
                isListOfActs, r'GmaladieEnCoursData', 'isListOfActs'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GmaladieEnCoursData', 'startDate'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GmaladieEnCoursData', 'name'),
            eventType: BuiltValueNullFieldError.checkNotNull(
                eventType, r'GmaladieEnCoursData', 'eventType'),
            comment: comment,
            endDate: endDate,
            diseaseId: BuiltValueNullFieldError.checkNotNull(diseaseId, r'GmaladieEnCoursData', 'diseaseId'),
            hasOnlyYearInStartDate: BuiltValueNullFieldError.checkNotNull(hasOnlyYearInStartDate, r'GmaladieEnCoursData', 'hasOnlyYearInStartDate'),
            hasOnlyMonthAndYearInStartDate: BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInStartDate, r'GmaladieEnCoursData', 'hasOnlyMonthAndYearInStartDate'),
            hasOnlyYearInEndDate: BuiltValueNullFieldError.checkNotNull(hasOnlyYearInEndDate, r'GmaladieEnCoursData', 'hasOnlyYearInEndDate'),
            hasOnlyMonthAndYearInEndDate: BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInEndDate, r'GmaladieEnCoursData', 'hasOnlyMonthAndYearInEndDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
