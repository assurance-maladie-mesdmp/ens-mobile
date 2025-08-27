// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_metadata_by_code.query.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_metadata_by_codeReq> _$ggetMetadataByCodeReqSerializer =
    new _$Gget_metadata_by_codeReqSerializer();

class _$Gget_metadata_by_codeReqSerializer
    implements StructuredSerializer<Gget_metadata_by_codeReq> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeReq,
    _$Gget_metadata_by_codeReq
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_metadata_by_codeReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gget_metadata_by_codeVars)),
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
            specifiedType: const FullType(_i2.Gget_metadata_by_codeData)));
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
  Gget_metadata_by_codeReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_metadata_by_codeReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gget_metadata_by_codeVars))!
              as _i3.Gget_metadata_by_codeVars);
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
                  specifiedType: const FullType(_i2.Gget_metadata_by_codeData))!
              as _i2.Gget_metadata_by_codeData);
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

class _$Gget_metadata_by_codeReq extends Gget_metadata_by_codeReq {
  @override
  final _i3.Gget_metadata_by_codeVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gget_metadata_by_codeData? Function(
          _i2.Gget_metadata_by_codeData?, _i2.Gget_metadata_by_codeData?)?
      updateResult;
  @override
  final _i2.Gget_metadata_by_codeData? optimisticResponse;
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

  factory _$Gget_metadata_by_codeReq(
          [void Function(Gget_metadata_by_codeReqBuilder)? updates]) =>
      (new Gget_metadata_by_codeReqBuilder()..update(updates))._build();

  _$Gget_metadata_by_codeReq._(
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
        vars, r'Gget_metadata_by_codeReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gget_metadata_by_codeReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gget_metadata_by_codeReq', 'executeOnListen');
  }

  @override
  Gget_metadata_by_codeReq rebuild(
          void Function(Gget_metadata_by_codeReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeReqBuilder toBuilder() =>
      new Gget_metadata_by_codeReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gget_metadata_by_codeReq &&
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
    return (newBuiltValueToStringHelper(r'Gget_metadata_by_codeReq')
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

class Gget_metadata_by_codeReqBuilder
    implements
        Builder<Gget_metadata_by_codeReq, Gget_metadata_by_codeReqBuilder> {
  _$Gget_metadata_by_codeReq? _$v;

  _i3.Gget_metadata_by_codeVarsBuilder? _vars;
  _i3.Gget_metadata_by_codeVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gget_metadata_by_codeVarsBuilder();
  set vars(_i3.Gget_metadata_by_codeVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gget_metadata_by_codeData? Function(
          _i2.Gget_metadata_by_codeData?, _i2.Gget_metadata_by_codeData?)?
      _updateResult;
  _i2.Gget_metadata_by_codeData? Function(
          _i2.Gget_metadata_by_codeData?, _i2.Gget_metadata_by_codeData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gget_metadata_by_codeData? Function(
                  _i2.Gget_metadata_by_codeData?,
                  _i2.Gget_metadata_by_codeData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gget_metadata_by_codeDataBuilder? _optimisticResponse;
  _i2.Gget_metadata_by_codeDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gget_metadata_by_codeDataBuilder();
  set optimisticResponse(
          _i2.Gget_metadata_by_codeDataBuilder? optimisticResponse) =>
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

  Gget_metadata_by_codeReqBuilder() {
    Gget_metadata_by_codeReq._initializeBuilder(this);
  }

  Gget_metadata_by_codeReqBuilder get _$this {
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
  void replace(Gget_metadata_by_codeReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeReq;
  }

  @override
  void update(void Function(Gget_metadata_by_codeReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeReq build() => _build();

  _$Gget_metadata_by_codeReq _build() {
    _$Gget_metadata_by_codeReq _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gget_metadata_by_codeReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'Gget_metadata_by_codeReq',
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
            r'Gget_metadata_by_codeReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
