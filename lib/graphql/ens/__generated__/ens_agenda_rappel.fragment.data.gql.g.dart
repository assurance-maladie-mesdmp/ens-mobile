// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_rappel.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrappelData> _$grappelDataSerializer = new _$GrappelDataSerializer();
Serializer<GrappelData_author> _$grappelDataAuthorSerializer =
    new _$GrappelData_authorSerializer();

class _$GrappelDataSerializer implements StructuredSerializer<GrappelData> {
  @override
  final Iterable<Type> types = const [GrappelData, _$GrappelData];
  @override
  final String wireName = 'GrappelData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrappelData object,
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
            specifiedType: const FullType(GrappelData_author)));
    }
    return result;
  }

  @override
  GrappelData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrappelDataBuilder();

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
                  specifiedType: const FullType(GrappelData_author))!
              as GrappelData_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GrappelData_authorSerializer
    implements StructuredSerializer<GrappelData_author> {
  @override
  final Iterable<Type> types = const [GrappelData_author, _$GrappelData_author];
  @override
  final String wireName = 'GrappelData_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrappelData_author object,
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
  GrappelData_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrappelData_authorBuilder();

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

class _$GrappelData extends GrappelData {
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
  final GrappelData_author? author;

  factory _$GrappelData([void Function(GrappelDataBuilder)? updates]) =>
      (new GrappelDataBuilder()..update(updates))._build();

  _$GrappelData._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GrappelData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GrappelData', 'id');
    BuiltValueNullFieldError.checkNotNull(date, r'GrappelData', 'date');
    BuiltValueNullFieldError.checkNotNull(title, r'GrappelData', 'title');
    BuiltValueNullFieldError.checkNotNull(comment, r'GrappelData', 'comment');
  }

  @override
  GrappelData rebuild(void Function(GrappelDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrappelDataBuilder toBuilder() => new GrappelDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrappelData &&
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
    return (newBuiltValueToStringHelper(r'GrappelData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class GrappelDataBuilder implements Builder<GrappelData, GrappelDataBuilder> {
  _$GrappelData? _$v;

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

  GrappelData_authorBuilder? _author;
  GrappelData_authorBuilder get author =>
      _$this._author ??= new GrappelData_authorBuilder();
  set author(GrappelData_authorBuilder? author) => _$this._author = author;

  GrappelDataBuilder() {
    GrappelData._initializeBuilder(this);
  }

  GrappelDataBuilder get _$this {
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
  void replace(GrappelData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrappelData;
  }

  @override
  void update(void Function(GrappelDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrappelData build() => _build();

  _$GrappelData _build() {
    _$GrappelData _$result;
    try {
      _$result = _$v ??
          new _$GrappelData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GrappelData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GrappelData', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GrappelData', 'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GrappelData', 'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment, r'GrappelData', 'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrappelData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrappelData_author extends GrappelData_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$GrappelData_author(
          [void Function(GrappelData_authorBuilder)? updates]) =>
      (new GrappelData_authorBuilder()..update(updates))._build();

  _$GrappelData_author._({required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GrappelData_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel, r'GrappelData_author', 'authorLabel');
  }

  @override
  GrappelData_author rebuild(
          void Function(GrappelData_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrappelData_authorBuilder toBuilder() =>
      new GrappelData_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrappelData_author &&
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
    return (newBuiltValueToStringHelper(r'GrappelData_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class GrappelData_authorBuilder
    implements Builder<GrappelData_author, GrappelData_authorBuilder> {
  _$GrappelData_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  GrappelData_authorBuilder() {
    GrappelData_author._initializeBuilder(this);
  }

  GrappelData_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrappelData_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrappelData_author;
  }

  @override
  void update(void Function(GrappelData_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrappelData_author build() => _build();

  _$GrappelData_author _build() {
    final _$result = _$v ??
        new _$GrappelData_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GrappelData_author', 'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel, r'GrappelData_author', 'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
