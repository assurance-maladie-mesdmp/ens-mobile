// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_create_rappel.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_rappelData> _$gcreateRappelDataSerializer =
    new _$Gcreate_rappelDataSerializer();
Serializer<Gcreate_rappelData_createReminder>
    _$gcreateRappelDataCreateReminderSerializer =
    new _$Gcreate_rappelData_createReminderSerializer();
Serializer<Gcreate_rappelData_createReminder_author>
    _$gcreateRappelDataCreateReminderAuthorSerializer =
    new _$Gcreate_rappelData_createReminder_authorSerializer();

class _$Gcreate_rappelDataSerializer
    implements StructuredSerializer<Gcreate_rappelData> {
  @override
  final Iterable<Type> types = const [Gcreate_rappelData, _$Gcreate_rappelData];
  @override
  final String wireName = 'Gcreate_rappelData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rappelData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createReminder',
      serializers.serialize(object.createReminder,
          specifiedType: const FullType(Gcreate_rappelData_createReminder)),
    ];

    return result;
  }

  @override
  Gcreate_rappelData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rappelDataBuilder();

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
        case 'createReminder':
          result.createReminder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gcreate_rappelData_createReminder))!
              as Gcreate_rappelData_createReminder);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_rappelData_createReminderSerializer
    implements StructuredSerializer<Gcreate_rappelData_createReminder> {
  @override
  final Iterable<Type> types = const [
    Gcreate_rappelData_createReminder,
    _$Gcreate_rappelData_createReminder
  ];
  @override
  final String wireName = 'Gcreate_rappelData_createReminder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rappelData_createReminder object,
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
            specifiedType:
                const FullType(Gcreate_rappelData_createReminder_author)));
    }
    return result;
  }

  @override
  Gcreate_rappelData_createReminder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rappelData_createReminderBuilder();

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
                  specifiedType:
                      const FullType(Gcreate_rappelData_createReminder_author))!
              as Gcreate_rappelData_createReminder_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_rappelData_createReminder_authorSerializer
    implements StructuredSerializer<Gcreate_rappelData_createReminder_author> {
  @override
  final Iterable<Type> types = const [
    Gcreate_rappelData_createReminder_author,
    _$Gcreate_rappelData_createReminder_author
  ];
  @override
  final String wireName = 'Gcreate_rappelData_createReminder_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rappelData_createReminder_author object,
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
  Gcreate_rappelData_createReminder_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rappelData_createReminder_authorBuilder();

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

class _$Gcreate_rappelData extends Gcreate_rappelData {
  @override
  final String G__typename;
  @override
  final Gcreate_rappelData_createReminder createReminder;

  factory _$Gcreate_rappelData(
          [void Function(Gcreate_rappelDataBuilder)? updates]) =>
      (new Gcreate_rappelDataBuilder()..update(updates))._build();

  _$Gcreate_rappelData._(
      {required this.G__typename, required this.createReminder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_rappelData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createReminder, r'Gcreate_rappelData', 'createReminder');
  }

  @override
  Gcreate_rappelData rebuild(
          void Function(Gcreate_rappelDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rappelDataBuilder toBuilder() =>
      new Gcreate_rappelDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rappelData &&
        G__typename == other.G__typename &&
        createReminder == other.createReminder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createReminder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_rappelData')
          ..add('G__typename', G__typename)
          ..add('createReminder', createReminder))
        .toString();
  }
}

class Gcreate_rappelDataBuilder
    implements Builder<Gcreate_rappelData, Gcreate_rappelDataBuilder> {
  _$Gcreate_rappelData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_rappelData_createReminderBuilder? _createReminder;
  Gcreate_rappelData_createReminderBuilder get createReminder =>
      _$this._createReminder ??= new Gcreate_rappelData_createReminderBuilder();
  set createReminder(
          Gcreate_rappelData_createReminderBuilder? createReminder) =>
      _$this._createReminder = createReminder;

  Gcreate_rappelDataBuilder() {
    Gcreate_rappelData._initializeBuilder(this);
  }

  Gcreate_rappelDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createReminder = $v.createReminder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_rappelData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rappelData;
  }

  @override
  void update(void Function(Gcreate_rappelDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rappelData build() => _build();

  _$Gcreate_rappelData _build() {
    _$Gcreate_rappelData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_rappelData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_rappelData', 'G__typename'),
              createReminder: createReminder.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createReminder';
        createReminder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_rappelData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_rappelData_createReminder
    extends Gcreate_rappelData_createReminder {
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
  final Gcreate_rappelData_createReminder_author? author;

  factory _$Gcreate_rappelData_createReminder(
          [void Function(Gcreate_rappelData_createReminderBuilder)? updates]) =>
      (new Gcreate_rappelData_createReminderBuilder()..update(updates))
          ._build();

  _$Gcreate_rappelData_createReminder._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_rappelData_createReminder', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gcreate_rappelData_createReminder', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gcreate_rappelData_createReminder', 'date');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gcreate_rappelData_createReminder', 'title');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'Gcreate_rappelData_createReminder', 'comment');
  }

  @override
  Gcreate_rappelData_createReminder rebuild(
          void Function(Gcreate_rappelData_createReminderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rappelData_createReminderBuilder toBuilder() =>
      new Gcreate_rappelData_createReminderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rappelData_createReminder &&
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
    return (newBuiltValueToStringHelper(r'Gcreate_rappelData_createReminder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class Gcreate_rappelData_createReminderBuilder
    implements
        Builder<Gcreate_rappelData_createReminder,
            Gcreate_rappelData_createReminderBuilder> {
  _$Gcreate_rappelData_createReminder? _$v;

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

  Gcreate_rappelData_createReminder_authorBuilder? _author;
  Gcreate_rappelData_createReminder_authorBuilder get author =>
      _$this._author ??= new Gcreate_rappelData_createReminder_authorBuilder();
  set author(Gcreate_rappelData_createReminder_authorBuilder? author) =>
      _$this._author = author;

  Gcreate_rappelData_createReminderBuilder() {
    Gcreate_rappelData_createReminder._initializeBuilder(this);
  }

  Gcreate_rappelData_createReminderBuilder get _$this {
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
  void replace(Gcreate_rappelData_createReminder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rappelData_createReminder;
  }

  @override
  void update(
      void Function(Gcreate_rappelData_createReminderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rappelData_createReminder build() => _build();

  _$Gcreate_rappelData_createReminder _build() {
    _$Gcreate_rappelData_createReminder _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_rappelData_createReminder._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gcreate_rappelData_createReminder', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gcreate_rappelData_createReminder', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gcreate_rappelData_createReminder', 'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gcreate_rappelData_createReminder', 'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment, r'Gcreate_rappelData_createReminder', 'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_rappelData_createReminder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_rappelData_createReminder_author
    extends Gcreate_rappelData_createReminder_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$Gcreate_rappelData_createReminder_author(
          [void Function(Gcreate_rappelData_createReminder_authorBuilder)?
              updates]) =>
      (new Gcreate_rappelData_createReminder_authorBuilder()..update(updates))
          ._build();

  _$Gcreate_rappelData_createReminder_author._(
      {required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gcreate_rappelData_createReminder_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(authorLabel,
        r'Gcreate_rappelData_createReminder_author', 'authorLabel');
  }

  @override
  Gcreate_rappelData_createReminder_author rebuild(
          void Function(Gcreate_rappelData_createReminder_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rappelData_createReminder_authorBuilder toBuilder() =>
      new Gcreate_rappelData_createReminder_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rappelData_createReminder_author &&
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
            r'Gcreate_rappelData_createReminder_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class Gcreate_rappelData_createReminder_authorBuilder
    implements
        Builder<Gcreate_rappelData_createReminder_author,
            Gcreate_rappelData_createReminder_authorBuilder> {
  _$Gcreate_rappelData_createReminder_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  Gcreate_rappelData_createReminder_authorBuilder() {
    Gcreate_rappelData_createReminder_author._initializeBuilder(this);
  }

  Gcreate_rappelData_createReminder_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_rappelData_createReminder_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rappelData_createReminder_author;
  }

  @override
  void update(
      void Function(Gcreate_rappelData_createReminder_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rappelData_createReminder_author build() => _build();

  _$Gcreate_rappelData_createReminder_author _build() {
    final _$result = _$v ??
        new _$Gcreate_rappelData_createReminder_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gcreate_rappelData_createReminder_author', 'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(authorLabel,
                r'Gcreate_rappelData_createReminder_author', 'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
