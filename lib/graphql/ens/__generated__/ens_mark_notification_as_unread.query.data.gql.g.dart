// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mark_notification_as_unread.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_notification_as_unreadData>
    _$gmarkNotificationAsUnreadDataSerializer =
    new _$Gmark_notification_as_unreadDataSerializer();
Serializer<Gmark_notification_as_unreadData_markNotificationAsUnread>
    _$gmarkNotificationAsUnreadDataMarkNotificationAsUnreadSerializer =
    new _$Gmark_notification_as_unreadData_markNotificationAsUnreadSerializer();

class _$Gmark_notification_as_unreadDataSerializer
    implements StructuredSerializer<Gmark_notification_as_unreadData> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_unreadData,
    _$Gmark_notification_as_unreadData
  ];
  @override
  final String wireName = 'Gmark_notification_as_unreadData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_notification_as_unreadData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'markNotificationAsUnread',
      serializers.serialize(object.markNotificationAsUnread,
          specifiedType: const FullType(
              Gmark_notification_as_unreadData_markNotificationAsUnread)),
    ];

    return result;
  }

  @override
  Gmark_notification_as_unreadData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_notification_as_unreadDataBuilder();

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
        case 'markNotificationAsUnread':
          result.markNotificationAsUnread.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gmark_notification_as_unreadData_markNotificationAsUnread))!
              as Gmark_notification_as_unreadData_markNotificationAsUnread);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_notification_as_unreadData_markNotificationAsUnreadSerializer
    implements
        StructuredSerializer<
            Gmark_notification_as_unreadData_markNotificationAsUnread> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_unreadData_markNotificationAsUnread,
    _$Gmark_notification_as_unreadData_markNotificationAsUnread
  ];
  @override
  final String wireName =
      'Gmark_notification_as_unreadData_markNotificationAsUnread';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gmark_notification_as_unreadData_markNotificationAsUnread object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gmark_notification_as_unreadData_markNotificationAsUnread deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_notification_as_unreadData
    extends Gmark_notification_as_unreadData {
  @override
  final String G__typename;
  @override
  final Gmark_notification_as_unreadData_markNotificationAsUnread
      markNotificationAsUnread;

  factory _$Gmark_notification_as_unreadData(
          [void Function(Gmark_notification_as_unreadDataBuilder)? updates]) =>
      (new Gmark_notification_as_unreadDataBuilder()..update(updates))._build();

  _$Gmark_notification_as_unreadData._(
      {required this.G__typename, required this.markNotificationAsUnread})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmark_notification_as_unreadData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(markNotificationAsUnread,
        r'Gmark_notification_as_unreadData', 'markNotificationAsUnread');
  }

  @override
  Gmark_notification_as_unreadData rebuild(
          void Function(Gmark_notification_as_unreadDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_unreadDataBuilder toBuilder() =>
      new Gmark_notification_as_unreadDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_unreadData &&
        G__typename == other.G__typename &&
        markNotificationAsUnread == other.markNotificationAsUnread;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, markNotificationAsUnread.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_notification_as_unreadData')
          ..add('G__typename', G__typename)
          ..add('markNotificationAsUnread', markNotificationAsUnread))
        .toString();
  }
}

class Gmark_notification_as_unreadDataBuilder
    implements
        Builder<Gmark_notification_as_unreadData,
            Gmark_notification_as_unreadDataBuilder> {
  _$Gmark_notification_as_unreadData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder?
      _markNotificationAsUnread;
  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder
      get markNotificationAsUnread => _$this._markNotificationAsUnread ??=
          new Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder();
  set markNotificationAsUnread(
          Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder?
              markNotificationAsUnread) =>
      _$this._markNotificationAsUnread = markNotificationAsUnread;

  Gmark_notification_as_unreadDataBuilder() {
    Gmark_notification_as_unreadData._initializeBuilder(this);
  }

  Gmark_notification_as_unreadDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _markNotificationAsUnread = $v.markNotificationAsUnread.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_notification_as_unreadData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_unreadData;
  }

  @override
  void update(void Function(Gmark_notification_as_unreadDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_unreadData build() => _build();

  _$Gmark_notification_as_unreadData _build() {
    _$Gmark_notification_as_unreadData _$result;
    try {
      _$result = _$v ??
          new _$Gmark_notification_as_unreadData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gmark_notification_as_unreadData', 'G__typename'),
              markNotificationAsUnread: markNotificationAsUnread.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'markNotificationAsUnread';
        markNotificationAsUnread.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmark_notification_as_unreadData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmark_notification_as_unreadData_markNotificationAsUnread
    extends Gmark_notification_as_unreadData_markNotificationAsUnread {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gmark_notification_as_unreadData_markNotificationAsUnread(
          [void Function(
                  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder)?
              updates]) =>
      (new Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder()
            ..update(updates))
          ._build();

  _$Gmark_notification_as_unreadData_markNotificationAsUnread._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gmark_notification_as_unreadData_markNotificationAsUnread',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gmark_notification_as_unreadData_markNotificationAsUnread',
        'success');
  }

  @override
  Gmark_notification_as_unreadData_markNotificationAsUnread rebuild(
          void Function(
                  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder
      toBuilder() =>
          new Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_unreadData_markNotificationAsUnread &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gmark_notification_as_unreadData_markNotificationAsUnread')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder
    implements
        Builder<Gmark_notification_as_unreadData_markNotificationAsUnread,
            Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder> {
  _$Gmark_notification_as_unreadData_markNotificationAsUnread? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder() {
    Gmark_notification_as_unreadData_markNotificationAsUnread
        ._initializeBuilder(this);
  }

  Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gmark_notification_as_unreadData_markNotificationAsUnread other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_unreadData_markNotificationAsUnread;
  }

  @override
  void update(
      void Function(
              Gmark_notification_as_unreadData_markNotificationAsUnreadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_unreadData_markNotificationAsUnread build() => _build();

  _$Gmark_notification_as_unreadData_markNotificationAsUnread _build() {
    final _$result = _$v ??
        new _$Gmark_notification_as_unreadData_markNotificationAsUnread._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gmark_notification_as_unreadData_markNotificationAsUnread',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gmark_notification_as_unreadData_markNotificationAsUnread',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
