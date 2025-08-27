// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_recommandation_post_dismiss_recommandation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_dismiss_recommandationVars>
    _$gpostDismissRecommandationVarsSerializer =
    new _$Gpost_dismiss_recommandationVarsSerializer();

class _$Gpost_dismiss_recommandationVarsSerializer
    implements StructuredSerializer<Gpost_dismiss_recommandationVars> {
  @override
  final Iterable<Type> types = const [
    Gpost_dismiss_recommandationVars,
    _$Gpost_dismiss_recommandationVars
  ];
  @override
  final String wireName = 'Gpost_dismiss_recommandationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_dismiss_recommandationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'recommendationCode',
      serializers.serialize(object.recommendationCode,
          specifiedType: const FullType(_i1.GRecommendationCode)),
    ];

    return result;
  }

  @override
  Gpost_dismiss_recommandationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_dismiss_recommandationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'recommendationCode':
          result.recommendationCode = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRecommendationCode))!
              as _i1.GRecommendationCode;
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_dismiss_recommandationVars
    extends Gpost_dismiss_recommandationVars {
  @override
  final String patientId;
  @override
  final _i1.GRecommendationCode recommendationCode;

  factory _$Gpost_dismiss_recommandationVars(
          [void Function(Gpost_dismiss_recommandationVarsBuilder)? updates]) =>
      (new Gpost_dismiss_recommandationVarsBuilder()..update(updates))._build();

  _$Gpost_dismiss_recommandationVars._(
      {required this.patientId, required this.recommendationCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gpost_dismiss_recommandationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(recommendationCode,
        r'Gpost_dismiss_recommandationVars', 'recommendationCode');
  }

  @override
  Gpost_dismiss_recommandationVars rebuild(
          void Function(Gpost_dismiss_recommandationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_dismiss_recommandationVarsBuilder toBuilder() =>
      new Gpost_dismiss_recommandationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_dismiss_recommandationVars &&
        patientId == other.patientId &&
        recommendationCode == other.recommendationCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, recommendationCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_dismiss_recommandationVars')
          ..add('patientId', patientId)
          ..add('recommendationCode', recommendationCode))
        .toString();
  }
}

class Gpost_dismiss_recommandationVarsBuilder
    implements
        Builder<Gpost_dismiss_recommandationVars,
            Gpost_dismiss_recommandationVarsBuilder> {
  _$Gpost_dismiss_recommandationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GRecommendationCode? _recommendationCode;
  _i1.GRecommendationCode? get recommendationCode => _$this._recommendationCode;
  set recommendationCode(_i1.GRecommendationCode? recommendationCode) =>
      _$this._recommendationCode = recommendationCode;

  Gpost_dismiss_recommandationVarsBuilder();

  Gpost_dismiss_recommandationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _recommendationCode = $v.recommendationCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_dismiss_recommandationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_dismiss_recommandationVars;
  }

  @override
  void update(void Function(Gpost_dismiss_recommandationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_dismiss_recommandationVars build() => _build();

  _$Gpost_dismiss_recommandationVars _build() {
    final _$result = _$v ??
        new _$Gpost_dismiss_recommandationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gpost_dismiss_recommandationVars', 'patientId'),
            recommendationCode: BuiltValueNullFieldError.checkNotNull(
                recommendationCode,
                r'Gpost_dismiss_recommandationVars',
                'recommendationCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
