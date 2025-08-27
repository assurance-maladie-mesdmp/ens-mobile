// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallergieData> _$gallergieDataSerializer =
    new _$GallergieDataSerializer();
Serializer<GallergieData_linkedTreatments>
    _$gallergieDataLinkedTreatmentsSerializer =
    new _$GallergieData_linkedTreatmentsSerializer();
Serializer<GallergieData_linkedTreatments_treatment>
    _$gallergieDataLinkedTreatmentsTreatmentSerializer =
    new _$GallergieData_linkedTreatments_treatmentSerializer();

class _$GallergieDataSerializer implements StructuredSerializer<GallergieData> {
  @override
  final Iterable<Type> types = const [GallergieData, _$GallergieData];
  @override
  final String wireName = 'GallergieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallergieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedTreatments;
    if (value != null) {
      result
        ..add('linkedTreatments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GallergieData_linkedTreatments)])));
    }
    return result;
  }

  @override
  GallergieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieDataBuilder();

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
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'linkedTreatments':
          result.linkedTreatments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GallergieData_linkedTreatments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GallergieData_linkedTreatmentsSerializer
    implements StructuredSerializer<GallergieData_linkedTreatments> {
  @override
  final Iterable<Type> types = const [
    GallergieData_linkedTreatments,
    _$GallergieData_linkedTreatments
  ];
  @override
  final String wireName = 'GallergieData_linkedTreatments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallergieData_linkedTreatments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'treatment',
      serializers.serialize(object.treatment,
          specifiedType:
              const FullType(GallergieData_linkedTreatments_treatment)),
    ];

    return result;
  }

  @override
  GallergieData_linkedTreatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieData_linkedTreatmentsBuilder();

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
        case 'linkId':
          result.linkId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'treatment':
          result.treatment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallergieData_linkedTreatments_treatment))!
              as GallergieData_linkedTreatments_treatment);
          break;
      }
    }

    return result.build();
  }
}

class _$GallergieData_linkedTreatments_treatmentSerializer
    implements StructuredSerializer<GallergieData_linkedTreatments_treatment> {
  @override
  final Iterable<Type> types = const [
    GallergieData_linkedTreatments_treatment,
    _$GallergieData_linkedTreatments_treatment
  ];
  @override
  final String wireName = 'GallergieData_linkedTreatments_treatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallergieData_linkedTreatments_treatment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'startYear',
      serializers.serialize(object.startYear,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dosage;
    if (value != null) {
      result
        ..add('dosage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDay;
    if (value != null) {
      result
        ..add('startDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startMonth;
    if (value != null) {
      result
        ..add('startMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDay;
    if (value != null) {
      result
        ..add('endDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endMonth;
    if (value != null) {
      result
        ..add('endMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endYear;
    if (value != null) {
      result
        ..add('endYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GallergieData_linkedTreatments_treatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieData_linkedTreatments_treatmentBuilder();

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
        case 'dosage':
          result.dosage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDay':
          result.startDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startMonth':
          result.startMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startYear':
          result.startYear = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDay':
          result.endDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endMonth':
          result.endMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endYear':
          result.endYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallergieData extends GallergieData {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String id;
  @override
  final BuiltList<GallergieData_linkedTreatments>? linkedTreatments;

  factory _$GallergieData([void Function(GallergieDataBuilder)? updates]) =>
      (new GallergieDataBuilder()..update(updates))._build();

  _$GallergieData._(
      {required this.G__typename,
      required this.name,
      this.comment,
      required this.id,
      this.linkedTreatments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallergieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(name, r'GallergieData', 'name');
    BuiltValueNullFieldError.checkNotNull(id, r'GallergieData', 'id');
  }

  @override
  GallergieData rebuild(void Function(GallergieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieDataBuilder toBuilder() => new GallergieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieData &&
        G__typename == other.G__typename &&
        name == other.name &&
        comment == other.comment &&
        id == other.id &&
        linkedTreatments == other.linkedTreatments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, linkedTreatments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallergieData')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('comment', comment)
          ..add('id', id)
          ..add('linkedTreatments', linkedTreatments))
        .toString();
  }
}

class GallergieDataBuilder
    implements Builder<GallergieData, GallergieDataBuilder> {
  _$GallergieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<GallergieData_linkedTreatments>? _linkedTreatments;
  ListBuilder<GallergieData_linkedTreatments> get linkedTreatments =>
      _$this._linkedTreatments ??=
          new ListBuilder<GallergieData_linkedTreatments>();
  set linkedTreatments(
          ListBuilder<GallergieData_linkedTreatments>? linkedTreatments) =>
      _$this._linkedTreatments = linkedTreatments;

  GallergieDataBuilder() {
    GallergieData._initializeBuilder(this);
  }

  GallergieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _comment = $v.comment;
      _id = $v.id;
      _linkedTreatments = $v.linkedTreatments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallergieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieData;
  }

  @override
  void update(void Function(GallergieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieData build() => _build();

  _$GallergieData _build() {
    _$GallergieData _$result;
    try {
      _$result = _$v ??
          new _$GallergieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallergieData', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GallergieData', 'name'),
              comment: comment,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GallergieData', 'id'),
              linkedTreatments: _linkedTreatments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedTreatments';
        _linkedTreatments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallergieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallergieData_linkedTreatments extends GallergieData_linkedTreatments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GallergieData_linkedTreatments_treatment treatment;

  factory _$GallergieData_linkedTreatments(
          [void Function(GallergieData_linkedTreatmentsBuilder)? updates]) =>
      (new GallergieData_linkedTreatmentsBuilder()..update(updates))._build();

  _$GallergieData_linkedTreatments._(
      {required this.G__typename,
      required this.linkId,
      required this.treatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallergieData_linkedTreatments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GallergieData_linkedTreatments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        treatment, r'GallergieData_linkedTreatments', 'treatment');
  }

  @override
  GallergieData_linkedTreatments rebuild(
          void Function(GallergieData_linkedTreatmentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieData_linkedTreatmentsBuilder toBuilder() =>
      new GallergieData_linkedTreatmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieData_linkedTreatments &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        treatment == other.treatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, treatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallergieData_linkedTreatments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('treatment', treatment))
        .toString();
  }
}

class GallergieData_linkedTreatmentsBuilder
    implements
        Builder<GallergieData_linkedTreatments,
            GallergieData_linkedTreatmentsBuilder> {
  _$GallergieData_linkedTreatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GallergieData_linkedTreatments_treatmentBuilder? _treatment;
  GallergieData_linkedTreatments_treatmentBuilder get treatment =>
      _$this._treatment ??=
          new GallergieData_linkedTreatments_treatmentBuilder();
  set treatment(GallergieData_linkedTreatments_treatmentBuilder? treatment) =>
      _$this._treatment = treatment;

  GallergieData_linkedTreatmentsBuilder() {
    GallergieData_linkedTreatments._initializeBuilder(this);
  }

  GallergieData_linkedTreatmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _treatment = $v.treatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallergieData_linkedTreatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieData_linkedTreatments;
  }

  @override
  void update(void Function(GallergieData_linkedTreatmentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieData_linkedTreatments build() => _build();

  _$GallergieData_linkedTreatments _build() {
    _$GallergieData_linkedTreatments _$result;
    try {
      _$result = _$v ??
          new _$GallergieData_linkedTreatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GallergieData_linkedTreatments', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GallergieData_linkedTreatments', 'linkId'),
              treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallergieData_linkedTreatments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallergieData_linkedTreatments_treatment
    extends GallergieData_linkedTreatments_treatment {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String? dosage;
  @override
  final String? startDay;
  @override
  final String? startMonth;
  @override
  final String startYear;
  @override
  final String? endDay;
  @override
  final String? endMonth;
  @override
  final String? endYear;

  factory _$GallergieData_linkedTreatments_treatment(
          [void Function(GallergieData_linkedTreatments_treatmentBuilder)?
              updates]) =>
      (new GallergieData_linkedTreatments_treatmentBuilder()..update(updates))
          ._build();

  _$GallergieData_linkedTreatments_treatment._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment,
      this.dosage,
      this.startDay,
      this.startMonth,
      required this.startYear,
      this.endDay,
      this.endMonth,
      this.endYear})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallergieData_linkedTreatments_treatment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GallergieData_linkedTreatments_treatment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GallergieData_linkedTreatments_treatment', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GallergieData_linkedTreatments_treatment', 'startYear');
  }

  @override
  GallergieData_linkedTreatments_treatment rebuild(
          void Function(GallergieData_linkedTreatments_treatmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieData_linkedTreatments_treatmentBuilder toBuilder() =>
      new GallergieData_linkedTreatments_treatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieData_linkedTreatments_treatment &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        dosage == other.dosage &&
        startDay == other.startDay &&
        startMonth == other.startMonth &&
        startYear == other.startYear &&
        endDay == other.endDay &&
        endMonth == other.endMonth &&
        endYear == other.endYear;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, dosage.hashCode);
    _$hash = $jc(_$hash, startDay.hashCode);
    _$hash = $jc(_$hash, startMonth.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, endDay.hashCode);
    _$hash = $jc(_$hash, endMonth.hashCode);
    _$hash = $jc(_$hash, endYear.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GallergieData_linkedTreatments_treatment')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('dosage', dosage)
          ..add('startDay', startDay)
          ..add('startMonth', startMonth)
          ..add('startYear', startYear)
          ..add('endDay', endDay)
          ..add('endMonth', endMonth)
          ..add('endYear', endYear))
        .toString();
  }
}

class GallergieData_linkedTreatments_treatmentBuilder
    implements
        Builder<GallergieData_linkedTreatments_treatment,
            GallergieData_linkedTreatments_treatmentBuilder> {
  _$GallergieData_linkedTreatments_treatment? _$v;

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

  String? _dosage;
  String? get dosage => _$this._dosage;
  set dosage(String? dosage) => _$this._dosage = dosage;

  String? _startDay;
  String? get startDay => _$this._startDay;
  set startDay(String? startDay) => _$this._startDay = startDay;

  String? _startMonth;
  String? get startMonth => _$this._startMonth;
  set startMonth(String? startMonth) => _$this._startMonth = startMonth;

  String? _startYear;
  String? get startYear => _$this._startYear;
  set startYear(String? startYear) => _$this._startYear = startYear;

  String? _endDay;
  String? get endDay => _$this._endDay;
  set endDay(String? endDay) => _$this._endDay = endDay;

  String? _endMonth;
  String? get endMonth => _$this._endMonth;
  set endMonth(String? endMonth) => _$this._endMonth = endMonth;

  String? _endYear;
  String? get endYear => _$this._endYear;
  set endYear(String? endYear) => _$this._endYear = endYear;

  GallergieData_linkedTreatments_treatmentBuilder() {
    GallergieData_linkedTreatments_treatment._initializeBuilder(this);
  }

  GallergieData_linkedTreatments_treatmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _dosage = $v.dosage;
      _startDay = $v.startDay;
      _startMonth = $v.startMonth;
      _startYear = $v.startYear;
      _endDay = $v.endDay;
      _endMonth = $v.endMonth;
      _endYear = $v.endYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallergieData_linkedTreatments_treatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieData_linkedTreatments_treatment;
  }

  @override
  void update(
      void Function(GallergieData_linkedTreatments_treatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieData_linkedTreatments_treatment build() => _build();

  _$GallergieData_linkedTreatments_treatment _build() {
    final _$result = _$v ??
        new _$GallergieData_linkedTreatments_treatment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallergieData_linkedTreatments_treatment', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GallergieData_linkedTreatments_treatment', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GallergieData_linkedTreatments_treatment', 'name'),
            comment: comment,
            dosage: dosage,
            startDay: startDay,
            startMonth: startMonth,
            startYear: BuiltValueNullFieldError.checkNotNull(startYear,
                r'GallergieData_linkedTreatments_treatment', 'startYear'),
            endDay: endDay,
            endMonth: endMonth,
            endYear: endYear);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
