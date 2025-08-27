// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_create_helpdesk_ticket.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_helpdesk_ticketData> _$gcreateHelpdeskTicketDataSerializer =
    new _$Gcreate_helpdesk_ticketDataSerializer();
Serializer<Gcreate_helpdesk_ticketData_createHelpdeskTicketV2>
    _$gcreateHelpdeskTicketDataCreateHelpdeskTicketV2Serializer =
    new _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Serializer();

class _$Gcreate_helpdesk_ticketDataSerializer
    implements StructuredSerializer<Gcreate_helpdesk_ticketData> {
  @override
  final Iterable<Type> types = const [
    Gcreate_helpdesk_ticketData,
    _$Gcreate_helpdesk_ticketData
  ];
  @override
  final String wireName = 'Gcreate_helpdesk_ticketData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_helpdesk_ticketData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createHelpdeskTicketV2',
      serializers.serialize(object.createHelpdeskTicketV2,
          specifiedType: const FullType(
              Gcreate_helpdesk_ticketData_createHelpdeskTicketV2)),
    ];

    return result;
  }

  @override
  Gcreate_helpdesk_ticketData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_helpdesk_ticketDataBuilder();

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
        case 'createHelpdeskTicketV2':
          result.createHelpdeskTicketV2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gcreate_helpdesk_ticketData_createHelpdeskTicketV2))!
              as Gcreate_helpdesk_ticketData_createHelpdeskTicketV2);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Serializer
    implements
        StructuredSerializer<
            Gcreate_helpdesk_ticketData_createHelpdeskTicketV2> {
  @override
  final Iterable<Type> types = const [
    Gcreate_helpdesk_ticketData_createHelpdeskTicketV2,
    _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2
  ];
  @override
  final String wireName = 'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.errorCode;
    if (value != null) {
      result
        ..add('errorCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder();

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
        case 'errorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_helpdesk_ticketData extends Gcreate_helpdesk_ticketData {
  @override
  final String G__typename;
  @override
  final Gcreate_helpdesk_ticketData_createHelpdeskTicketV2
      createHelpdeskTicketV2;

  factory _$Gcreate_helpdesk_ticketData(
          [void Function(Gcreate_helpdesk_ticketDataBuilder)? updates]) =>
      (new Gcreate_helpdesk_ticketDataBuilder()..update(updates))._build();

  _$Gcreate_helpdesk_ticketData._(
      {required this.G__typename, required this.createHelpdeskTicketV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_helpdesk_ticketData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(createHelpdeskTicketV2,
        r'Gcreate_helpdesk_ticketData', 'createHelpdeskTicketV2');
  }

  @override
  Gcreate_helpdesk_ticketData rebuild(
          void Function(Gcreate_helpdesk_ticketDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_helpdesk_ticketDataBuilder toBuilder() =>
      new Gcreate_helpdesk_ticketDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_helpdesk_ticketData &&
        G__typename == other.G__typename &&
        createHelpdeskTicketV2 == other.createHelpdeskTicketV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createHelpdeskTicketV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_helpdesk_ticketData')
          ..add('G__typename', G__typename)
          ..add('createHelpdeskTicketV2', createHelpdeskTicketV2))
        .toString();
  }
}

class Gcreate_helpdesk_ticketDataBuilder
    implements
        Builder<Gcreate_helpdesk_ticketData,
            Gcreate_helpdesk_ticketDataBuilder> {
  _$Gcreate_helpdesk_ticketData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder?
      _createHelpdeskTicketV2;
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder
      get createHelpdeskTicketV2 => _$this._createHelpdeskTicketV2 ??=
          new Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder();
  set createHelpdeskTicketV2(
          Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder?
              createHelpdeskTicketV2) =>
      _$this._createHelpdeskTicketV2 = createHelpdeskTicketV2;

  Gcreate_helpdesk_ticketDataBuilder() {
    Gcreate_helpdesk_ticketData._initializeBuilder(this);
  }

  Gcreate_helpdesk_ticketDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createHelpdeskTicketV2 = $v.createHelpdeskTicketV2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_helpdesk_ticketData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_helpdesk_ticketData;
  }

  @override
  void update(void Function(Gcreate_helpdesk_ticketDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_helpdesk_ticketData build() => _build();

  _$Gcreate_helpdesk_ticketData _build() {
    _$Gcreate_helpdesk_ticketData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_helpdesk_ticketData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_helpdesk_ticketData', 'G__typename'),
              createHelpdeskTicketV2: createHelpdeskTicketV2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createHelpdeskTicketV2';
        createHelpdeskTicketV2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_helpdesk_ticketData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2
    extends Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final String? errorCode;

  factory _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2(
          [void Function(
                  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder)?
              updates]) =>
      (new Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder()
            ..update(updates))
          ._build();

  _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2._(
      {required this.G__typename, required this.success, this.errorCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2', 'success');
  }

  @override
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 rebuild(
          void Function(
                  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder toBuilder() =>
      new Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 &&
        G__typename == other.G__typename &&
        success == other.success &&
        errorCode == other.errorCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('errorCode', errorCode))
        .toString();
  }
}

class Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder
    implements
        Builder<Gcreate_helpdesk_ticketData_createHelpdeskTicketV2,
            Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder> {
  _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder() {
    Gcreate_helpdesk_ticketData_createHelpdeskTicketV2._initializeBuilder(this);
  }

  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _errorCode = $v.errorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2;
  }

  @override
  void update(
      void Function(Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 build() => _build();

  _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 _build() {
    final _$result = _$v ??
        new _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gcreate_helpdesk_ticketData_createHelpdeskTicketV2',
                'success'),
            errorCode: errorCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
