// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_update_vaccination.query.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_vaccinationReq> _$gupdateVaccinationReqSerializer =
    new _$Gupdate_vaccinationReqSerializer();

class _$Gupdate_vaccinationReqSerializer
    implements StructuredSerializer<Gupdate_vaccinationReq> {
  @override
  final Iterable<Type> types = const [
    Gupdate_vaccinationReq,
    _$Gupdate_vaccinationReq
  ];
  @override
  final String wireName = 'Gupdate_vaccinationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_vaccinationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gupdate_vaccinationVars)),
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
            specifiedType: const FullType(_i2.Gupdate_vaccinationData)));
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
  Gupdate_vaccinationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_vaccinationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gupdate_vaccinationVars))!
              as _i3.Gupdate_vaccinationVars);
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
                  specifiedType: const FullType(_i2.Gupdate_vaccinationData))!
              as _i2.Gupdate_vaccinationData);
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

class _$Gupdate_vaccinationReq extends Gupdate_vaccinationReq {
  @override
  final _i3.Gupdate_vaccinationVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gupdate_vaccinationData? Function(
      _i2.Gupdate_vaccinationData?, _i2.Gupdate_vaccinationData?)? updateResult;
  @override
  final _i2.Gupdate_vaccinationData? optimisticResponse;
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

  factory _$Gupdate_vaccinationReq(
          [void Function(Gupdate_vaccinationReqBuilder)? updates]) =>
      (new Gupdate_vaccinationReqBuilder()..update(updates))._build();

  _$Gupdate_vaccinationReq._(
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
        vars, r'Gupdate_vaccinationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gupdate_vaccinationReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gupdate_vaccinationReq', 'executeOnListen');
  }

  @override
  Gupdate_vaccinationReq rebuild(
          void Function(Gupdate_vaccinationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_vaccinationReqBuilder toBuilder() =>
      new Gupdate_vaccinationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gupdate_vaccinationReq &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_vaccinationReq')
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

class Gupdate_vaccinationReqBuilder
    implements Builder<Gupdate_vaccinationReq, Gupdate_vaccinationReqBuilder> {
  _$Gupdate_vaccinationReq? _$v;

  _i3.Gupdate_vaccinationVarsBuilder? _vars;
  _i3.Gupdate_vaccinationVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gupdate_vaccinationVarsBuilder();
  set vars(_i3.Gupdate_vaccinationVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gupdate_vaccinationData? Function(
          _i2.Gupdate_vaccinationData?, _i2.Gupdate_vaccinationData?)?
      _updateResult;
  _i2.Gupdate_vaccinationData? Function(
          _i2.Gupdate_vaccinationData?, _i2.Gupdate_vaccinationData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gupdate_vaccinationData? Function(
                  _i2.Gupdate_vaccinationData?, _i2.Gupdate_vaccinationData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gupdate_vaccinationDataBuilder? _optimisticResponse;
  _i2.Gupdate_vaccinationDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gupdate_vaccinationDataBuilder();
  set optimisticResponse(
          _i2.Gupdate_vaccinationDataBuilder? optimisticResponse) =>
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

  Gupdate_vaccinationReqBuilder() {
    Gupdate_vaccinationReq._initializeBuilder(this);
  }

  Gupdate_vaccinationReqBuilder get _$this {
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
  void replace(Gupdate_vaccinationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_vaccinationReq;
  }

  @override
  void update(void Function(Gupdate_vaccinationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_vaccinationReq build() => _build();

  _$Gupdate_vaccinationReq _build() {
    _$Gupdate_vaccinationReq _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_vaccinationReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gupdate_vaccinationReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'Gupdate_vaccinationReq',
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
            r'Gupdate_vaccinationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
