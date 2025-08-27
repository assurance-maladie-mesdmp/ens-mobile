// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_send_ens_trace.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_ens_traceData> _$gsendEnsTraceDataSerializer =
    new _$Gsend_ens_traceDataSerializer();
Serializer<Gsend_ens_traceData_sendUserAction>
    _$gsendEnsTraceDataSendUserActionSerializer =
    new _$Gsend_ens_traceData_sendUserActionSerializer();

class _$Gsend_ens_traceDataSerializer
    implements StructuredSerializer<Gsend_ens_traceData> {
  @override
  final Iterable<Type> types = const [
    Gsend_ens_traceData,
    _$Gsend_ens_traceData
  ];
  @override
  final String wireName = 'Gsend_ens_traceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_ens_traceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendUserAction',
      serializers.serialize(object.sendUserAction,
          specifiedType: const FullType(Gsend_ens_traceData_sendUserAction)),
    ];

    return result;
  }

  @override
  Gsend_ens_traceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_ens_traceDataBuilder();

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
        case 'sendUserAction':
          result.sendUserAction.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gsend_ens_traceData_sendUserAction))!
              as Gsend_ens_traceData_sendUserAction);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_ens_traceData_sendUserActionSerializer
    implements StructuredSerializer<Gsend_ens_traceData_sendUserAction> {
  @override
  final Iterable<Type> types = const [
    Gsend_ens_traceData_sendUserAction,
    _$Gsend_ens_traceData_sendUserAction
  ];
  @override
  final String wireName = 'Gsend_ens_traceData_sendUserAction';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_ens_traceData_sendUserAction object,
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
  Gsend_ens_traceData_sendUserAction deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_ens_traceData_sendUserActionBuilder();

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

class _$Gsend_ens_traceData extends Gsend_ens_traceData {
  @override
  final String G__typename;
  @override
  final Gsend_ens_traceData_sendUserAction sendUserAction;

  factory _$Gsend_ens_traceData(
          [void Function(Gsend_ens_traceDataBuilder)? updates]) =>
      (new Gsend_ens_traceDataBuilder()..update(updates))._build();

  _$Gsend_ens_traceData._(
      {required this.G__typename, required this.sendUserAction})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_ens_traceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sendUserAction, r'Gsend_ens_traceData', 'sendUserAction');
  }

  @override
  Gsend_ens_traceData rebuild(
          void Function(Gsend_ens_traceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_ens_traceDataBuilder toBuilder() =>
      new Gsend_ens_traceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_ens_traceData &&
        G__typename == other.G__typename &&
        sendUserAction == other.sendUserAction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendUserAction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_ens_traceData')
          ..add('G__typename', G__typename)
          ..add('sendUserAction', sendUserAction))
        .toString();
  }
}

class Gsend_ens_traceDataBuilder
    implements Builder<Gsend_ens_traceData, Gsend_ens_traceDataBuilder> {
  _$Gsend_ens_traceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_ens_traceData_sendUserActionBuilder? _sendUserAction;
  Gsend_ens_traceData_sendUserActionBuilder get sendUserAction =>
      _$this._sendUserAction ??=
          new Gsend_ens_traceData_sendUserActionBuilder();
  set sendUserAction(
          Gsend_ens_traceData_sendUserActionBuilder? sendUserAction) =>
      _$this._sendUserAction = sendUserAction;

  Gsend_ens_traceDataBuilder() {
    Gsend_ens_traceData._initializeBuilder(this);
  }

  Gsend_ens_traceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendUserAction = $v.sendUserAction.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_ens_traceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_ens_traceData;
  }

  @override
  void update(void Function(Gsend_ens_traceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_ens_traceData build() => _build();

  _$Gsend_ens_traceData _build() {
    _$Gsend_ens_traceData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_ens_traceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_ens_traceData', 'G__typename'),
              sendUserAction: sendUserAction.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendUserAction';
        sendUserAction.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_ens_traceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_ens_traceData_sendUserAction
    extends Gsend_ens_traceData_sendUserAction {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsend_ens_traceData_sendUserAction(
          [void Function(Gsend_ens_traceData_sendUserActionBuilder)?
              updates]) =>
      (new Gsend_ens_traceData_sendUserActionBuilder()..update(updates))
          ._build();

  _$Gsend_ens_traceData_sendUserAction._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_ens_traceData_sendUserAction', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gsend_ens_traceData_sendUserAction', 'success');
  }

  @override
  Gsend_ens_traceData_sendUserAction rebuild(
          void Function(Gsend_ens_traceData_sendUserActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_ens_traceData_sendUserActionBuilder toBuilder() =>
      new Gsend_ens_traceData_sendUserActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_ens_traceData_sendUserAction &&
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
    return (newBuiltValueToStringHelper(r'Gsend_ens_traceData_sendUserAction')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsend_ens_traceData_sendUserActionBuilder
    implements
        Builder<Gsend_ens_traceData_sendUserAction,
            Gsend_ens_traceData_sendUserActionBuilder> {
  _$Gsend_ens_traceData_sendUserAction? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsend_ens_traceData_sendUserActionBuilder() {
    Gsend_ens_traceData_sendUserAction._initializeBuilder(this);
  }

  Gsend_ens_traceData_sendUserActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_ens_traceData_sendUserAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_ens_traceData_sendUserAction;
  }

  @override
  void update(
      void Function(Gsend_ens_traceData_sendUserActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_ens_traceData_sendUserAction build() => _build();

  _$Gsend_ens_traceData_sendUserAction _build() {
    final _$result = _$v ??
        new _$Gsend_ens_traceData_sendUserAction._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gsend_ens_traceData_sendUserAction', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gsend_ens_traceData_sendUserAction', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
