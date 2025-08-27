// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_rappel.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_rappelData> _$gupdateRappelDataSerializer =
    new _$Gupdate_rappelDataSerializer();
Serializer<Gupdate_rappelData_updateReminder>
    _$gupdateRappelDataUpdateReminderSerializer =
    new _$Gupdate_rappelData_updateReminderSerializer();
Serializer<Gupdate_rappelData_updateReminder_author>
    _$gupdateRappelDataUpdateReminderAuthorSerializer =
    new _$Gupdate_rappelData_updateReminder_authorSerializer();

class _$Gupdate_rappelDataSerializer
    implements StructuredSerializer<Gupdate_rappelData> {
  @override
  final Iterable<Type> types = const [Gupdate_rappelData, _$Gupdate_rappelData];
  @override
  final String wireName = 'Gupdate_rappelData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_rappelData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateReminder',
      serializers.serialize(object.updateReminder,
          specifiedType: const FullType(Gupdate_rappelData_updateReminder)),
    ];

    return result;
  }

  @override
  Gupdate_rappelData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rappelDataBuilder();

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
        case 'updateReminder':
          result.updateReminder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_rappelData_updateReminder))!
              as Gupdate_rappelData_updateReminder);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_rappelData_updateReminderSerializer
    implements StructuredSerializer<Gupdate_rappelData_updateReminder> {
  @override
  final Iterable<Type> types = const [
    Gupdate_rappelData_updateReminder,
    _$Gupdate_rappelData_updateReminder
  ];
  @override
  final String wireName = 'Gupdate_rappelData_updateReminder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_rappelData_updateReminder object,
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
                const FullType(Gupdate_rappelData_updateReminder_author)));
    }
    return result;
  }

  @override
  Gupdate_rappelData_updateReminder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rappelData_updateReminderBuilder();

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
                      const FullType(Gupdate_rappelData_updateReminder_author))!
              as Gupdate_rappelData_updateReminder_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_rappelData_updateReminder_authorSerializer
    implements StructuredSerializer<Gupdate_rappelData_updateReminder_author> {
  @override
  final Iterable<Type> types = const [
    Gupdate_rappelData_updateReminder_author,
    _$Gupdate_rappelData_updateReminder_author
  ];
  @override
  final String wireName = 'Gupdate_rappelData_updateReminder_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_rappelData_updateReminder_author object,
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
  Gupdate_rappelData_updateReminder_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rappelData_updateReminder_authorBuilder();

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

class _$Gupdate_rappelData extends Gupdate_rappelData {
  @override
  final String G__typename;
  @override
  final Gupdate_rappelData_updateReminder updateReminder;

  factory _$Gupdate_rappelData(
          [void Function(Gupdate_rappelDataBuilder)? updates]) =>
      (new Gupdate_rappelDataBuilder()..update(updates))._build();

  _$Gupdate_rappelData._(
      {required this.G__typename, required this.updateReminder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_rappelData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateReminder, r'Gupdate_rappelData', 'updateReminder');
  }

  @override
  Gupdate_rappelData rebuild(
          void Function(Gupdate_rappelDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rappelDataBuilder toBuilder() =>
      new Gupdate_rappelDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rappelData &&
        G__typename == other.G__typename &&
        updateReminder == other.updateReminder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateReminder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_rappelData')
          ..add('G__typename', G__typename)
          ..add('updateReminder', updateReminder))
        .toString();
  }
}

class Gupdate_rappelDataBuilder
    implements Builder<Gupdate_rappelData, Gupdate_rappelDataBuilder> {
  _$Gupdate_rappelData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_rappelData_updateReminderBuilder? _updateReminder;
  Gupdate_rappelData_updateReminderBuilder get updateReminder =>
      _$this._updateReminder ??= new Gupdate_rappelData_updateReminderBuilder();
  set updateReminder(
          Gupdate_rappelData_updateReminderBuilder? updateReminder) =>
      _$this._updateReminder = updateReminder;

  Gupdate_rappelDataBuilder() {
    Gupdate_rappelData._initializeBuilder(this);
  }

  Gupdate_rappelDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateReminder = $v.updateReminder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_rappelData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rappelData;
  }

  @override
  void update(void Function(Gupdate_rappelDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rappelData build() => _build();

  _$Gupdate_rappelData _build() {
    _$Gupdate_rappelData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_rappelData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_rappelData', 'G__typename'),
              updateReminder: updateReminder.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateReminder';
        updateReminder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_rappelData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_rappelData_updateReminder
    extends Gupdate_rappelData_updateReminder {
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
  final Gupdate_rappelData_updateReminder_author? author;

  factory _$Gupdate_rappelData_updateReminder(
          [void Function(Gupdate_rappelData_updateReminderBuilder)? updates]) =>
      (new Gupdate_rappelData_updateReminderBuilder()..update(updates))
          ._build();

  _$Gupdate_rappelData_updateReminder._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_rappelData_updateReminder', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gupdate_rappelData_updateReminder', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gupdate_rappelData_updateReminder', 'date');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gupdate_rappelData_updateReminder', 'title');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'Gupdate_rappelData_updateReminder', 'comment');
  }

  @override
  Gupdate_rappelData_updateReminder rebuild(
          void Function(Gupdate_rappelData_updateReminderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rappelData_updateReminderBuilder toBuilder() =>
      new Gupdate_rappelData_updateReminderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rappelData_updateReminder &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_rappelData_updateReminder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class Gupdate_rappelData_updateReminderBuilder
    implements
        Builder<Gupdate_rappelData_updateReminder,
            Gupdate_rappelData_updateReminderBuilder> {
  _$Gupdate_rappelData_updateReminder? _$v;

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

  Gupdate_rappelData_updateReminder_authorBuilder? _author;
  Gupdate_rappelData_updateReminder_authorBuilder get author =>
      _$this._author ??= new Gupdate_rappelData_updateReminder_authorBuilder();
  set author(Gupdate_rappelData_updateReminder_authorBuilder? author) =>
      _$this._author = author;

  Gupdate_rappelData_updateReminderBuilder() {
    Gupdate_rappelData_updateReminder._initializeBuilder(this);
  }

  Gupdate_rappelData_updateReminderBuilder get _$this {
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
  void replace(Gupdate_rappelData_updateReminder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rappelData_updateReminder;
  }

  @override
  void update(
      void Function(Gupdate_rappelData_updateReminderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rappelData_updateReminder build() => _build();

  _$Gupdate_rappelData_updateReminder _build() {
    _$Gupdate_rappelData_updateReminder _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_rappelData_updateReminder._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_rappelData_updateReminder', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gupdate_rappelData_updateReminder', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gupdate_rappelData_updateReminder', 'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gupdate_rappelData_updateReminder', 'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment, r'Gupdate_rappelData_updateReminder', 'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_rappelData_updateReminder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_rappelData_updateReminder_author
    extends Gupdate_rappelData_updateReminder_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$Gupdate_rappelData_updateReminder_author(
          [void Function(Gupdate_rappelData_updateReminder_authorBuilder)?
              updates]) =>
      (new Gupdate_rappelData_updateReminder_authorBuilder()..update(updates))
          ._build();

  _$Gupdate_rappelData_updateReminder_author._(
      {required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_rappelData_updateReminder_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(authorLabel,
        r'Gupdate_rappelData_updateReminder_author', 'authorLabel');
  }

  @override
  Gupdate_rappelData_updateReminder_author rebuild(
          void Function(Gupdate_rappelData_updateReminder_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rappelData_updateReminder_authorBuilder toBuilder() =>
      new Gupdate_rappelData_updateReminder_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rappelData_updateReminder_author &&
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
            r'Gupdate_rappelData_updateReminder_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class Gupdate_rappelData_updateReminder_authorBuilder
    implements
        Builder<Gupdate_rappelData_updateReminder_author,
            Gupdate_rappelData_updateReminder_authorBuilder> {
  _$Gupdate_rappelData_updateReminder_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  Gupdate_rappelData_updateReminder_authorBuilder() {
    Gupdate_rappelData_updateReminder_author._initializeBuilder(this);
  }

  Gupdate_rappelData_updateReminder_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_rappelData_updateReminder_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rappelData_updateReminder_author;
  }

  @override
  void update(
      void Function(Gupdate_rappelData_updateReminder_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rappelData_updateReminder_author build() => _build();

  _$Gupdate_rappelData_updateReminder_author _build() {
    final _$result = _$v ??
        new _$Gupdate_rappelData_updateReminder_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_rappelData_updateReminder_author', 'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(authorLabel,
                r'Gupdate_rappelData_updateReminder_author', 'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
