// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_nous_contacter_get_ticket_support_details.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ticket_support_detailsData>
    _$ggetTicketSupportDetailsDataSerializer =
    new _$Gget_ticket_support_detailsDataSerializer();
Serializer<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails>
    _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsSerializer =
    new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsSerializer();
Serializer<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>
    _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsCommentsSerializer =
    new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsSerializer();
Serializer<
        Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>
    _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsCommentsDocumentsSerializer =
    new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsSerializer();

class _$Gget_ticket_support_detailsDataSerializer
    implements StructuredSerializer<Gget_ticket_support_detailsData> {
  @override
  final Iterable<Type> types = const [
    Gget_ticket_support_detailsData,
    _$Gget_ticket_support_detailsData
  ];
  @override
  final String wireName = 'Gget_ticket_support_detailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ticket_support_detailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchHelpdeskTicketDetails',
      serializers.serialize(object.fetchHelpdeskTicketDetails,
          specifiedType: const FullType(
              Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails)),
    ];

    return result;
  }

  @override
  Gget_ticket_support_detailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ticket_support_detailsDataBuilder();

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
        case 'fetchHelpdeskTicketDetails':
          result.fetchHelpdeskTicketDetails.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails))!
              as Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsSerializer
    implements
        StructuredSerializer<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails> {
  @override
  final Iterable<Type> types = const [
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails,
    _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
  ];
  @override
  final String wireName =
      'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails object,
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
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments)
          ])),
    ];

    return result;
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder();

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
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsSerializer
    implements
        StructuredSerializer<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments> {
  @override
  final Iterable<Type> types = const [
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments,
    _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
  ];
  @override
  final String wireName =
      'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'documents',
      serializers.serialize(object.documents,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents)
          ])),
    ];

    return result;
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder();

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
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'documents':
          result.documents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsSerializer
    implements
        StructuredSerializer<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents> {
  @override
  final Iterable<Type> types = const [
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents,
    _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
  ];
  @override
  final String wireName =
      'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_ticket_support_detailsData
    extends Gget_ticket_support_detailsData {
  @override
  final String G__typename;
  @override
  final Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
      fetchHelpdeskTicketDetails;

  factory _$Gget_ticket_support_detailsData(
          [void Function(Gget_ticket_support_detailsDataBuilder)? updates]) =>
      (new Gget_ticket_support_detailsDataBuilder()..update(updates))._build();

  _$Gget_ticket_support_detailsData._(
      {required this.G__typename, required this.fetchHelpdeskTicketDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ticket_support_detailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchHelpdeskTicketDetails,
        r'Gget_ticket_support_detailsData', 'fetchHelpdeskTicketDetails');
  }

  @override
  Gget_ticket_support_detailsData rebuild(
          void Function(Gget_ticket_support_detailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ticket_support_detailsDataBuilder toBuilder() =>
      new Gget_ticket_support_detailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ticket_support_detailsData &&
        G__typename == other.G__typename &&
        fetchHelpdeskTicketDetails == other.fetchHelpdeskTicketDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchHelpdeskTicketDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ticket_support_detailsData')
          ..add('G__typename', G__typename)
          ..add('fetchHelpdeskTicketDetails', fetchHelpdeskTicketDetails))
        .toString();
  }
}

class Gget_ticket_support_detailsDataBuilder
    implements
        Builder<Gget_ticket_support_detailsData,
            Gget_ticket_support_detailsDataBuilder> {
  _$Gget_ticket_support_detailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder?
      _fetchHelpdeskTicketDetails;
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder
      get fetchHelpdeskTicketDetails => _$this._fetchHelpdeskTicketDetails ??=
          new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder();
  set fetchHelpdeskTicketDetails(
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder?
              fetchHelpdeskTicketDetails) =>
      _$this._fetchHelpdeskTicketDetails = fetchHelpdeskTicketDetails;

  Gget_ticket_support_detailsDataBuilder() {
    Gget_ticket_support_detailsData._initializeBuilder(this);
  }

  Gget_ticket_support_detailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchHelpdeskTicketDetails = $v.fetchHelpdeskTicketDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ticket_support_detailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ticket_support_detailsData;
  }

  @override
  void update(void Function(Gget_ticket_support_detailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ticket_support_detailsData build() => _build();

  _$Gget_ticket_support_detailsData _build() {
    _$Gget_ticket_support_detailsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_ticket_support_detailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_ticket_support_detailsData', 'G__typename'),
              fetchHelpdeskTicketDetails: fetchHelpdeskTicketDetails.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchHelpdeskTicketDetails';
        fetchHelpdeskTicketDetails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ticket_support_detailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
    extends Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String reasonLabel;
  @override
  final BuiltList<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>
      comments;

  factory _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails(
          [void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder)?
              updates]) =>
      (new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails._(
      {required this.G__typename,
      required this.id,
      required this.reasonLabel,
      required this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(
        reasonLabel,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
        'reasonLabel');
    BuiltValueNullFieldError.checkNotNull(
        comments,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
        'comments');
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails rebuild(
          void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder
      toBuilder() =>
          new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails &&
        G__typename == other.G__typename &&
        id == other.id &&
        reasonLabel == other.reasonLabel &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reasonLabel.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reasonLabel', reasonLabel)
          ..add('comments', comments))
        .toString();
  }
}

class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder
    implements
        Builder<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder> {
  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _reasonLabel;
  String? get reasonLabel => _$this._reasonLabel;
  set reasonLabel(String? reasonLabel) => _$this._reasonLabel = reasonLabel;

  ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>?
      _comments;
  ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>
      get comments => _$this._comments ??= new ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>();
  set comments(
          ListBuilder<
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>?
              comments) =>
      _$this._comments = comments;

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder() {
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
        ._initializeBuilder(this);
  }

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reasonLabel = $v.reasonLabel;
      _comments = $v.comments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails;
  }

  @override
  void update(
      void Function(
              Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails build() =>
      _build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails _build() {
    _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails _$result;
    try {
      _$result = _$v ??
          new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
                  'id'),
              reasonLabel: BuiltValueNullFieldError.checkNotNull(
                  reasonLabel,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
                  'reasonLabel'),
              comments: comments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
    extends Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String from;
  @override
  final String message;
  @override
  final String createdAt;
  @override
  final BuiltList<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>
      documents;

  factory _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments(
          [void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder)?
              updates]) =>
      (new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments._(
      {required this.G__typename,
      required this.id,
      required this.from,
      required this.message,
      required this.createdAt,
      required this.documents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        from,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'from');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'message');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        documents,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
        'documents');
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments rebuild(
          void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder
      toBuilder() =>
          new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments &&
        G__typename == other.G__typename &&
        id == other.id &&
        from == other.from &&
        message == other.message &&
        createdAt == other.createdAt &&
        documents == other.documents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('from', from)
          ..add('message', message)
          ..add('createdAt', createdAt)
          ..add('documents', documents))
        .toString();
  }
}

class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder
    implements
        Builder<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder> {
  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>?
      _documents;
  ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>
      get documents => _$this._documents ??= new ListBuilder<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>();
  set documents(
          ListBuilder<
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>?
              documents) =>
      _$this._documents = documents;

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder() {
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
        ._initializeBuilder(this);
  }

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _from = $v.from;
      _message = $v.message;
      _createdAt = $v.createdAt;
      _documents = $v.documents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments;
  }

  @override
  void update(
      void Function(
              Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments build() =>
      _build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
      _build() {
    _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments', 'id'),
              from: BuiltValueNullFieldError.checkNotNull(
                  from,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
                  'from'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
                  'message'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
                  'createdAt'),
              documents: documents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        documents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
    extends Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents(
          [void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder)?
              updates]) =>
      (new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
        'name');
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
      rebuild(
              void Function(
                      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder
      toBuilder() =>
          new Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder
    implements
        Builder<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder> {
  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder() {
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
        ._initializeBuilder(this);
  }

  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents;
  }

  @override
  void update(
      void Function(
              Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
      build() => _build();

  _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
      _build() {
    final _$result = _$v ??
        new _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents',
                'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
