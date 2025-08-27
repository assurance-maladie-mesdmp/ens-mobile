// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_role_add_role_or_add_ps_and_role.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_professionel_sante_roleReq>
    _$gupdateProfessionelSanteRoleReqSerializer =
    new _$Gupdate_professionel_sante_roleReqSerializer();

class _$Gupdate_professionel_sante_roleReqSerializer
    implements StructuredSerializer<Gupdate_professionel_sante_roleReq> {
  @override
  final Iterable<Type> types = const [
    Gupdate_professionel_sante_roleReq,
    _$Gupdate_professionel_sante_roleReq
  ];
  @override
  final String wireName = 'Gupdate_professionel_sante_roleReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_professionel_sante_roleReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType:
              const FullType(_i3.Gupdate_professionel_sante_roleVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(_i2.Gupdate_professionel_sante_roleData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gupdate_professionel_sante_roleReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_professionel_sante_roleReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.Gupdate_professionel_sante_roleVars))!
              as _i3.Gupdate_professionel_sante_roleVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.Gupdate_professionel_sante_roleData))!
              as _i2.Gupdate_professionel_sante_roleData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_professionel_sante_roleReq
    extends Gupdate_professionel_sante_roleReq {
  @override
  final _i3.Gupdate_professionel_sante_roleVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gupdate_professionel_sante_roleData? Function(
      _i2.Gupdate_professionel_sante_roleData?,
      _i2.Gupdate_professionel_sante_roleData?)? updateResult;
  @override
  final _i2.Gupdate_professionel_sante_roleData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$Gupdate_professionel_sante_roleReq(
          [void Function(Gupdate_professionel_sante_roleReqBuilder)?
              updates]) =>
      (new Gupdate_professionel_sante_roleReqBuilder()..update(updates))
          ._build();

  _$Gupdate_professionel_sante_roleReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'Gupdate_professionel_sante_roleReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gupdate_professionel_sante_roleReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(executeOnListen,
        r'Gupdate_professionel_sante_roleReq', 'executeOnListen');
  }

  @override
  Gupdate_professionel_sante_roleReq rebuild(
          void Function(Gupdate_professionel_sante_roleReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_professionel_sante_roleReqBuilder toBuilder() =>
      new Gupdate_professionel_sante_roleReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gupdate_professionel_sante_roleReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_professionel_sante_roleReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class Gupdate_professionel_sante_roleReqBuilder
    implements
        Builder<Gupdate_professionel_sante_roleReq,
            Gupdate_professionel_sante_roleReqBuilder> {
  _$Gupdate_professionel_sante_roleReq? _$v;

  _i3.Gupdate_professionel_sante_roleVarsBuilder? _vars;
  _i3.Gupdate_professionel_sante_roleVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gupdate_professionel_sante_roleVarsBuilder();
  set vars(_i3.Gupdate_professionel_sante_roleVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gupdate_professionel_sante_roleData? Function(
      _i2.Gupdate_professionel_sante_roleData?,
      _i2.Gupdate_professionel_sante_roleData?)? _updateResult;
  _i2.Gupdate_professionel_sante_roleData? Function(
          _i2.Gupdate_professionel_sante_roleData?,
          _i2.Gupdate_professionel_sante_roleData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gupdate_professionel_sante_roleData? Function(
                  _i2.Gupdate_professionel_sante_roleData?,
                  _i2.Gupdate_professionel_sante_roleData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gupdate_professionel_sante_roleDataBuilder? _optimisticResponse;
  _i2.Gupdate_professionel_sante_roleDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.Gupdate_professionel_sante_roleDataBuilder();
  set optimisticResponse(
          _i2.Gupdate_professionel_sante_roleDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  Gupdate_professionel_sante_roleReqBuilder() {
    Gupdate_professionel_sante_roleReq._initializeBuilder(this);
  }

  Gupdate_professionel_sante_roleReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_professionel_sante_roleReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_professionel_sante_roleReq;
  }

  @override
  void update(
      void Function(Gupdate_professionel_sante_roleReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_professionel_sante_roleReq build() => _build();

  _$Gupdate_professionel_sante_roleReq _build() {
    _$Gupdate_professionel_sante_roleReq _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_professionel_sante_roleReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(operation,
                  r'Gupdate_professionel_sante_roleReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'Gupdate_professionel_sante_roleReq',
                  'executeOnListen'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_professionel_sante_roleReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
