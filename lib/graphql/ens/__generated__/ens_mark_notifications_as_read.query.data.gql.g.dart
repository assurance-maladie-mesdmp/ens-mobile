// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mark_notifications_as_read.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_all_notifications_as_readData>
    _$gmarkAllNotificationsAsReadDataSerializer =
    new _$Gmark_all_notifications_as_readDataSerializer();
Serializer<Gmark_all_notifications_as_readData_markAllNotificationsAsRead>
    _$gmarkAllNotificationsAsReadDataMarkAllNotificationsAsReadSerializer =
    new _$Gmark_all_notifications_as_readData_markAllNotificationsAsReadSerializer();

class _$Gmark_all_notifications_as_readDataSerializer
    implements StructuredSerializer<Gmark_all_notifications_as_readData> {
  @override
  final Iterable<Type> types = const [
    Gmark_all_notifications_as_readData,
    _$Gmark_all_notifications_as_readData
  ];
  @override
  final String wireName = 'Gmark_all_notifications_as_readData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_all_notifications_as_readData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'markAllNotificationsAsRead',
      serializers.serialize(object.markAllNotificationsAsRead,
          specifiedType: const FullType(
              Gmark_all_notifications_as_readData_markAllNotificationsAsRead)),
    ];

    return result;
  }

  @override
  Gmark_all_notifications_as_readData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_all_notifications_as_readDataBuilder();

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
        case 'markAllNotificationsAsRead':
          result.markAllNotificationsAsRead.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gmark_all_notifications_as_readData_markAllNotificationsAsRead))!
              as Gmark_all_notifications_as_readData_markAllNotificationsAsRead);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_all_notifications_as_readData_markAllNotificationsAsReadSerializer
    implements
        StructuredSerializer<
            Gmark_all_notifications_as_readData_markAllNotificationsAsRead> {
  @override
  final Iterable<Type> types = const [
    Gmark_all_notifications_as_readData_markAllNotificationsAsRead,
    _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead
  ];
  @override
  final String wireName =
      'Gmark_all_notifications_as_readData_markAllNotificationsAsRead';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gmark_all_notifications_as_readData_markAllNotificationsAsRead object,
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
  Gmark_all_notifications_as_readData_markAllNotificationsAsRead deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder();

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

class _$Gmark_all_notifications_as_readData
    extends Gmark_all_notifications_as_readData {
  @override
  final String G__typename;
  @override
  final Gmark_all_notifications_as_readData_markAllNotificationsAsRead
      markAllNotificationsAsRead;

  factory _$Gmark_all_notifications_as_readData(
          [void Function(Gmark_all_notifications_as_readDataBuilder)?
              updates]) =>
      (new Gmark_all_notifications_as_readDataBuilder()..update(updates))
          ._build();

  _$Gmark_all_notifications_as_readData._(
      {required this.G__typename, required this.markAllNotificationsAsRead})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmark_all_notifications_as_readData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(markAllNotificationsAsRead,
        r'Gmark_all_notifications_as_readData', 'markAllNotificationsAsRead');
  }

  @override
  Gmark_all_notifications_as_readData rebuild(
          void Function(Gmark_all_notifications_as_readDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_all_notifications_as_readDataBuilder toBuilder() =>
      new Gmark_all_notifications_as_readDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_all_notifications_as_readData &&
        G__typename == other.G__typename &&
        markAllNotificationsAsRead == other.markAllNotificationsAsRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, markAllNotificationsAsRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_all_notifications_as_readData')
          ..add('G__typename', G__typename)
          ..add('markAllNotificationsAsRead', markAllNotificationsAsRead))
        .toString();
  }
}

class Gmark_all_notifications_as_readDataBuilder
    implements
        Builder<Gmark_all_notifications_as_readData,
            Gmark_all_notifications_as_readDataBuilder> {
  _$Gmark_all_notifications_as_readData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder?
      _markAllNotificationsAsRead;
  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
      get markAllNotificationsAsRead => _$this._markAllNotificationsAsRead ??=
          new Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder();
  set markAllNotificationsAsRead(
          Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder?
              markAllNotificationsAsRead) =>
      _$this._markAllNotificationsAsRead = markAllNotificationsAsRead;

  Gmark_all_notifications_as_readDataBuilder() {
    Gmark_all_notifications_as_readData._initializeBuilder(this);
  }

  Gmark_all_notifications_as_readDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _markAllNotificationsAsRead = $v.markAllNotificationsAsRead.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_all_notifications_as_readData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_all_notifications_as_readData;
  }

  @override
  void update(
      void Function(Gmark_all_notifications_as_readDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_all_notifications_as_readData build() => _build();

  _$Gmark_all_notifications_as_readData _build() {
    _$Gmark_all_notifications_as_readData _$result;
    try {
      _$result = _$v ??
          new _$Gmark_all_notifications_as_readData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gmark_all_notifications_as_readData', 'G__typename'),
              markAllNotificationsAsRead: markAllNotificationsAsRead.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'markAllNotificationsAsRead';
        markAllNotificationsAsRead.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmark_all_notifications_as_readData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead
    extends Gmark_all_notifications_as_readData_markAllNotificationsAsRead {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead(
          [void Function(
                  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder)?
              updates]) =>
      (new Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder()
            ..update(updates))
          ._build();

  _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gmark_all_notifications_as_readData_markAllNotificationsAsRead',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gmark_all_notifications_as_readData_markAllNotificationsAsRead',
        'success');
  }

  @override
  Gmark_all_notifications_as_readData_markAllNotificationsAsRead rebuild(
          void Function(
                  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
      toBuilder() =>
          new Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gmark_all_notifications_as_readData_markAllNotificationsAsRead &&
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
            r'Gmark_all_notifications_as_readData_markAllNotificationsAsRead')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
    implements
        Builder<Gmark_all_notifications_as_readData_markAllNotificationsAsRead,
            Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder> {
  _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder() {
    Gmark_all_notifications_as_readData_markAllNotificationsAsRead
        ._initializeBuilder(this);
  }

  Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder
      get _$this {
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
      Gmark_all_notifications_as_readData_markAllNotificationsAsRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead;
  }

  @override
  void update(
      void Function(
              Gmark_all_notifications_as_readData_markAllNotificationsAsReadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_all_notifications_as_readData_markAllNotificationsAsRead build() =>
      _build();

  _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead _build() {
    final _$result = _$v ??
        new _$Gmark_all_notifications_as_readData_markAllNotificationsAsRead._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gmark_all_notifications_as_readData_markAllNotificationsAsRead',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gmark_all_notifications_as_readData_markAllNotificationsAsRead',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
