// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_urgence_set_consentement_urgence.query.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_consentement_urgenceReq>
    _$gsetConsentementUrgenceReqSerializer =
    new _$Gset_consentement_urgenceReqSerializer();

class _$Gset_consentement_urgenceReqSerializer
    implements StructuredSerializer<Gset_consentement_urgenceReq> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceReq,
    _$Gset_consentement_urgenceReq
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gset_consentement_urgenceVars)),
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
            specifiedType: const FullType(_i2.Gset_consentement_urgenceData)));
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
  Gset_consentement_urgenceReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.Gset_consentement_urgenceVars))!
              as _i3.Gset_consentement_urgenceVars);
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
                      const FullType(_i2.Gset_consentement_urgenceData))!
              as _i2.Gset_consentement_urgenceData);
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

class _$Gset_consentement_urgenceReq extends Gset_consentement_urgenceReq {
  @override
  final _i3.Gset_consentement_urgenceVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gset_consentement_urgenceData? Function(
      _i2.Gset_consentement_urgenceData?,
      _i2.Gset_consentement_urgenceData?)? updateResult;
  @override
  final _i2.Gset_consentement_urgenceData? optimisticResponse;
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

  factory _$Gset_consentement_urgenceReq(
          [void Function(Gset_consentement_urgenceReqBuilder)? updates]) =>
      (new Gset_consentement_urgenceReqBuilder()..update(updates))._build();

  _$Gset_consentement_urgenceReq._(
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
        vars, r'Gset_consentement_urgenceReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gset_consentement_urgenceReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gset_consentement_urgenceReq', 'executeOnListen');
  }

  @override
  Gset_consentement_urgenceReq rebuild(
          void Function(Gset_consentement_urgenceReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceReqBuilder toBuilder() =>
      new Gset_consentement_urgenceReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gset_consentement_urgenceReq &&
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
    return (newBuiltValueToStringHelper(r'Gset_consentement_urgenceReq')
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

class Gset_consentement_urgenceReqBuilder
    implements
        Builder<Gset_consentement_urgenceReq,
            Gset_consentement_urgenceReqBuilder> {
  _$Gset_consentement_urgenceReq? _$v;

  _i3.Gset_consentement_urgenceVarsBuilder? _vars;
  _i3.Gset_consentement_urgenceVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gset_consentement_urgenceVarsBuilder();
  set vars(_i3.Gset_consentement_urgenceVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gset_consentement_urgenceData? Function(
      _i2.Gset_consentement_urgenceData?,
      _i2.Gset_consentement_urgenceData?)? _updateResult;
  _i2.Gset_consentement_urgenceData? Function(
          _i2.Gset_consentement_urgenceData?,
          _i2.Gset_consentement_urgenceData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gset_consentement_urgenceData? Function(
                  _i2.Gset_consentement_urgenceData?,
                  _i2.Gset_consentement_urgenceData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gset_consentement_urgenceDataBuilder? _optimisticResponse;
  _i2.Gset_consentement_urgenceDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.Gset_consentement_urgenceDataBuilder();
  set optimisticResponse(
          _i2.Gset_consentement_urgenceDataBuilder? optimisticResponse) =>
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

  Gset_consentement_urgenceReqBuilder() {
    Gset_consentement_urgenceReq._initializeBuilder(this);
  }

  Gset_consentement_urgenceReqBuilder get _$this {
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
  void replace(Gset_consentement_urgenceReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceReq;
  }

  @override
  void update(void Function(Gset_consentement_urgenceReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceReq build() => _build();

  _$Gset_consentement_urgenceReq _build() {
    _$Gset_consentement_urgenceReq _$result;
    try {
      _$result = _$v ??
          new _$Gset_consentement_urgenceReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gset_consentement_urgenceReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'Gset_consentement_urgenceReq',
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
            r'Gset_consentement_urgenceReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
