// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_specialities_and_professions.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_specialities_and_professionsData>
    _$ggetSpecialitiesAndProfessionsDataSerializer =
    new _$Gget_specialities_and_professionsDataSerializer();
Serializer<Gget_specialities_and_professionsData_specialities>
    _$ggetSpecialitiesAndProfessionsDataSpecialitiesSerializer =
    new _$Gget_specialities_and_professionsData_specialitiesSerializer();
Serializer<Gget_specialities_and_professionsData_professions>
    _$ggetSpecialitiesAndProfessionsDataProfessionsSerializer =
    new _$Gget_specialities_and_professionsData_professionsSerializer();

class _$Gget_specialities_and_professionsDataSerializer
    implements StructuredSerializer<Gget_specialities_and_professionsData> {
  @override
  final Iterable<Type> types = const [
    Gget_specialities_and_professionsData,
    _$Gget_specialities_and_professionsData
  ];
  @override
  final String wireName = 'Gget_specialities_and_professionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_specialities_and_professionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'specialities',
      serializers.serialize(object.specialities,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_specialities_and_professionsData_specialities)
          ])),
      'professions',
      serializers.serialize(object.professions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_specialities_and_professionsData_professions)
          ])),
    ];

    return result;
  }

  @override
  Gget_specialities_and_professionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_specialities_and_professionsDataBuilder();

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
        case 'specialities':
          result.specialities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_specialities_and_professionsData_specialities)
              ]))! as BuiltList<Object?>);
          break;
        case 'professions':
          result.professions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_specialities_and_professionsData_professions)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_specialities_and_professionsData_specialitiesSerializer
    implements
        StructuredSerializer<
            Gget_specialities_and_professionsData_specialities> {
  @override
  final Iterable<Type> types = const [
    Gget_specialities_and_professionsData_specialities,
    _$Gget_specialities_and_professionsData_specialities
  ];
  @override
  final String wireName = 'Gget_specialities_and_professionsData_specialities';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_specialities_and_professionsData_specialities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'treCode',
      serializers.serialize(object.treCode,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_specialities_and_professionsData_specialities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_specialities_and_professionsData_specialitiesBuilder();

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
        case 'treCode':
          result.treCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_specialities_and_professionsData_professionsSerializer
    implements
        StructuredSerializer<
            Gget_specialities_and_professionsData_professions> {
  @override
  final Iterable<Type> types = const [
    Gget_specialities_and_professionsData_professions,
    _$Gget_specialities_and_professionsData_professions
  ];
  @override
  final String wireName = 'Gget_specialities_and_professionsData_professions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_specialities_and_professionsData_professions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'treCode',
      serializers.serialize(object.treCode,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_specialities_and_professionsData_professions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_specialities_and_professionsData_professionsBuilder();

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
        case 'treCode':
          result.treCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_specialities_and_professionsData
    extends Gget_specialities_and_professionsData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_specialities_and_professionsData_specialities>
      specialities;
  @override
  final BuiltList<Gget_specialities_and_professionsData_professions>
      professions;

  factory _$Gget_specialities_and_professionsData(
          [void Function(Gget_specialities_and_professionsDataBuilder)?
              updates]) =>
      (new Gget_specialities_and_professionsDataBuilder()..update(updates))
          ._build();

  _$Gget_specialities_and_professionsData._(
      {required this.G__typename,
      required this.specialities,
      required this.professions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_specialities_and_professionsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        specialities, r'Gget_specialities_and_professionsData', 'specialities');
    BuiltValueNullFieldError.checkNotNull(
        professions, r'Gget_specialities_and_professionsData', 'professions');
  }

  @override
  Gget_specialities_and_professionsData rebuild(
          void Function(Gget_specialities_and_professionsDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_specialities_and_professionsDataBuilder toBuilder() =>
      new Gget_specialities_and_professionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_specialities_and_professionsData &&
        G__typename == other.G__typename &&
        specialities == other.specialities &&
        professions == other.professions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, specialities.hashCode);
    _$hash = $jc(_$hash, professions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_specialities_and_professionsData')
          ..add('G__typename', G__typename)
          ..add('specialities', specialities)
          ..add('professions', professions))
        .toString();
  }
}

class Gget_specialities_and_professionsDataBuilder
    implements
        Builder<Gget_specialities_and_professionsData,
            Gget_specialities_and_professionsDataBuilder> {
  _$Gget_specialities_and_professionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_specialities_and_professionsData_specialities>?
      _specialities;
  ListBuilder<Gget_specialities_and_professionsData_specialities>
      get specialities => _$this._specialities ??=
          new ListBuilder<Gget_specialities_and_professionsData_specialities>();
  set specialities(
          ListBuilder<Gget_specialities_and_professionsData_specialities>?
              specialities) =>
      _$this._specialities = specialities;

  ListBuilder<Gget_specialities_and_professionsData_professions>? _professions;
  ListBuilder<Gget_specialities_and_professionsData_professions>
      get professions => _$this._professions ??=
          new ListBuilder<Gget_specialities_and_professionsData_professions>();
  set professions(
          ListBuilder<Gget_specialities_and_professionsData_professions>?
              professions) =>
      _$this._professions = professions;

  Gget_specialities_and_professionsDataBuilder() {
    Gget_specialities_and_professionsData._initializeBuilder(this);
  }

  Gget_specialities_and_professionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _specialities = $v.specialities.toBuilder();
      _professions = $v.professions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_specialities_and_professionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_specialities_and_professionsData;
  }

  @override
  void update(
      void Function(Gget_specialities_and_professionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_specialities_and_professionsData build() => _build();

  _$Gget_specialities_and_professionsData _build() {
    _$Gget_specialities_and_professionsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_specialities_and_professionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_specialities_and_professionsData', 'G__typename'),
              specialities: specialities.build(),
              professions: professions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'specialities';
        specialities.build();
        _$failedField = 'professions';
        professions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_specialities_and_professionsData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_specialities_and_professionsData_specialities
    extends Gget_specialities_and_professionsData_specialities {
  @override
  final String G__typename;
  @override
  final String treCode;
  @override
  final String? label;

  factory _$Gget_specialities_and_professionsData_specialities(
          [void Function(
                  Gget_specialities_and_professionsData_specialitiesBuilder)?
              updates]) =>
      (new Gget_specialities_and_professionsData_specialitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_specialities_and_professionsData_specialities._(
      {required this.G__typename, required this.treCode, this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_specialities_and_professionsData_specialities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(treCode,
        r'Gget_specialities_and_professionsData_specialities', 'treCode');
  }

  @override
  Gget_specialities_and_professionsData_specialities rebuild(
          void Function(
                  Gget_specialities_and_professionsData_specialitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_specialities_and_professionsData_specialitiesBuilder toBuilder() =>
      new Gget_specialities_and_professionsData_specialitiesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_specialities_and_professionsData_specialities &&
        G__typename == other.G__typename &&
        treCode == other.treCode &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, treCode.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_specialities_and_professionsData_specialities')
          ..add('G__typename', G__typename)
          ..add('treCode', treCode)
          ..add('label', label))
        .toString();
  }
}

class Gget_specialities_and_professionsData_specialitiesBuilder
    implements
        Builder<Gget_specialities_and_professionsData_specialities,
            Gget_specialities_and_professionsData_specialitiesBuilder> {
  _$Gget_specialities_and_professionsData_specialities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _treCode;
  String? get treCode => _$this._treCode;
  set treCode(String? treCode) => _$this._treCode = treCode;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_specialities_and_professionsData_specialitiesBuilder() {
    Gget_specialities_and_professionsData_specialities._initializeBuilder(this);
  }

  Gget_specialities_and_professionsData_specialitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _treCode = $v.treCode;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_specialities_and_professionsData_specialities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_specialities_and_professionsData_specialities;
  }

  @override
  void update(
      void Function(Gget_specialities_and_professionsData_specialitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_specialities_and_professionsData_specialities build() => _build();

  _$Gget_specialities_and_professionsData_specialities _build() {
    final _$result = _$v ??
        new _$Gget_specialities_and_professionsData_specialities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_specialities_and_professionsData_specialities',
                'G__typename'),
            treCode: BuiltValueNullFieldError.checkNotNull(
                treCode,
                r'Gget_specialities_and_professionsData_specialities',
                'treCode'),
            label: label);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_specialities_and_professionsData_professions
    extends Gget_specialities_and_professionsData_professions {
  @override
  final String G__typename;
  @override
  final String treCode;
  @override
  final String? label;

  factory _$Gget_specialities_and_professionsData_professions(
          [void Function(
                  Gget_specialities_and_professionsData_professionsBuilder)?
              updates]) =>
      (new Gget_specialities_and_professionsData_professionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_specialities_and_professionsData_professions._(
      {required this.G__typename, required this.treCode, this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_specialities_and_professionsData_professions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(treCode,
        r'Gget_specialities_and_professionsData_professions', 'treCode');
  }

  @override
  Gget_specialities_and_professionsData_professions rebuild(
          void Function(
                  Gget_specialities_and_professionsData_professionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_specialities_and_professionsData_professionsBuilder toBuilder() =>
      new Gget_specialities_and_professionsData_professionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_specialities_and_professionsData_professions &&
        G__typename == other.G__typename &&
        treCode == other.treCode &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, treCode.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_specialities_and_professionsData_professions')
          ..add('G__typename', G__typename)
          ..add('treCode', treCode)
          ..add('label', label))
        .toString();
  }
}

class Gget_specialities_and_professionsData_professionsBuilder
    implements
        Builder<Gget_specialities_and_professionsData_professions,
            Gget_specialities_and_professionsData_professionsBuilder> {
  _$Gget_specialities_and_professionsData_professions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _treCode;
  String? get treCode => _$this._treCode;
  set treCode(String? treCode) => _$this._treCode = treCode;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_specialities_and_professionsData_professionsBuilder() {
    Gget_specialities_and_professionsData_professions._initializeBuilder(this);
  }

  Gget_specialities_and_professionsData_professionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _treCode = $v.treCode;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_specialities_and_professionsData_professions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_specialities_and_professionsData_professions;
  }

  @override
  void update(
      void Function(Gget_specialities_and_professionsData_professionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_specialities_and_professionsData_professions build() => _build();

  _$Gget_specialities_and_professionsData_professions _build() {
    final _$result = _$v ??
        new _$Gget_specialities_and_professionsData_professions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_specialities_and_professionsData_professions',
                'G__typename'),
            treCode: BuiltValueNullFieldError.checkNotNull(
                treCode,
                r'Gget_specialities_and_professionsData_professions',
                'treCode'),
            label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
