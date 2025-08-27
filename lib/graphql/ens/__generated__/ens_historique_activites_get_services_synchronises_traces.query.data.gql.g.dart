// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_services_synchronises_traces.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_services_synchronises_tracesData>
    _$ggetServicesSynchronisesTracesDataSerializer =
    new _$Gget_services_synchronises_tracesDataSerializer();
Serializer<
        Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>
    _$ggetServicesSynchronisesTracesDataSynchronizedServicesActivityHistorySerializer =
    new _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistorySerializer();

class _$Gget_services_synchronises_tracesDataSerializer
    implements StructuredSerializer<Gget_services_synchronises_tracesData> {
  @override
  final Iterable<Type> types = const [
    Gget_services_synchronises_tracesData,
    _$Gget_services_synchronises_tracesData
  ];
  @override
  final String wireName = 'Gget_services_synchronises_tracesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_services_synchronises_tracesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'synchronizedServicesActivityHistory',
      serializers.serialize(object.synchronizedServicesActivityHistory,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory)
          ])),
    ];

    return result;
  }

  @override
  Gget_services_synchronises_tracesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_services_synchronises_tracesDataBuilder();

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
        case 'synchronizedServicesActivityHistory':
          result.synchronizedServicesActivityHistory
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory)
                  ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistorySerializer
    implements
        StructuredSerializer<
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory> {
  @override
  final Iterable<Type> types = const [
    Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory,
    _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
  ];
  @override
  final String wireName =
      'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
          object,
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
  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder();

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

class _$Gget_services_synchronises_tracesData
    extends Gget_services_synchronises_tracesData {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>
      synchronizedServicesActivityHistory;

  factory _$Gget_services_synchronises_tracesData(
          [void Function(Gget_services_synchronises_tracesDataBuilder)?
              updates]) =>
      (new Gget_services_synchronises_tracesDataBuilder()..update(updates))
          ._build();

  _$Gget_services_synchronises_tracesData._(
      {required this.G__typename,
      required this.synchronizedServicesActivityHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_services_synchronises_tracesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        synchronizedServicesActivityHistory,
        r'Gget_services_synchronises_tracesData',
        'synchronizedServicesActivityHistory');
  }

  @override
  Gget_services_synchronises_tracesData rebuild(
          void Function(Gget_services_synchronises_tracesDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_synchronises_tracesDataBuilder toBuilder() =>
      new Gget_services_synchronises_tracesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_services_synchronises_tracesData &&
        G__typename == other.G__typename &&
        synchronizedServicesActivityHistory ==
            other.synchronizedServicesActivityHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, synchronizedServicesActivityHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_synchronises_tracesData')
          ..add('G__typename', G__typename)
          ..add('synchronizedServicesActivityHistory',
              synchronizedServicesActivityHistory))
        .toString();
  }
}

class Gget_services_synchronises_tracesDataBuilder
    implements
        Builder<Gget_services_synchronises_tracesData,
            Gget_services_synchronises_tracesDataBuilder> {
  _$Gget_services_synchronises_tracesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>?
      _synchronizedServicesActivityHistory;
  ListBuilder<
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>
      get synchronizedServicesActivityHistory =>
          _$this._synchronizedServicesActivityHistory ??= new ListBuilder<
              Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>();
  set synchronizedServicesActivityHistory(
          ListBuilder<
                  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>?
              synchronizedServicesActivityHistory) =>
      _$this._synchronizedServicesActivityHistory =
          synchronizedServicesActivityHistory;

  Gget_services_synchronises_tracesDataBuilder() {
    Gget_services_synchronises_tracesData._initializeBuilder(this);
  }

  Gget_services_synchronises_tracesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _synchronizedServicesActivityHistory =
          $v.synchronizedServicesActivityHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_services_synchronises_tracesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_services_synchronises_tracesData;
  }

  @override
  void update(
      void Function(Gget_services_synchronises_tracesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_synchronises_tracesData build() => _build();

  _$Gget_services_synchronises_tracesData _build() {
    _$Gget_services_synchronises_tracesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_services_synchronises_tracesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_services_synchronises_tracesData', 'G__typename'),
              synchronizedServicesActivityHistory:
                  synchronizedServicesActivityHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'synchronizedServicesActivityHistory';
        synchronizedServicesActivityHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_services_synchronises_tracesData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
    extends Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory {
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

  factory _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory(
          [void Function(
                  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder)?
              updates]) =>
      (new Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory._(
      {required this.G__typename,
      required this.date,
      this.name,
      this.author,
      this.authorType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory',
        'date');
  }

  @override
  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory rebuild(
          void Function(
                  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder
      toBuilder() =>
          new Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory &&
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
            r'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('name', name)
          ..add('author', author)
          ..add('authorType', authorType))
        .toString();
  }
}

class Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder
    implements
        Builder<
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory,
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder> {
  _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory?
      _$v;

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

  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder() {
    Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
        ._initializeBuilder(this);
  }

  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder
      get _$this {
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
  void replace(
      Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory;
  }

  @override
  void update(
      void Function(
              Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
      build() => _build();

  _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
      _build() {
    final _$result = _$v ??
        new _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory',
                'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date,
                r'Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory',
                'date'),
            name: name,
            author: author,
            authorType: authorType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
