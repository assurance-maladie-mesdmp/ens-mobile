// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_professionnel_de_sante_traces_by_idData>
    _$ggetProfessionnelDeSanteTracesByIdDataSerializer =
    new _$Gget_professionnel_de_sante_traces_by_idDataSerializer();
Serializer<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>
    _$ggetProfessionnelDeSanteTracesByIdDataGetPsTracesHistorySerializer =
    new _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistorySerializer();

class _$Gget_professionnel_de_sante_traces_by_idDataSerializer
    implements
        StructuredSerializer<Gget_professionnel_de_sante_traces_by_idData> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnel_de_sante_traces_by_idData,
    _$Gget_professionnel_de_sante_traces_by_idData
  ];
  @override
  final String wireName = 'Gget_professionnel_de_sante_traces_by_idData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnel_de_sante_traces_by_idData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getPsTracesHistory',
      serializers.serialize(object.getPsTracesHistory,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory)
          ])),
    ];

    return result;
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_professionnel_de_sante_traces_by_idDataBuilder();

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
        case 'getPsTracesHistory':
          result.getPsTracesHistory.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistorySerializer
    implements
        StructuredSerializer<
            Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory,
    _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
  ];
  @override
  final String wireName =
      'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnel_de_sante_traces_by_idData
    extends Gget_professionnel_de_sante_traces_by_idData {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>
      getPsTracesHistory;

  factory _$Gget_professionnel_de_sante_traces_by_idData(
          [void Function(Gget_professionnel_de_sante_traces_by_idDataBuilder)?
              updates]) =>
      (new Gget_professionnel_de_sante_traces_by_idDataBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnel_de_sante_traces_by_idData._(
      {required this.G__typename, required this.getPsTracesHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_professionnel_de_sante_traces_by_idData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getPsTracesHistory,
        r'Gget_professionnel_de_sante_traces_by_idData', 'getPsTracesHistory');
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData rebuild(
          void Function(Gget_professionnel_de_sante_traces_by_idDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnel_de_sante_traces_by_idDataBuilder toBuilder() =>
      new Gget_professionnel_de_sante_traces_by_idDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnel_de_sante_traces_by_idData &&
        G__typename == other.G__typename &&
        getPsTracesHistory == other.getPsTracesHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPsTracesHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnel_de_sante_traces_by_idData')
          ..add('G__typename', G__typename)
          ..add('getPsTracesHistory', getPsTracesHistory))
        .toString();
  }
}

class Gget_professionnel_de_sante_traces_by_idDataBuilder
    implements
        Builder<Gget_professionnel_de_sante_traces_by_idData,
            Gget_professionnel_de_sante_traces_by_idDataBuilder> {
  _$Gget_professionnel_de_sante_traces_by_idData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>?
      _getPsTracesHistory;
  ListBuilder<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>
      get getPsTracesHistory => _$this._getPsTracesHistory ??= new ListBuilder<
          Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>();
  set getPsTracesHistory(
          ListBuilder<
                  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>?
              getPsTracesHistory) =>
      _$this._getPsTracesHistory = getPsTracesHistory;

  Gget_professionnel_de_sante_traces_by_idDataBuilder() {
    Gget_professionnel_de_sante_traces_by_idData._initializeBuilder(this);
  }

  Gget_professionnel_de_sante_traces_by_idDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPsTracesHistory = $v.getPsTracesHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnel_de_sante_traces_by_idData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnel_de_sante_traces_by_idData;
  }

  @override
  void update(
      void Function(Gget_professionnel_de_sante_traces_by_idDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData build() => _build();

  _$Gget_professionnel_de_sante_traces_by_idData _build() {
    _$Gget_professionnel_de_sante_traces_by_idData _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnel_de_sante_traces_by_idData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_professionnel_de_sante_traces_by_idData',
                  'G__typename'),
              getPsTracesHistory: getPsTracesHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPsTracesHistory';
        getPsTracesHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnel_de_sante_traces_by_idData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
    extends Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final String? name;
  @override
  final String? author;

  factory _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory(
          [void Function(
                  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder)?
              updates]) =>
      (new Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory._(
      {required this.G__typename, required this.date, this.name, this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory',
        'date');
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory rebuild(
          void Function(
                  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder
      toBuilder() =>
          new Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory &&
        G__typename == other.G__typename &&
        date == other.date &&
        name == other.name &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('name', name)
          ..add('author', author))
        .toString();
  }
}

class Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder
    implements
        Builder<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory,
            Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder> {
  _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder() {
    Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
        ._initializeBuilder(this);
  }

  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _name = $v.name;
      _author = $v.author;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory;
  }

  @override
  void update(
      void Function(
              Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory build() =>
      _build();

  _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory _build() {
    final _$result = _$v ??
        new _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory',
                'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date,
                r'Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory',
                'date'),
            name: name,
            author: author);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
