// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_get.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_hospitalisationsData> _$ggetHospitalisationsDataSerializer =
    new _$Gget_hospitalisationsDataSerializer();
Serializer<Gget_hospitalisationsData_hospitalizations>
    _$ggetHospitalisationsDataHospitalizationsSerializer =
    new _$Gget_hospitalisationsData_hospitalizationsSerializer();
Serializer<Gget_hospitalisationsData_hospitalizations_hospitalizations>
    _$ggetHospitalisationsDataHospitalizationsHospitalizationsSerializer =
    new _$Gget_hospitalisationsData_hospitalizations_hospitalizationsSerializer();
Serializer<
        Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>
    _$ggetHospitalisationsDataHospitalizationsHospitalizationsLinkedDocumentsSerializer =
    new _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsSerializer();
Serializer<
        Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document>
    _$ggetHospitalisationsDataHospitalizationsHospitalizationsLinkedDocumentsDocumentSerializer =
    new _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentSerializer();
Serializer<Gget_hospitalisationsData_unconcerned>
    _$ggetHospitalisationsDataUnconcernedSerializer =
    new _$Gget_hospitalisationsData_unconcernedSerializer();

class _$Gget_hospitalisationsDataSerializer
    implements StructuredSerializer<Gget_hospitalisationsData> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData,
    _$Gget_hospitalisationsData
  ];
  @override
  final String wireName = 'Gget_hospitalisationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_hospitalisationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hospitalizations',
      serializers.serialize(object.hospitalizations,
          specifiedType:
              const FullType(Gget_hospitalisationsData_hospitalizations)),
      'unconcerned',
      serializers.serialize(object.unconcerned,
          specifiedType: const FullType(Gget_hospitalisationsData_unconcerned)),
    ];

    return result;
  }

  @override
  Gget_hospitalisationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_hospitalisationsDataBuilder();

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
        case 'hospitalizations':
          result.hospitalizations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_hospitalisationsData_hospitalizations))!
              as Gget_hospitalisationsData_hospitalizations);
          break;
        case 'unconcerned':
          result.unconcerned.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_hospitalisationsData_unconcerned))!
              as Gget_hospitalisationsData_unconcerned);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_hospitalisationsData_hospitalizationsSerializer
    implements
        StructuredSerializer<Gget_hospitalisationsData_hospitalizations> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData_hospitalizations,
    _$Gget_hospitalisationsData_hospitalizations
  ];
  @override
  final String wireName = 'Gget_hospitalisationsData_hospitalizations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_hospitalisationsData_hospitalizations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hospitalizations',
      serializers.serialize(object.hospitalizations,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_hospitalisationsData_hospitalizations_hospitalizations)
          ])),
    ];

    return result;
  }

  @override
  Gget_hospitalisationsData_hospitalizations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_hospitalisationsData_hospitalizationsBuilder();

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
        case 'hospitalizations':
          result.hospitalizations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_hospitalisationsData_hospitalizations_hospitalizations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizationsSerializer
    implements
        StructuredSerializer<
            Gget_hospitalisationsData_hospitalizations_hospitalizations> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData_hospitalizations_hospitalizations,
    _$Gget_hospitalisationsData_hospitalizations_hospitalizations
  ];
  @override
  final String wireName =
      'Gget_hospitalisationsData_hospitalizations_hospitalizations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_hospitalisationsData_hospitalizations_hospitalizations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'startYear',
      serializers.serialize(object.startYear,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(double)),
      'durationUnit',
      serializers.serialize(object.durationUnit,
          specifiedType: const FullType(_i2.GDurationUnitEnum)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
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
    value = object.linkedDocuments;
    if (value != null) {
      result
        ..add('linkedDocuments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments)
            ])));
    }
    return result;
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder();

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
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'durationUnit':
          result.durationUnit = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GDurationUnitEnum))!
              as _i2.GDurationUnitEnum;
          break;
        case 'linkedDocuments':
          result.linkedDocuments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsSerializer
    implements
        StructuredSerializer<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments,
    _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
  ];
  @override
  final String wireName =
      'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(
              Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder();

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
        case 'document':
          result.document.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document))!
              as Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document,
    _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
  ];
  @override
  final String wireName =
      'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_hospitalisationsData_unconcernedSerializer
    implements StructuredSerializer<Gget_hospitalisationsData_unconcerned> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsData_unconcerned,
    _$Gget_hospitalisationsData_unconcerned
  ];
  @override
  final String wireName = 'Gget_hospitalisationsData_unconcerned';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_hospitalisationsData_unconcerned object,
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
  Gget_hospitalisationsData_unconcerned deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_hospitalisationsData_unconcernedBuilder();

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

class _$Gget_hospitalisationsData extends Gget_hospitalisationsData {
  @override
  final String G__typename;
  @override
  final Gget_hospitalisationsData_hospitalizations hospitalizations;
  @override
  final Gget_hospitalisationsData_unconcerned unconcerned;

  factory _$Gget_hospitalisationsData(
          [void Function(Gget_hospitalisationsDataBuilder)? updates]) =>
      (new Gget_hospitalisationsDataBuilder()..update(updates))._build();

  _$Gget_hospitalisationsData._(
      {required this.G__typename,
      required this.hospitalizations,
      required this.unconcerned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_hospitalisationsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hospitalizations, r'Gget_hospitalisationsData', 'hospitalizations');
    BuiltValueNullFieldError.checkNotNull(
        unconcerned, r'Gget_hospitalisationsData', 'unconcerned');
  }

  @override
  Gget_hospitalisationsData rebuild(
          void Function(Gget_hospitalisationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsDataBuilder toBuilder() =>
      new Gget_hospitalisationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_hospitalisationsData &&
        G__typename == other.G__typename &&
        hospitalizations == other.hospitalizations &&
        unconcerned == other.unconcerned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, hospitalizations.hashCode);
    _$hash = $jc(_$hash, unconcerned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_hospitalisationsData')
          ..add('G__typename', G__typename)
          ..add('hospitalizations', hospitalizations)
          ..add('unconcerned', unconcerned))
        .toString();
  }
}

class Gget_hospitalisationsDataBuilder
    implements
        Builder<Gget_hospitalisationsData, Gget_hospitalisationsDataBuilder> {
  _$Gget_hospitalisationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_hospitalisationsData_hospitalizationsBuilder? _hospitalizations;
  Gget_hospitalisationsData_hospitalizationsBuilder get hospitalizations =>
      _$this._hospitalizations ??=
          new Gget_hospitalisationsData_hospitalizationsBuilder();
  set hospitalizations(
          Gget_hospitalisationsData_hospitalizationsBuilder?
              hospitalizations) =>
      _$this._hospitalizations = hospitalizations;

  Gget_hospitalisationsData_unconcernedBuilder? _unconcerned;
  Gget_hospitalisationsData_unconcernedBuilder get unconcerned =>
      _$this._unconcerned ??=
          new Gget_hospitalisationsData_unconcernedBuilder();
  set unconcerned(Gget_hospitalisationsData_unconcernedBuilder? unconcerned) =>
      _$this._unconcerned = unconcerned;

  Gget_hospitalisationsDataBuilder() {
    Gget_hospitalisationsData._initializeBuilder(this);
  }

  Gget_hospitalisationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hospitalizations = $v.hospitalizations.toBuilder();
      _unconcerned = $v.unconcerned.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_hospitalisationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_hospitalisationsData;
  }

  @override
  void update(void Function(Gget_hospitalisationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData build() => _build();

  _$Gget_hospitalisationsData _build() {
    _$Gget_hospitalisationsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_hospitalisationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_hospitalisationsData', 'G__typename'),
              hospitalizations: hospitalizations.build(),
              unconcerned: unconcerned.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hospitalizations';
        hospitalizations.build();
        _$failedField = 'unconcerned';
        unconcerned.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_hospitalisationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_hospitalisationsData_hospitalizations
    extends Gget_hospitalisationsData_hospitalizations {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_hospitalisationsData_hospitalizations_hospitalizations>
      hospitalizations;

  factory _$Gget_hospitalisationsData_hospitalizations(
          [void Function(Gget_hospitalisationsData_hospitalizationsBuilder)?
              updates]) =>
      (new Gget_hospitalisationsData_hospitalizationsBuilder()..update(updates))
          ._build();

  _$Gget_hospitalisationsData_hospitalizations._(
      {required this.G__typename, required this.hospitalizations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_hospitalisationsData_hospitalizations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(hospitalizations,
        r'Gget_hospitalisationsData_hospitalizations', 'hospitalizations');
  }

  @override
  Gget_hospitalisationsData_hospitalizations rebuild(
          void Function(Gget_hospitalisationsData_hospitalizationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsData_hospitalizationsBuilder toBuilder() =>
      new Gget_hospitalisationsData_hospitalizationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_hospitalisationsData_hospitalizations &&
        G__typename == other.G__typename &&
        hospitalizations == other.hospitalizations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, hospitalizations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_hospitalisationsData_hospitalizations')
          ..add('G__typename', G__typename)
          ..add('hospitalizations', hospitalizations))
        .toString();
  }
}

class Gget_hospitalisationsData_hospitalizationsBuilder
    implements
        Builder<Gget_hospitalisationsData_hospitalizations,
            Gget_hospitalisationsData_hospitalizationsBuilder> {
  _$Gget_hospitalisationsData_hospitalizations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_hospitalisationsData_hospitalizations_hospitalizations>?
      _hospitalizations;
  ListBuilder<Gget_hospitalisationsData_hospitalizations_hospitalizations>
      get hospitalizations => _$this._hospitalizations ??= new ListBuilder<
          Gget_hospitalisationsData_hospitalizations_hospitalizations>();
  set hospitalizations(
          ListBuilder<
                  Gget_hospitalisationsData_hospitalizations_hospitalizations>?
              hospitalizations) =>
      _$this._hospitalizations = hospitalizations;

  Gget_hospitalisationsData_hospitalizationsBuilder() {
    Gget_hospitalisationsData_hospitalizations._initializeBuilder(this);
  }

  Gget_hospitalisationsData_hospitalizationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hospitalizations = $v.hospitalizations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_hospitalisationsData_hospitalizations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_hospitalisationsData_hospitalizations;
  }

  @override
  void update(
      void Function(Gget_hospitalisationsData_hospitalizationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData_hospitalizations build() => _build();

  _$Gget_hospitalisationsData_hospitalizations _build() {
    _$Gget_hospitalisationsData_hospitalizations _$result;
    try {
      _$result = _$v ??
          new _$Gget_hospitalisationsData_hospitalizations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_hospitalisationsData_hospitalizations', 'G__typename'),
              hospitalizations: hospitalizations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hospitalizations';
        hospitalizations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_hospitalisationsData_hospitalizations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizations
    extends Gget_hospitalisationsData_hospitalizations_hospitalizations {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String id;
  @override
  final String? startDay;
  @override
  final String? startMonth;
  @override
  final String startYear;
  @override
  final double duration;
  @override
  final _i2.GDurationUnitEnum durationUnit;
  @override
  final BuiltList<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>?
      linkedDocuments;

  factory _$Gget_hospitalisationsData_hospitalizations_hospitalizations(
          [void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder)?
              updates]) =>
      (new Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations._(
      {required this.G__typename,
      required this.name,
      this.comment,
      required this.id,
      this.startDay,
      this.startMonth,
      required this.startYear,
      required this.duration,
      required this.durationUnit,
      this.linkedDocuments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'name');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'id');
    BuiltValueNullFieldError.checkNotNull(
        startYear,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
        'startYear');
    BuiltValueNullFieldError.checkNotNull(
        duration,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
        'duration');
    BuiltValueNullFieldError.checkNotNull(
        durationUnit,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
        'durationUnit');
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations rebuild(
          void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder
      toBuilder() =>
          new Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_hospitalisationsData_hospitalizations_hospitalizations &&
        G__typename == other.G__typename &&
        name == other.name &&
        comment == other.comment &&
        id == other.id &&
        startDay == other.startDay &&
        startMonth == other.startMonth &&
        startYear == other.startYear &&
        duration == other.duration &&
        durationUnit == other.durationUnit &&
        linkedDocuments == other.linkedDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startDay.hashCode);
    _$hash = $jc(_$hash, startMonth.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, durationUnit.hashCode);
    _$hash = $jc(_$hash, linkedDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_hospitalisationsData_hospitalizations_hospitalizations')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('comment', comment)
          ..add('id', id)
          ..add('startDay', startDay)
          ..add('startMonth', startMonth)
          ..add('startYear', startYear)
          ..add('duration', duration)
          ..add('durationUnit', durationUnit)
          ..add('linkedDocuments', linkedDocuments))
        .toString();
  }
}

class Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder
    implements
        Builder<Gget_hospitalisationsData_hospitalizations_hospitalizations,
            Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder> {
  _$Gget_hospitalisationsData_hospitalizations_hospitalizations? _$v;

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

  String? _startDay;
  String? get startDay => _$this._startDay;
  set startDay(String? startDay) => _$this._startDay = startDay;

  String? _startMonth;
  String? get startMonth => _$this._startMonth;
  set startMonth(String? startMonth) => _$this._startMonth = startMonth;

  String? _startYear;
  String? get startYear => _$this._startYear;
  set startYear(String? startYear) => _$this._startYear = startYear;

  double? _duration;
  double? get duration => _$this._duration;
  set duration(double? duration) => _$this._duration = duration;

  _i2.GDurationUnitEnum? _durationUnit;
  _i2.GDurationUnitEnum? get durationUnit => _$this._durationUnit;
  set durationUnit(_i2.GDurationUnitEnum? durationUnit) =>
      _$this._durationUnit = durationUnit;

  ListBuilder<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>?
      _linkedDocuments;
  ListBuilder<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>
      get linkedDocuments => _$this._linkedDocuments ??= new ListBuilder<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder() {
    Gget_hospitalisationsData_hospitalizations_hospitalizations
        ._initializeBuilder(this);
  }

  Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _comment = $v.comment;
      _id = $v.id;
      _startDay = $v.startDay;
      _startMonth = $v.startMonth;
      _startYear = $v.startYear;
      _duration = $v.duration;
      _durationUnit = $v.durationUnit;
      _linkedDocuments = $v.linkedDocuments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_hospitalisationsData_hospitalizations_hospitalizations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_hospitalisationsData_hospitalizations_hospitalizations;
  }

  @override
  void update(
      void Function(
              Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations build() =>
      _build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations _build() {
    _$Gget_hospitalisationsData_hospitalizations_hospitalizations _$result;
    try {
      _$result = _$v ??
          new _$Gget_hospitalisationsData_hospitalizations_hospitalizations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'name'),
              comment: comment,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'id'),
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'startYear'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'Gget_hospitalisationsData_hospitalizations_hospitalizations', 'duration'),
              durationUnit: BuiltValueNullFieldError.checkNotNull(
                  durationUnit,
                  r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
                  'durationUnit'),
              linkedDocuments: _linkedDocuments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDocuments';
        _linkedDocuments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_hospitalisationsData_hospitalizations_hospitalizations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
    extends Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      document;

  factory _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments(
          [void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder)?
              updates]) =>
      (new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
        'linkId');
    BuiltValueNullFieldError.checkNotNull(
        document,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
        'document');
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
      rebuild(
              void Function(
                      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder
      toBuilder() =>
          new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        document == other.document;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder
    implements
        Builder<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments,
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder> {
  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder?
      _document;
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
      get document => _$this._document ??=
          new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder();
  set document(
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder?
              document) =>
      _$this._document = document;

  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder() {
    Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
        ._initializeBuilder(this);
  }

  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _document = $v.document.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments;
  }

  @override
  void update(
      void Function(
              Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
      build() => _build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
      _build() {
    _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
                  'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
    extends Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document(
          [void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder)?
              updates]) =>
      (new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
        'title');
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      rebuild(
              void Function(
                      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
      toBuilder() =>
          new Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
    implements
        Builder<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document,
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder> {
  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder() {
    Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
        ._initializeBuilder(this);
  }

  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document;
  }

  @override
  void update(
      void Function(
              Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      build() => _build();

  _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      _build() {
    final _$result = _$v ??
        new _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document',
                'title'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_hospitalisationsData_unconcerned
    extends Gget_hospitalisationsData_unconcerned {
  @override
  final String G__typename;
  @override
  final String? declarationDate;

  factory _$Gget_hospitalisationsData_unconcerned(
          [void Function(Gget_hospitalisationsData_unconcernedBuilder)?
              updates]) =>
      (new Gget_hospitalisationsData_unconcernedBuilder()..update(updates))
          ._build();

  _$Gget_hospitalisationsData_unconcerned._(
      {required this.G__typename, this.declarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_hospitalisationsData_unconcerned', 'G__typename');
  }

  @override
  Gget_hospitalisationsData_unconcerned rebuild(
          void Function(Gget_hospitalisationsData_unconcernedBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsData_unconcernedBuilder toBuilder() =>
      new Gget_hospitalisationsData_unconcernedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_hospitalisationsData_unconcerned &&
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
            r'Gget_hospitalisationsData_unconcerned')
          ..add('G__typename', G__typename)
          ..add('declarationDate', declarationDate))
        .toString();
  }
}

class Gget_hospitalisationsData_unconcernedBuilder
    implements
        Builder<Gget_hospitalisationsData_unconcerned,
            Gget_hospitalisationsData_unconcernedBuilder> {
  _$Gget_hospitalisationsData_unconcerned? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _declarationDate;
  String? get declarationDate => _$this._declarationDate;
  set declarationDate(String? declarationDate) =>
      _$this._declarationDate = declarationDate;

  Gget_hospitalisationsData_unconcernedBuilder() {
    Gget_hospitalisationsData_unconcerned._initializeBuilder(this);
  }

  Gget_hospitalisationsData_unconcernedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _declarationDate = $v.declarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_hospitalisationsData_unconcerned other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_hospitalisationsData_unconcerned;
  }

  @override
  void update(
      void Function(Gget_hospitalisationsData_unconcernedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsData_unconcerned build() => _build();

  _$Gget_hospitalisationsData_unconcerned _build() {
    final _$result = _$v ??
        new _$Gget_hospitalisationsData_unconcerned._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_hospitalisationsData_unconcerned', 'G__typename'),
            declarationDate: declarationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
