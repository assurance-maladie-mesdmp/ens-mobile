// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_courbes_reference.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_courbes_referenceVars> _$ggetCourbesReferenceVarsSerializer =
    new _$Gget_courbes_referenceVarsSerializer();

class _$Gget_courbes_referenceVarsSerializer
    implements StructuredSerializer<Gget_courbes_referenceVars> {
  @override
  final Iterable<Type> types = const [
    Gget_courbes_referenceVars,
    _$Gget_courbes_referenceVars
  ];
  @override
  final String wireName = 'Gget_courbes_referenceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_courbes_referenceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(_i1.GMeasureGrowthMetricsParams)),
    ];

    return result;
  }

  @override
  Gget_courbes_referenceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_courbes_referenceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GMeasureGrowthMetricsParams))!
              as _i1.GMeasureGrowthMetricsParams);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_courbes_referenceVars extends Gget_courbes_referenceVars {
  @override
  final _i1.GMeasureGrowthMetricsParams params;

  factory _$Gget_courbes_referenceVars(
          [void Function(Gget_courbes_referenceVarsBuilder)? updates]) =>
      (new Gget_courbes_referenceVarsBuilder()..update(updates))._build();

  _$Gget_courbes_referenceVars._({required this.params}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        params, r'Gget_courbes_referenceVars', 'params');
  }

  @override
  Gget_courbes_referenceVars rebuild(
          void Function(Gget_courbes_referenceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_courbes_referenceVarsBuilder toBuilder() =>
      new Gget_courbes_referenceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_courbes_referenceVars && params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_courbes_referenceVars')
          ..add('params', params))
        .toString();
  }
}

class Gget_courbes_referenceVarsBuilder
    implements
        Builder<Gget_courbes_referenceVars, Gget_courbes_referenceVarsBuilder> {
  _$Gget_courbes_referenceVars? _$v;

  _i1.GMeasureGrowthMetricsParamsBuilder? _params;
  _i1.GMeasureGrowthMetricsParamsBuilder get params =>
      _$this._params ??= new _i1.GMeasureGrowthMetricsParamsBuilder();
  set params(_i1.GMeasureGrowthMetricsParamsBuilder? params) =>
      _$this._params = params;

  Gget_courbes_referenceVarsBuilder();

  Gget_courbes_referenceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _params = $v.params.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_courbes_referenceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_courbes_referenceVars;
  }

  @override
  void update(void Function(Gget_courbes_referenceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_courbes_referenceVars build() => _build();

  _$Gget_courbes_referenceVars _build() {
    _$Gget_courbes_referenceVars _$result;
    try {
      _$result =
          _$v ?? new _$Gget_courbes_referenceVars._(params: params.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_courbes_referenceVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
