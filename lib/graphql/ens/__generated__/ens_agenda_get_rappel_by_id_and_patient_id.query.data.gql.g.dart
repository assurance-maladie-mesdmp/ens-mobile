// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_rappel_by_id_and_patient_id.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_rappel_by_id_and_patient_idData>
    _$ggetRappelByIdAndPatientIdDataSerializer =
    new _$Gget_rappel_by_id_and_patient_idDataSerializer();
Serializer<Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId>
    _$ggetRappelByIdAndPatientIdDataFetchReminderByIdAndPatientIdSerializer =
    new _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdSerializer();
Serializer<
        Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author>
    _$ggetRappelByIdAndPatientIdDataFetchReminderByIdAndPatientIdAuthorSerializer =
    new _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorSerializer();

class _$Gget_rappel_by_id_and_patient_idDataSerializer
    implements StructuredSerializer<Gget_rappel_by_id_and_patient_idData> {
  @override
  final Iterable<Type> types = const [
    Gget_rappel_by_id_and_patient_idData,
    _$Gget_rappel_by_id_and_patient_idData
  ];
  @override
  final String wireName = 'Gget_rappel_by_id_and_patient_idData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_rappel_by_id_and_patient_idData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fetchReminderByIdAndPatientId;
    if (value != null) {
      result
        ..add('fetchReminderByIdAndPatientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId)));
    }
    return result;
  }

  @override
  Gget_rappel_by_id_and_patient_idData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_rappel_by_id_and_patient_idDataBuilder();

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
        case 'fetchReminderByIdAndPatientId':
          result.fetchReminderByIdAndPatientId.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId))!
              as Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId,
    _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
  ];
  @override
  final String wireName =
      'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author)));
    }
    return result;
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author))!
              as Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author,
    _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'authorLabel',
      serializers.serialize(object.authorLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder();

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
        case 'authorLabel':
          result.authorLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rappel_by_id_and_patient_idData
    extends Gget_rappel_by_id_and_patient_idData {
  @override
  final String G__typename;
  @override
  final Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId?
      fetchReminderByIdAndPatientId;

  factory _$Gget_rappel_by_id_and_patient_idData(
          [void Function(Gget_rappel_by_id_and_patient_idDataBuilder)?
              updates]) =>
      (new Gget_rappel_by_id_and_patient_idDataBuilder()..update(updates))
          ._build();

  _$Gget_rappel_by_id_and_patient_idData._(
      {required this.G__typename, this.fetchReminderByIdAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_rappel_by_id_and_patient_idData', 'G__typename');
  }

  @override
  Gget_rappel_by_id_and_patient_idData rebuild(
          void Function(Gget_rappel_by_id_and_patient_idDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rappel_by_id_and_patient_idDataBuilder toBuilder() =>
      new Gget_rappel_by_id_and_patient_idDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rappel_by_id_and_patient_idData &&
        G__typename == other.G__typename &&
        fetchReminderByIdAndPatientId == other.fetchReminderByIdAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchReminderByIdAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_rappel_by_id_and_patient_idData')
          ..add('G__typename', G__typename)
          ..add('fetchReminderByIdAndPatientId', fetchReminderByIdAndPatientId))
        .toString();
  }
}

class Gget_rappel_by_id_and_patient_idDataBuilder
    implements
        Builder<Gget_rappel_by_id_and_patient_idData,
            Gget_rappel_by_id_and_patient_idDataBuilder> {
  _$Gget_rappel_by_id_and_patient_idData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder?
      _fetchReminderByIdAndPatientId;
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
      get fetchReminderByIdAndPatientId => _$this
              ._fetchReminderByIdAndPatientId ??=
          new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder();
  set fetchReminderByIdAndPatientId(
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder?
              fetchReminderByIdAndPatientId) =>
      _$this._fetchReminderByIdAndPatientId = fetchReminderByIdAndPatientId;

  Gget_rappel_by_id_and_patient_idDataBuilder() {
    Gget_rappel_by_id_and_patient_idData._initializeBuilder(this);
  }

  Gget_rappel_by_id_and_patient_idDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchReminderByIdAndPatientId =
          $v.fetchReminderByIdAndPatientId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rappel_by_id_and_patient_idData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rappel_by_id_and_patient_idData;
  }

  @override
  void update(
      void Function(Gget_rappel_by_id_and_patient_idDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rappel_by_id_and_patient_idData build() => _build();

  _$Gget_rappel_by_id_and_patient_idData _build() {
    _$Gget_rappel_by_id_and_patient_idData _$result;
    try {
      _$result = _$v ??
          new _$Gget_rappel_by_id_and_patient_idData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_rappel_by_id_and_patient_idData', 'G__typename'),
              fetchReminderByIdAndPatientId:
                  _fetchReminderByIdAndPatientId?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchReminderByIdAndPatientId';
        _fetchReminderByIdAndPatientId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rappel_by_id_and_patient_idData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
    extends Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String date;
  @override
  final String title;
  @override
  final String comment;
  @override
  final Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author?
      author;

  factory _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId(
          [void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder)?
              updates]) =>
      (new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
        'date');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        comment,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
        'comment');
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId rebuild(
          void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
      toBuilder() =>
          new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId &&
        G__typename == other.G__typename &&
        id == other.id &&
        date == other.date &&
        title == other.title &&
        comment == other.comment &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
    implements
        Builder<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId,
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder> {
  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder?
      _author;
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder();
  set author(
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder?
              author) =>
      _$this._author = author;

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder() {
    Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
        ._initializeBuilder(this);
  }

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _date = $v.date;
      _title = $v.title;
      _comment = $v.comment;
      _author = $v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId build() =>
      _build();

  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
      _build() {
    _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date,
                  r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
                  'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title,
                  r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
                  'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment,
                  r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
                  'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
    extends Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author(
          [void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author._(
      {required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author',
        'authorLabel');
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author rebuild(
          void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
      toBuilder() =>
          new Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author &&
        G__typename == other.G__typename &&
        authorLabel == other.authorLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
    implements
        Builder<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author,
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder> {
  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder() {
    Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
      build() => _build();

  _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
      _build() {
    final _$result = _$v ??
        new _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author',
                'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
