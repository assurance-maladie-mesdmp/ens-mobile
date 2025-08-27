// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mark_notification_as_read.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_notification_as_readData>
    _$gmarkNotificationAsReadDataSerializer =
    new _$Gmark_notification_as_readDataSerializer();
Serializer<Gmark_notification_as_readData_markNotificationAsRead>
    _$gmarkNotificationAsReadDataMarkNotificationAsReadSerializer =
    new _$Gmark_notification_as_readData_markNotificationAsReadSerializer();

class _$Gmark_notification_as_readDataSerializer
    implements StructuredSerializer<Gmark_notification_as_readData> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_readData,
    _$Gmark_notification_as_readData
  ];
  @override
  final String wireName = 'Gmark_notification_as_readData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_notification_as_readData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'markNotificationAsRead',
      serializers.serialize(object.markNotificationAsRead,
          specifiedType: const FullType(
              Gmark_notification_as_readData_markNotificationAsRead)),
    ];

    return result;
  }

  @override
  Gmark_notification_as_readData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_notification_as_readDataBuilder();

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
        case 'markNotificationAsRead':
          result.markNotificationAsRead.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gmark_notification_as_readData_markNotificationAsRead))!
              as Gmark_notification_as_readData_markNotificationAsRead);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_notification_as_readData_markNotificationAsReadSerializer
    implements
        StructuredSerializer<
            Gmark_notification_as_readData_markNotificationAsRead> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_readData_markNotificationAsRead,
    _$Gmark_notification_as_readData_markNotificationAsRead
  ];
  @override
  final String wireName =
      'Gmark_notification_as_readData_markNotificationAsRead';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gmark_notification_as_readData_markNotificationAsRead object,
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
  Gmark_notification_as_readData_markNotificationAsRead deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gmark_notification_as_readData_markNotificationAsReadBuilder();

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

class _$Gmark_notification_as_readData extends Gmark_notification_as_readData {
  @override
  final String G__typename;
  @override
  final Gmark_notification_as_readData_markNotificationAsRead
      markNotificationAsRead;

  factory _$Gmark_notification_as_readData(
          [void Function(Gmark_notification_as_readDataBuilder)? updates]) =>
      (new Gmark_notification_as_readDataBuilder()..update(updates))._build();

  _$Gmark_notification_as_readData._(
      {required this.G__typename, required this.markNotificationAsRead})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmark_notification_as_readData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(markNotificationAsRead,
        r'Gmark_notification_as_readData', 'markNotificationAsRead');
  }

  @override
  Gmark_notification_as_readData rebuild(
          void Function(Gmark_notification_as_readDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_readDataBuilder toBuilder() =>
      new Gmark_notification_as_readDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_readData &&
        G__typename == other.G__typename &&
        markNotificationAsRead == other.markNotificationAsRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, markNotificationAsRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_notification_as_readData')
          ..add('G__typename', G__typename)
          ..add('markNotificationAsRead', markNotificationAsRead))
        .toString();
  }
}

class Gmark_notification_as_readDataBuilder
    implements
        Builder<Gmark_notification_as_readData,
            Gmark_notification_as_readDataBuilder> {
  _$Gmark_notification_as_readData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmark_notification_as_readData_markNotificationAsReadBuilder?
      _markNotificationAsRead;
  Gmark_notification_as_readData_markNotificationAsReadBuilder
      get markNotificationAsRead => _$this._markNotificationAsRead ??=
          new Gmark_notification_as_readData_markNotificationAsReadBuilder();
  set markNotificationAsRead(
          Gmark_notification_as_readData_markNotificationAsReadBuilder?
              markNotificationAsRead) =>
      _$this._markNotificationAsRead = markNotificationAsRead;

  Gmark_notification_as_readDataBuilder() {
    Gmark_notification_as_readData._initializeBuilder(this);
  }

  Gmark_notification_as_readDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _markNotificationAsRead = $v.markNotificationAsRead.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_notification_as_readData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_readData;
  }

  @override
  void update(void Function(Gmark_notification_as_readDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_readData build() => _build();

  _$Gmark_notification_as_readData _build() {
    _$Gmark_notification_as_readData _$result;
    try {
      _$result = _$v ??
          new _$Gmark_notification_as_readData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gmark_notification_as_readData', 'G__typename'),
              markNotificationAsRead: markNotificationAsRead.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'markNotificationAsRead';
        markNotificationAsRead.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmark_notification_as_readData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmark_notification_as_readData_markNotificationAsRead
    extends Gmark_notification_as_readData_markNotificationAsRead {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gmark_notification_as_readData_markNotificationAsRead(
          [void Function(
                  Gmark_notification_as_readData_markNotificationAsReadBuilder)?
              updates]) =>
      (new Gmark_notification_as_readData_markNotificationAsReadBuilder()
            ..update(updates))
          ._build();

  _$Gmark_notification_as_readData_markNotificationAsRead._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gmark_notification_as_readData_markNotificationAsRead',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gmark_notification_as_readData_markNotificationAsRead', 'success');
  }

  @override
  Gmark_notification_as_readData_markNotificationAsRead rebuild(
          void Function(
                  Gmark_notification_as_readData_markNotificationAsReadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_readData_markNotificationAsReadBuilder toBuilder() =>
      new Gmark_notification_as_readData_markNotificationAsReadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_readData_markNotificationAsRead &&
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
            r'Gmark_notification_as_readData_markNotificationAsRead')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gmark_notification_as_readData_markNotificationAsReadBuilder
    implements
        Builder<Gmark_notification_as_readData_markNotificationAsRead,
            Gmark_notification_as_readData_markNotificationAsReadBuilder> {
  _$Gmark_notification_as_readData_markNotificationAsRead? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gmark_notification_as_readData_markNotificationAsReadBuilder() {
    Gmark_notification_as_readData_markNotificationAsRead._initializeBuilder(
        this);
  }

  Gmark_notification_as_readData_markNotificationAsReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_notification_as_readData_markNotificationAsRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_readData_markNotificationAsRead;
  }

  @override
  void update(
      void Function(
              Gmark_notification_as_readData_markNotificationAsReadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_readData_markNotificationAsRead build() => _build();

  _$Gmark_notification_as_readData_markNotificationAsRead _build() {
    final _$result = _$v ??
        new _$Gmark_notification_as_readData_markNotificationAsRead._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gmark_notification_as_readData_markNotificationAsRead',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gmark_notification_as_readData_markNotificationAsRead',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
