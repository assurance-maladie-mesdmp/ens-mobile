// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_mes_activites_traces.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_mes_activites_tracesData>
    _$ggetMesActivitesTracesDataSerializer =
    new _$Gget_mes_activites_tracesDataSerializer();
Serializer<Gget_mes_activites_tracesData_ensActivityHistory>
    _$ggetMesActivitesTracesDataEnsActivityHistorySerializer =
    new _$Gget_mes_activites_tracesData_ensActivityHistorySerializer();

class _$Gget_mes_activites_tracesDataSerializer
    implements StructuredSerializer<Gget_mes_activites_tracesData> {
  @override
  final Iterable<Type> types = const [
    Gget_mes_activites_tracesData,
    _$Gget_mes_activites_tracesData
  ];
  @override
  final String wireName = 'Gget_mes_activites_tracesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mes_activites_tracesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ensActivityHistory',
      serializers.serialize(object.ensActivityHistory,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_mes_activites_tracesData_ensActivityHistory)
          ])),
    ];

    return result;
  }

  @override
  Gget_mes_activites_tracesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mes_activites_tracesDataBuilder();

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
        case 'ensActivityHistory':
          result.ensActivityHistory.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_mes_activites_tracesData_ensActivityHistory)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_mes_activites_tracesData_ensActivityHistorySerializer
    implements
        StructuredSerializer<Gget_mes_activites_tracesData_ensActivityHistory> {
  @override
  final Iterable<Type> types = const [
    Gget_mes_activites_tracesData_ensActivityHistory,
    _$Gget_mes_activites_tracesData_ensActivityHistory
  ];
  @override
  final String wireName = 'Gget_mes_activites_tracesData_ensActivityHistory';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_mes_activites_tracesData_ensActivityHistory object,
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
    value = object.authorType;
    if (value != null) {
      result
        ..add('authorType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_mes_activites_tracesData_ensActivityHistory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_mes_activites_tracesData_ensActivityHistoryBuilder();

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
        case 'authorType':
          result.authorType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_mes_activites_tracesData extends Gget_mes_activites_tracesData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_mes_activites_tracesData_ensActivityHistory>
      ensActivityHistory;

  factory _$Gget_mes_activites_tracesData(
          [void Function(Gget_mes_activites_tracesDataBuilder)? updates]) =>
      (new Gget_mes_activites_tracesDataBuilder()..update(updates))._build();

  _$Gget_mes_activites_tracesData._(
      {required this.G__typename, required this.ensActivityHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_mes_activites_tracesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(ensActivityHistory,
        r'Gget_mes_activites_tracesData', 'ensActivityHistory');
  }

  @override
  Gget_mes_activites_tracesData rebuild(
          void Function(Gget_mes_activites_tracesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mes_activites_tracesDataBuilder toBuilder() =>
      new Gget_mes_activites_tracesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mes_activites_tracesData &&
        G__typename == other.G__typename &&
        ensActivityHistory == other.ensActivityHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ensActivityHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_mes_activites_tracesData')
          ..add('G__typename', G__typename)
          ..add('ensActivityHistory', ensActivityHistory))
        .toString();
  }
}

class Gget_mes_activites_tracesDataBuilder
    implements
        Builder<Gget_mes_activites_tracesData,
            Gget_mes_activites_tracesDataBuilder> {
  _$Gget_mes_activites_tracesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_mes_activites_tracesData_ensActivityHistory>?
      _ensActivityHistory;
  ListBuilder<Gget_mes_activites_tracesData_ensActivityHistory>
      get ensActivityHistory => _$this._ensActivityHistory ??=
          new ListBuilder<Gget_mes_activites_tracesData_ensActivityHistory>();
  set ensActivityHistory(
          ListBuilder<Gget_mes_activites_tracesData_ensActivityHistory>?
              ensActivityHistory) =>
      _$this._ensActivityHistory = ensActivityHistory;

  Gget_mes_activites_tracesDataBuilder() {
    Gget_mes_activites_tracesData._initializeBuilder(this);
  }

  Gget_mes_activites_tracesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ensActivityHistory = $v.ensActivityHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mes_activites_tracesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mes_activites_tracesData;
  }

  @override
  void update(void Function(Gget_mes_activites_tracesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mes_activites_tracesData build() => _build();

  _$Gget_mes_activites_tracesData _build() {
    _$Gget_mes_activites_tracesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_mes_activites_tracesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_mes_activites_tracesData', 'G__typename'),
              ensActivityHistory: ensActivityHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ensActivityHistory';
        ensActivityHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_mes_activites_tracesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_mes_activites_tracesData_ensActivityHistory
    extends Gget_mes_activites_tracesData_ensActivityHistory {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final String? name;
  @override
  final String? author;
  @override
  final String? authorType;

  factory _$Gget_mes_activites_tracesData_ensActivityHistory(
          [void Function(
                  Gget_mes_activites_tracesData_ensActivityHistoryBuilder)?
              updates]) =>
      (new Gget_mes_activites_tracesData_ensActivityHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gget_mes_activites_tracesData_ensActivityHistory._(
      {required this.G__typename,
      required this.date,
      this.name,
      this.author,
      this.authorType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_mes_activites_tracesData_ensActivityHistory', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gget_mes_activites_tracesData_ensActivityHistory', 'date');
  }

  @override
  Gget_mes_activites_tracesData_ensActivityHistory rebuild(
          void Function(Gget_mes_activites_tracesData_ensActivityHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mes_activites_tracesData_ensActivityHistoryBuilder toBuilder() =>
      new Gget_mes_activites_tracesData_ensActivityHistoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mes_activites_tracesData_ensActivityHistory &&
        G__typename == other.G__typename &&
        date == other.date &&
        name == other.name &&
        author == other.author &&
        authorType == other.authorType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, authorType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_mes_activites_tracesData_ensActivityHistory')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('name', name)
          ..add('author', author)
          ..add('authorType', authorType))
        .toString();
  }
}

class Gget_mes_activites_tracesData_ensActivityHistoryBuilder
    implements
        Builder<Gget_mes_activites_tracesData_ensActivityHistory,
            Gget_mes_activites_tracesData_ensActivityHistoryBuilder> {
  _$Gget_mes_activites_tracesData_ensActivityHistory? _$v;

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

  String? _authorType;
  String? get authorType => _$this._authorType;
  set authorType(String? authorType) => _$this._authorType = authorType;

  Gget_mes_activites_tracesData_ensActivityHistoryBuilder() {
    Gget_mes_activites_tracesData_ensActivityHistory._initializeBuilder(this);
  }

  Gget_mes_activites_tracesData_ensActivityHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _name = $v.name;
      _author = $v.author;
      _authorType = $v.authorType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mes_activites_tracesData_ensActivityHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mes_activites_tracesData_ensActivityHistory;
  }

  @override
  void update(
      void Function(Gget_mes_activites_tracesData_ensActivityHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mes_activites_tracesData_ensActivityHistory build() => _build();

  _$Gget_mes_activites_tracesData_ensActivityHistory _build() {
    final _$result = _$v ??
        new _$Gget_mes_activites_tracesData_ensActivityHistory._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_mes_activites_tracesData_ensActivityHistory',
                'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(date,
                r'Gget_mes_activites_tracesData_ensActivityHistory', 'date'),
            name: name,
            author: author,
            authorType: authorType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
