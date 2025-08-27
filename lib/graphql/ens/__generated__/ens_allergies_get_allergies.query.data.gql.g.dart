// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_get_allergies.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_allergiesData> _$ggetAllergiesDataSerializer =
    new _$Gget_allergiesDataSerializer();
Serializer<Gget_allergiesData_allergies>
    _$ggetAllergiesDataAllergiesSerializer =
    new _$Gget_allergiesData_allergiesSerializer();
Serializer<Gget_allergiesData_allergies_allergies>
    _$ggetAllergiesDataAllergiesAllergiesSerializer =
    new _$Gget_allergiesData_allergies_allergiesSerializer();
Serializer<Gget_allergiesData_allergies_allergies_linkedTreatments>
    _$ggetAllergiesDataAllergiesAllergiesLinkedTreatmentsSerializer =
    new _$Gget_allergiesData_allergies_allergies_linkedTreatmentsSerializer();
Serializer<Gget_allergiesData_allergies_allergies_linkedTreatments_treatment>
    _$ggetAllergiesDataAllergiesAllergiesLinkedTreatmentsTreatmentSerializer =
    new _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentSerializer();

class _$Gget_allergiesDataSerializer
    implements StructuredSerializer<Gget_allergiesData> {
  @override
  final Iterable<Type> types = const [Gget_allergiesData, _$Gget_allergiesData];
  @override
  final String wireName = 'Gget_allergiesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_allergiesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.allergies;
    if (value != null) {
      result
        ..add('allergies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gget_allergiesData_allergies)));
    }
    return result;
  }

  @override
  Gget_allergiesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_allergiesDataBuilder();

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
        case 'allergies':
          result.allergies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gget_allergiesData_allergies))!
              as Gget_allergiesData_allergies);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_allergiesData_allergiesSerializer
    implements StructuredSerializer<Gget_allergiesData_allergies> {
  @override
  final Iterable<Type> types = const [
    Gget_allergiesData_allergies,
    _$Gget_allergiesData_allergies
  ];
  @override
  final String wireName = 'Gget_allergiesData_allergies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_allergiesData_allergies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'allergies',
      serializers.serialize(object.allergies,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gget_allergiesData_allergies_allergies)])),
    ];
    Object? value;
    value = object.unconcernedDeclarationDate;
    if (value != null) {
      result
        ..add('unconcernedDeclarationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_allergiesData_allergies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_allergiesData_allergiesBuilder();

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
        case 'allergies':
          result.allergies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_allergiesData_allergies_allergies)
              ]))! as BuiltList<Object?>);
          break;
        case 'unconcernedDeclarationDate':
          result.unconcernedDeclarationDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_allergiesData_allergies_allergiesSerializer
    implements StructuredSerializer<Gget_allergiesData_allergies_allergies> {
  @override
  final Iterable<Type> types = const [
    Gget_allergiesData_allergies_allergies,
    _$Gget_allergiesData_allergies_allergies
  ];
  @override
  final String wireName = 'Gget_allergiesData_allergies_allergies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_allergiesData_allergies_allergies object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_allergiesData_allergies_allergies_linkedTreatments)
            ])));
    }
    return result;
  }

  @override
  Gget_allergiesData_allergies_allergies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_allergiesData_allergies_allergiesBuilder();

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
                const FullType(
                    Gget_allergiesData_allergies_allergies_linkedTreatments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_allergiesData_allergies_allergies_linkedTreatmentsSerializer
    implements
        StructuredSerializer<
            Gget_allergiesData_allergies_allergies_linkedTreatments> {
  @override
  final Iterable<Type> types = const [
    Gget_allergiesData_allergies_allergies_linkedTreatments,
    _$Gget_allergiesData_allergies_allergies_linkedTreatments
  ];
  @override
  final String wireName =
      'Gget_allergiesData_allergies_allergies_linkedTreatments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_allergiesData_allergies_allergies_linkedTreatments object,
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
          specifiedType: const FullType(
              Gget_allergiesData_allergies_allergies_linkedTreatments_treatment)),
    ];

    return result;
  }

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder();

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
                  specifiedType: const FullType(
                      Gget_allergiesData_allergies_allergies_linkedTreatments_treatment))!
              as Gget_allergiesData_allergies_allergies_linkedTreatments_treatment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentSerializer
    implements
        StructuredSerializer<
            Gget_allergiesData_allergies_allergies_linkedTreatments_treatment> {
  @override
  final Iterable<Type> types = const [
    Gget_allergiesData_allergies_allergies_linkedTreatments_treatment,
    _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
  ];
  @override
  final String wireName =
      'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_allergiesData_allergies_allergies_linkedTreatments_treatment object,
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
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder();

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

class _$Gget_allergiesData extends Gget_allergiesData {
  @override
  final String G__typename;
  @override
  final Gget_allergiesData_allergies? allergies;

  factory _$Gget_allergiesData(
          [void Function(Gget_allergiesDataBuilder)? updates]) =>
      (new Gget_allergiesDataBuilder()..update(updates))._build();

  _$Gget_allergiesData._({required this.G__typename, this.allergies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_allergiesData', 'G__typename');
  }

  @override
  Gget_allergiesData rebuild(
          void Function(Gget_allergiesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesDataBuilder toBuilder() =>
      new Gget_allergiesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_allergiesData &&
        G__typename == other.G__typename &&
        allergies == other.allergies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_allergiesData')
          ..add('G__typename', G__typename)
          ..add('allergies', allergies))
        .toString();
  }
}

class Gget_allergiesDataBuilder
    implements Builder<Gget_allergiesData, Gget_allergiesDataBuilder> {
  _$Gget_allergiesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_allergiesData_allergiesBuilder? _allergies;
  Gget_allergiesData_allergiesBuilder get allergies =>
      _$this._allergies ??= new Gget_allergiesData_allergiesBuilder();
  set allergies(Gget_allergiesData_allergiesBuilder? allergies) =>
      _$this._allergies = allergies;

  Gget_allergiesDataBuilder() {
    Gget_allergiesData._initializeBuilder(this);
  }

  Gget_allergiesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allergies = $v.allergies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_allergiesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_allergiesData;
  }

  @override
  void update(void Function(Gget_allergiesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesData build() => _build();

  _$Gget_allergiesData _build() {
    _$Gget_allergiesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_allergiesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_allergiesData', 'G__typename'),
              allergies: _allergies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergies';
        _allergies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_allergiesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_allergiesData_allergies extends Gget_allergiesData_allergies {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_allergiesData_allergies_allergies> allergies;
  @override
  final String? unconcernedDeclarationDate;

  factory _$Gget_allergiesData_allergies(
          [void Function(Gget_allergiesData_allergiesBuilder)? updates]) =>
      (new Gget_allergiesData_allergiesBuilder()..update(updates))._build();

  _$Gget_allergiesData_allergies._(
      {required this.G__typename,
      required this.allergies,
      this.unconcernedDeclarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_allergiesData_allergies', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        allergies, r'Gget_allergiesData_allergies', 'allergies');
  }

  @override
  Gget_allergiesData_allergies rebuild(
          void Function(Gget_allergiesData_allergiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesData_allergiesBuilder toBuilder() =>
      new Gget_allergiesData_allergiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_allergiesData_allergies &&
        G__typename == other.G__typename &&
        allergies == other.allergies &&
        unconcernedDeclarationDate == other.unconcernedDeclarationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, unconcernedDeclarationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_allergiesData_allergies')
          ..add('G__typename', G__typename)
          ..add('allergies', allergies)
          ..add('unconcernedDeclarationDate', unconcernedDeclarationDate))
        .toString();
  }
}

class Gget_allergiesData_allergiesBuilder
    implements
        Builder<Gget_allergiesData_allergies,
            Gget_allergiesData_allergiesBuilder> {
  _$Gget_allergiesData_allergies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_allergiesData_allergies_allergies>? _allergies;
  ListBuilder<Gget_allergiesData_allergies_allergies> get allergies =>
      _$this._allergies ??=
          new ListBuilder<Gget_allergiesData_allergies_allergies>();
  set allergies(
          ListBuilder<Gget_allergiesData_allergies_allergies>? allergies) =>
      _$this._allergies = allergies;

  String? _unconcernedDeclarationDate;
  String? get unconcernedDeclarationDate => _$this._unconcernedDeclarationDate;
  set unconcernedDeclarationDate(String? unconcernedDeclarationDate) =>
      _$this._unconcernedDeclarationDate = unconcernedDeclarationDate;

  Gget_allergiesData_allergiesBuilder() {
    Gget_allergiesData_allergies._initializeBuilder(this);
  }

  Gget_allergiesData_allergiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _allergies = $v.allergies.toBuilder();
      _unconcernedDeclarationDate = $v.unconcernedDeclarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_allergiesData_allergies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_allergiesData_allergies;
  }

  @override
  void update(void Function(Gget_allergiesData_allergiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesData_allergies build() => _build();

  _$Gget_allergiesData_allergies _build() {
    _$Gget_allergiesData_allergies _$result;
    try {
      _$result = _$v ??
          new _$Gget_allergiesData_allergies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_allergiesData_allergies', 'G__typename'),
              allergies: allergies.build(),
              unconcernedDeclarationDate: unconcernedDeclarationDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergies';
        allergies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_allergiesData_allergies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_allergiesData_allergies_allergies
    extends Gget_allergiesData_allergies_allergies {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String id;
  @override
  final BuiltList<Gget_allergiesData_allergies_allergies_linkedTreatments>?
      linkedTreatments;

  factory _$Gget_allergiesData_allergies_allergies(
          [void Function(Gget_allergiesData_allergies_allergiesBuilder)?
              updates]) =>
      (new Gget_allergiesData_allergies_allergiesBuilder()..update(updates))
          ._build();

  _$Gget_allergiesData_allergies_allergies._(
      {required this.G__typename,
      required this.name,
      this.comment,
      required this.id,
      this.linkedTreatments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_allergiesData_allergies_allergies', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_allergiesData_allergies_allergies', 'name');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_allergiesData_allergies_allergies', 'id');
  }

  @override
  Gget_allergiesData_allergies_allergies rebuild(
          void Function(Gget_allergiesData_allergies_allergiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesData_allergies_allergiesBuilder toBuilder() =>
      new Gget_allergiesData_allergies_allergiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_allergiesData_allergies_allergies &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_allergiesData_allergies_allergies')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('comment', comment)
          ..add('id', id)
          ..add('linkedTreatments', linkedTreatments))
        .toString();
  }
}

class Gget_allergiesData_allergies_allergiesBuilder
    implements
        Builder<Gget_allergiesData_allergies_allergies,
            Gget_allergiesData_allergies_allergiesBuilder> {
  _$Gget_allergiesData_allergies_allergies? _$v;

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

  ListBuilder<Gget_allergiesData_allergies_allergies_linkedTreatments>?
      _linkedTreatments;
  ListBuilder<Gget_allergiesData_allergies_allergies_linkedTreatments>
      get linkedTreatments => _$this._linkedTreatments ??= new ListBuilder<
          Gget_allergiesData_allergies_allergies_linkedTreatments>();
  set linkedTreatments(
          ListBuilder<Gget_allergiesData_allergies_allergies_linkedTreatments>?
              linkedTreatments) =>
      _$this._linkedTreatments = linkedTreatments;

  Gget_allergiesData_allergies_allergiesBuilder() {
    Gget_allergiesData_allergies_allergies._initializeBuilder(this);
  }

  Gget_allergiesData_allergies_allergiesBuilder get _$this {
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
  void replace(Gget_allergiesData_allergies_allergies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_allergiesData_allergies_allergies;
  }

  @override
  void update(
      void Function(Gget_allergiesData_allergies_allergiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesData_allergies_allergies build() => _build();

  _$Gget_allergiesData_allergies_allergies _build() {
    _$Gget_allergiesData_allergies_allergies _$result;
    try {
      _$result = _$v ??
          new _$Gget_allergiesData_allergies_allergies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_allergiesData_allergies_allergies', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_allergiesData_allergies_allergies', 'name'),
              comment: comment,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_allergiesData_allergies_allergies', 'id'),
              linkedTreatments: _linkedTreatments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedTreatments';
        _linkedTreatments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_allergiesData_allergies_allergies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_allergiesData_allergies_allergies_linkedTreatments
    extends Gget_allergiesData_allergies_allergies_linkedTreatments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
      treatment;

  factory _$Gget_allergiesData_allergies_allergies_linkedTreatments(
          [void Function(
                  Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder)?
              updates]) =>
      (new Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_allergiesData_allergies_allergies_linkedTreatments._(
      {required this.G__typename,
      required this.linkId,
      required this.treatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        treatment,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments',
        'treatment');
  }

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments rebuild(
          void Function(
                  Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder toBuilder() =>
      new Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_allergiesData_allergies_allergies_linkedTreatments &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_allergiesData_allergies_allergies_linkedTreatments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('treatment', treatment))
        .toString();
  }
}

class Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder
    implements
        Builder<Gget_allergiesData_allergies_allergies_linkedTreatments,
            Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder> {
  _$Gget_allergiesData_allergies_allergies_linkedTreatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder?
      _treatment;
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
      get treatment => _$this._treatment ??=
          new Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder();
  set treatment(
          Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder?
              treatment) =>
      _$this._treatment = treatment;

  Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder() {
    Gget_allergiesData_allergies_allergies_linkedTreatments._initializeBuilder(
        this);
  }

  Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder get _$this {
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
  void replace(Gget_allergiesData_allergies_allergies_linkedTreatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_allergiesData_allergies_allergies_linkedTreatments;
  }

  @override
  void update(
      void Function(
              Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments build() => _build();

  _$Gget_allergiesData_allergies_allergies_linkedTreatments _build() {
    _$Gget_allergiesData_allergies_allergies_linkedTreatments _$result;
    try {
      _$result = _$v ??
          new _$Gget_allergiesData_allergies_allergies_linkedTreatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_allergiesData_allergies_allergies_linkedTreatments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_allergiesData_allergies_allergies_linkedTreatments',
                  'linkId'),
              treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_allergiesData_allergies_allergies_linkedTreatments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
    extends Gget_allergiesData_allergies_allergies_linkedTreatments_treatment {
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

  factory _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment(
          [void Function(
                  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder)?
              updates]) =>
      (new Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder()
            ..update(updates))
          ._build();

  _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear,
        r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
        'startYear');
  }

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatment rebuild(
          void Function(
                  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
      toBuilder() =>
          new Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_allergiesData_allergies_allergies_linkedTreatments_treatment &&
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
            r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment')
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

class Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
    implements
        Builder<
            Gget_allergiesData_allergies_allergies_linkedTreatments_treatment,
            Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder> {
  _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment? _$v;

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

  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder() {
    Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
        ._initializeBuilder(this);
  }

  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
      get _$this {
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
  void replace(
      Gget_allergiesData_allergies_allergies_linkedTreatments_treatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment;
  }

  @override
  void update(
      void Function(
              Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatment build() =>
      _build();

  _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment _build() {
    final _$result = _$v ??
        new _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
                'name'),
            comment: comment,
            dosage: dosage,
            startDay: startDay,
            startMonth: startMonth,
            startYear: BuiltValueNullFieldError.checkNotNull(
                startYear,
                r'Gget_allergiesData_allergies_allergies_linkedTreatments_treatment',
                'startYear'),
            endDay: endDay,
            endMonth: endMonth,
            endYear: endYear);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
