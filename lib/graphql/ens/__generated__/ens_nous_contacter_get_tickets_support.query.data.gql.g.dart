// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_nous_contacter_get_tickets_support.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_tickets_supportData> _$ggetTicketsSupportDataSerializer =
    new _$Gget_tickets_supportDataSerializer();
Serializer<Gget_tickets_supportData_fetchHelpdeskTickets>
    _$ggetTicketsSupportDataFetchHelpdeskTicketsSerializer =
    new _$Gget_tickets_supportData_fetchHelpdeskTicketsSerializer();
Serializer<Gget_tickets_supportData_fetchHelpdeskTickets_lastComment>
    _$ggetTicketsSupportDataFetchHelpdeskTicketsLastCommentSerializer =
    new _$Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentSerializer();

class _$Gget_tickets_supportDataSerializer
    implements StructuredSerializer<Gget_tickets_supportData> {
  @override
  final Iterable<Type> types = const [
    Gget_tickets_supportData,
    _$Gget_tickets_supportData
  ];
  @override
  final String wireName = 'Gget_tickets_supportData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_tickets_supportData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchHelpdeskTickets',
      serializers.serialize(object.fetchHelpdeskTickets,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_tickets_supportData_fetchHelpdeskTickets)
          ])),
    ];

    return result;
  }

  @override
  Gget_tickets_supportData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_tickets_supportDataBuilder();

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
        case 'fetchHelpdeskTickets':
          result.fetchHelpdeskTickets.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_tickets_supportData_fetchHelpdeskTickets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_tickets_supportData_fetchHelpdeskTicketsSerializer
    implements
        StructuredSerializer<Gget_tickets_supportData_fetchHelpdeskTickets> {
  @override
  final Iterable<Type> types = const [
    Gget_tickets_supportData_fetchHelpdeskTickets,
    _$Gget_tickets_supportData_fetchHelpdeskTickets
  ];
  @override
  final String wireName = 'Gget_tickets_supportData_fetchHelpdeskTickets';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_tickets_supportData_fetchHelpdeskTickets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'reasonLabel',
      serializers.serialize(object.reasonLabel,
          specifiedType: const FullType(String)),
      'lastUpdate',
      serializers.serialize(object.lastUpdate,
          specifiedType: const FullType(String)),
      'lastComment',
      serializers.serialize(object.lastComment,
          specifiedType: const FullType(
              Gget_tickets_supportData_fetchHelpdeskTickets_lastComment)),
    ];

    return result;
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_tickets_supportData_fetchHelpdeskTicketsBuilder();

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
        case 'reasonLabel':
          result.reasonLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdate':
          result.lastUpdate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastComment':
          result.lastComment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_tickets_supportData_fetchHelpdeskTickets_lastComment))!
              as Gget_tickets_supportData_fetchHelpdeskTickets_lastComment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentSerializer
    implements
        StructuredSerializer<
            Gget_tickets_supportData_fetchHelpdeskTickets_lastComment> {
  @override
  final Iterable<Type> types = const [
    Gget_tickets_supportData_fetchHelpdeskTickets_lastComment,
    _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment
  ];
  @override
  final String wireName =
      'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_tickets_supportData_fetchHelpdeskTickets_lastComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'hasDocuments',
      serializers.serialize(object.hasDocuments,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets_lastComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasDocuments':
          result.hasDocuments = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_tickets_supportData extends Gget_tickets_supportData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_tickets_supportData_fetchHelpdeskTickets>
      fetchHelpdeskTickets;

  factory _$Gget_tickets_supportData(
          [void Function(Gget_tickets_supportDataBuilder)? updates]) =>
      (new Gget_tickets_supportDataBuilder()..update(updates))._build();

  _$Gget_tickets_supportData._(
      {required this.G__typename, required this.fetchHelpdeskTickets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_tickets_supportData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchHelpdeskTickets,
        r'Gget_tickets_supportData', 'fetchHelpdeskTickets');
  }

  @override
  Gget_tickets_supportData rebuild(
          void Function(Gget_tickets_supportDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_tickets_supportDataBuilder toBuilder() =>
      new Gget_tickets_supportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_tickets_supportData &&
        G__typename == other.G__typename &&
        fetchHelpdeskTickets == other.fetchHelpdeskTickets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchHelpdeskTickets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_tickets_supportData')
          ..add('G__typename', G__typename)
          ..add('fetchHelpdeskTickets', fetchHelpdeskTickets))
        .toString();
  }
}

class Gget_tickets_supportDataBuilder
    implements
        Builder<Gget_tickets_supportData, Gget_tickets_supportDataBuilder> {
  _$Gget_tickets_supportData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_tickets_supportData_fetchHelpdeskTickets>?
      _fetchHelpdeskTickets;
  ListBuilder<Gget_tickets_supportData_fetchHelpdeskTickets>
      get fetchHelpdeskTickets => _$this._fetchHelpdeskTickets ??=
          new ListBuilder<Gget_tickets_supportData_fetchHelpdeskTickets>();
  set fetchHelpdeskTickets(
          ListBuilder<Gget_tickets_supportData_fetchHelpdeskTickets>?
              fetchHelpdeskTickets) =>
      _$this._fetchHelpdeskTickets = fetchHelpdeskTickets;

  Gget_tickets_supportDataBuilder() {
    Gget_tickets_supportData._initializeBuilder(this);
  }

  Gget_tickets_supportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchHelpdeskTickets = $v.fetchHelpdeskTickets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_tickets_supportData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_tickets_supportData;
  }

  @override
  void update(void Function(Gget_tickets_supportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_tickets_supportData build() => _build();

  _$Gget_tickets_supportData _build() {
    _$Gget_tickets_supportData _$result;
    try {
      _$result = _$v ??
          new _$Gget_tickets_supportData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_tickets_supportData', 'G__typename'),
              fetchHelpdeskTickets: fetchHelpdeskTickets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchHelpdeskTickets';
        fetchHelpdeskTickets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_tickets_supportData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_tickets_supportData_fetchHelpdeskTickets
    extends Gget_tickets_supportData_fetchHelpdeskTickets {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String reasonLabel;
  @override
  final String lastUpdate;
  @override
  final Gget_tickets_supportData_fetchHelpdeskTickets_lastComment lastComment;

  factory _$Gget_tickets_supportData_fetchHelpdeskTickets(
          [void Function(Gget_tickets_supportData_fetchHelpdeskTicketsBuilder)?
              updates]) =>
      (new Gget_tickets_supportData_fetchHelpdeskTicketsBuilder()
            ..update(updates))
          ._build();

  _$Gget_tickets_supportData_fetchHelpdeskTickets._(
      {required this.G__typename,
      required this.id,
      required this.reasonLabel,
      required this.lastUpdate,
      required this.lastComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_tickets_supportData_fetchHelpdeskTickets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_tickets_supportData_fetchHelpdeskTickets', 'id');
    BuiltValueNullFieldError.checkNotNull(reasonLabel,
        r'Gget_tickets_supportData_fetchHelpdeskTickets', 'reasonLabel');
    BuiltValueNullFieldError.checkNotNull(lastUpdate,
        r'Gget_tickets_supportData_fetchHelpdeskTickets', 'lastUpdate');
    BuiltValueNullFieldError.checkNotNull(lastComment,
        r'Gget_tickets_supportData_fetchHelpdeskTickets', 'lastComment');
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets rebuild(
          void Function(Gget_tickets_supportData_fetchHelpdeskTicketsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_tickets_supportData_fetchHelpdeskTicketsBuilder toBuilder() =>
      new Gget_tickets_supportData_fetchHelpdeskTicketsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_tickets_supportData_fetchHelpdeskTickets &&
        G__typename == other.G__typename &&
        id == other.id &&
        reasonLabel == other.reasonLabel &&
        lastUpdate == other.lastUpdate &&
        lastComment == other.lastComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reasonLabel.hashCode);
    _$hash = $jc(_$hash, lastUpdate.hashCode);
    _$hash = $jc(_$hash, lastComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_tickets_supportData_fetchHelpdeskTickets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reasonLabel', reasonLabel)
          ..add('lastUpdate', lastUpdate)
          ..add('lastComment', lastComment))
        .toString();
  }
}

class Gget_tickets_supportData_fetchHelpdeskTicketsBuilder
    implements
        Builder<Gget_tickets_supportData_fetchHelpdeskTickets,
            Gget_tickets_supportData_fetchHelpdeskTicketsBuilder> {
  _$Gget_tickets_supportData_fetchHelpdeskTickets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _reasonLabel;
  String? get reasonLabel => _$this._reasonLabel;
  set reasonLabel(String? reasonLabel) => _$this._reasonLabel = reasonLabel;

  String? _lastUpdate;
  String? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(String? lastUpdate) => _$this._lastUpdate = lastUpdate;

  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder?
      _lastComment;
  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder
      get lastComment => _$this._lastComment ??=
          new Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder();
  set lastComment(
          Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder?
              lastComment) =>
      _$this._lastComment = lastComment;

  Gget_tickets_supportData_fetchHelpdeskTicketsBuilder() {
    Gget_tickets_supportData_fetchHelpdeskTickets._initializeBuilder(this);
  }

  Gget_tickets_supportData_fetchHelpdeskTicketsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reasonLabel = $v.reasonLabel;
      _lastUpdate = $v.lastUpdate;
      _lastComment = $v.lastComment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_tickets_supportData_fetchHelpdeskTickets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_tickets_supportData_fetchHelpdeskTickets;
  }

  @override
  void update(
      void Function(Gget_tickets_supportData_fetchHelpdeskTicketsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets build() => _build();

  _$Gget_tickets_supportData_fetchHelpdeskTickets _build() {
    _$Gget_tickets_supportData_fetchHelpdeskTickets _$result;
    try {
      _$result = _$v ??
          new _$Gget_tickets_supportData_fetchHelpdeskTickets._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_tickets_supportData_fetchHelpdeskTickets',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_tickets_supportData_fetchHelpdeskTickets', 'id'),
              reasonLabel: BuiltValueNullFieldError.checkNotNull(
                  reasonLabel,
                  r'Gget_tickets_supportData_fetchHelpdeskTickets',
                  'reasonLabel'),
              lastUpdate: BuiltValueNullFieldError.checkNotNull(
                  lastUpdate,
                  r'Gget_tickets_supportData_fetchHelpdeskTickets',
                  'lastUpdate'),
              lastComment: lastComment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastComment';
        lastComment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_tickets_supportData_fetchHelpdeskTickets',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment
    extends Gget_tickets_supportData_fetchHelpdeskTickets_lastComment {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final bool hasDocuments;

  factory _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment(
          [void Function(
                  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder)?
              updates]) =>
      (new Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder()
            ..update(updates))
          ._build();

  _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment._(
      {required this.G__typename,
      required this.message,
      required this.hasDocuments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
        'message');
    BuiltValueNullFieldError.checkNotNull(
        hasDocuments,
        r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
        'hasDocuments');
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets_lastComment rebuild(
          void Function(
                  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder
      toBuilder() =>
          new Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_tickets_supportData_fetchHelpdeskTickets_lastComment &&
        G__typename == other.G__typename &&
        message == other.message &&
        hasDocuments == other.hasDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, hasDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('hasDocuments', hasDocuments))
        .toString();
  }
}

class Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder
    implements
        Builder<Gget_tickets_supportData_fetchHelpdeskTickets_lastComment,
            Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder> {
  _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _hasDocuments;
  bool? get hasDocuments => _$this._hasDocuments;
  set hasDocuments(bool? hasDocuments) => _$this._hasDocuments = hasDocuments;

  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder() {
    Gget_tickets_supportData_fetchHelpdeskTickets_lastComment
        ._initializeBuilder(this);
  }

  Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _hasDocuments = $v.hasDocuments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_tickets_supportData_fetchHelpdeskTickets_lastComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment;
  }

  @override
  void update(
      void Function(
              Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_tickets_supportData_fetchHelpdeskTickets_lastComment build() => _build();

  _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment _build() {
    final _$result = _$v ??
        new _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
                'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message,
                r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
                'message'),
            hasDocuments: BuiltValueNullFieldError.checkNotNull(
                hasDocuments,
                r'Gget_tickets_supportData_fetchHelpdeskTickets_lastComment',
                'hasDocuments'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
