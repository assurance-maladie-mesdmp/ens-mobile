// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladie_en_cours_get.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_maladies_in_progressData>
    _$ggetMaladiesInProgressDataSerializer =
    new _$Gget_maladies_in_progressDataSerializer();
Serializer<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>
    _$ggetMaladiesInProgressDataGetDiseaseEpisodeInProgressSerializer =
    new _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgressSerializer();

class _$Gget_maladies_in_progressDataSerializer
    implements StructuredSerializer<Gget_maladies_in_progressData> {
  @override
  final Iterable<Type> types = const [
    Gget_maladies_in_progressData,
    _$Gget_maladies_in_progressData
  ];
  @override
  final String wireName = 'Gget_maladies_in_progressData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_maladies_in_progressData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getDiseaseEpisodeInProgress;
    if (value != null) {
      result
        ..add('getDiseaseEpisodeInProgress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress)
            ])));
    }
    return result;
  }

  @override
  Gget_maladies_in_progressData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladies_in_progressDataBuilder();

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
        case 'getDiseaseEpisodeInProgress':
          result.getDiseaseEpisodeInProgress.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_maladies_in_progressData_getDiseaseEpisodeInProgress)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgressSerializer
    implements
        StructuredSerializer<
            Gget_maladies_in_progressData_getDiseaseEpisodeInProgress> {
  @override
  final Iterable<Type> types = const [
    Gget_maladies_in_progressData_getDiseaseEpisodeInProgress,
    _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress
  ];
  @override
  final String wireName =
      'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_maladies_in_progressData_getDiseaseEpisodeInProgress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i3.GEpisodeCategory)),
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
          specifiedType: const FullType(_i3.GDiseaseEpisodeType)),
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
  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder();

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
                  specifiedType: const FullType(_i3.GEpisodeCategory))!
              as _i3.GEpisodeCategory;
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
                  specifiedType: const FullType(_i3.GDiseaseEpisodeType))!
              as _i3.GDiseaseEpisodeType;
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

class _$Gget_maladies_in_progressData extends Gget_maladies_in_progressData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>?
      getDiseaseEpisodeInProgress;

  factory _$Gget_maladies_in_progressData(
          [void Function(Gget_maladies_in_progressDataBuilder)? updates]) =>
      (new Gget_maladies_in_progressDataBuilder()..update(updates))._build();

  _$Gget_maladies_in_progressData._(
      {required this.G__typename, this.getDiseaseEpisodeInProgress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_maladies_in_progressData', 'G__typename');
  }

  @override
  Gget_maladies_in_progressData rebuild(
          void Function(Gget_maladies_in_progressDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladies_in_progressDataBuilder toBuilder() =>
      new Gget_maladies_in_progressDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladies_in_progressData &&
        G__typename == other.G__typename &&
        getDiseaseEpisodeInProgress == other.getDiseaseEpisodeInProgress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDiseaseEpisodeInProgress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_maladies_in_progressData')
          ..add('G__typename', G__typename)
          ..add('getDiseaseEpisodeInProgress', getDiseaseEpisodeInProgress))
        .toString();
  }
}

class Gget_maladies_in_progressDataBuilder
    implements
        Builder<Gget_maladies_in_progressData,
            Gget_maladies_in_progressDataBuilder> {
  _$Gget_maladies_in_progressData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>?
      _getDiseaseEpisodeInProgress;
  ListBuilder<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>
      get getDiseaseEpisodeInProgress =>
          _$this._getDiseaseEpisodeInProgress ??= new ListBuilder<
              Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>();
  set getDiseaseEpisodeInProgress(
          ListBuilder<
                  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>?
              getDiseaseEpisodeInProgress) =>
      _$this._getDiseaseEpisodeInProgress = getDiseaseEpisodeInProgress;

  Gget_maladies_in_progressDataBuilder() {
    Gget_maladies_in_progressData._initializeBuilder(this);
  }

  Gget_maladies_in_progressDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDiseaseEpisodeInProgress =
          $v.getDiseaseEpisodeInProgress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_maladies_in_progressData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladies_in_progressData;
  }

  @override
  void update(void Function(Gget_maladies_in_progressDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladies_in_progressData build() => _build();

  _$Gget_maladies_in_progressData _build() {
    _$Gget_maladies_in_progressData _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladies_in_progressData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_maladies_in_progressData', 'G__typename'),
              getDiseaseEpisodeInProgress:
                  _getDiseaseEpisodeInProgress?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDiseaseEpisodeInProgress';
        _getDiseaseEpisodeInProgress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladies_in_progressData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress
    extends Gget_maladies_in_progressData_getDiseaseEpisodeInProgress {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final _i3.GEpisodeCategory category;
  @override
  final String categoryLabel;
  @override
  final bool isListOfActs;
  @override
  final String startDate;
  @override
  final String name;
  @override
  final _i3.GDiseaseEpisodeType eventType;
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

  factory _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress(
          [void Function(
                  Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder)?
              updates]) =>
      (new Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress._(
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
        G__typename,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'date');
    BuiltValueNullFieldError.checkNotNull(
        category,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'category');
    BuiltValueNullFieldError.checkNotNull(
        categoryLabel,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'categoryLabel');
    BuiltValueNullFieldError.checkNotNull(
        isListOfActs,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'isListOfActs');
    BuiltValueNullFieldError.checkNotNull(
        startDate,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'startDate');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'name');
    BuiltValueNullFieldError.checkNotNull(
        eventType,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'eventType');
    BuiltValueNullFieldError.checkNotNull(
        diseaseId,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'diseaseId');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlyYearInStartDate,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'hasOnlyYearInStartDate');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlyMonthAndYearInStartDate,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'hasOnlyMonthAndYearInStartDate');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlyYearInEndDate,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'hasOnlyYearInEndDate');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlyMonthAndYearInEndDate,
        r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
        'hasOnlyMonthAndYearInEndDate');
  }

  @override
  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress rebuild(
          void Function(
                  Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder
      toBuilder() =>
          new Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladies_in_progressData_getDiseaseEpisodeInProgress &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress')
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

class Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder
    implements
        Builder<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress,
            Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder> {
  _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  _i3.GEpisodeCategory? _category;
  _i3.GEpisodeCategory? get category => _$this._category;
  set category(_i3.GEpisodeCategory? category) => _$this._category = category;

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

  _i3.GDiseaseEpisodeType? _eventType;
  _i3.GDiseaseEpisodeType? get eventType => _$this._eventType;
  set eventType(_i3.GDiseaseEpisodeType? eventType) =>
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

  Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder() {
    Gget_maladies_in_progressData_getDiseaseEpisodeInProgress
        ._initializeBuilder(this);
  }

  Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder get _$this {
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
  void replace(
      Gget_maladies_in_progressData_getDiseaseEpisodeInProgress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress;
  }

  @override
  void update(
      void Function(
              Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress build() => _build();

  _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress _build() {
    final _$result = _$v ??
        new _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
                'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'date'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'category'),
            categoryLabel: BuiltValueNullFieldError.checkNotNull(
                categoryLabel,
                r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
                'categoryLabel'),
            isListOfActs: BuiltValueNullFieldError.checkNotNull(
                isListOfActs,
                r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress',
                'isListOfActs'),
            startDate: BuiltValueNullFieldError.checkNotNull(startDate, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'startDate'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'name'),
            eventType: BuiltValueNullFieldError.checkNotNull(eventType, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'eventType'),
            comment: comment,
            endDate: endDate,
            diseaseId: BuiltValueNullFieldError.checkNotNull(diseaseId, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'diseaseId'),
            hasOnlyYearInStartDate: BuiltValueNullFieldError.checkNotNull(hasOnlyYearInStartDate, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'hasOnlyYearInStartDate'),
            hasOnlyMonthAndYearInStartDate: BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInStartDate, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'hasOnlyMonthAndYearInStartDate'),
            hasOnlyYearInEndDate: BuiltValueNullFieldError.checkNotNull(hasOnlyYearInEndDate, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'hasOnlyYearInEndDate'),
            hasOnlyMonthAndYearInEndDate: BuiltValueNullFieldError.checkNotNull(hasOnlyMonthAndYearInEndDate, r'Gget_maladies_in_progressData_getDiseaseEpisodeInProgress', 'hasOnlyMonthAndYearInEndDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
