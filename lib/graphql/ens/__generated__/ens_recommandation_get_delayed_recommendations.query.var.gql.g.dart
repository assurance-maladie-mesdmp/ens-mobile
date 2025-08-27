// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_recommandation_get_delayed_recommendations.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_delayed_recommendationsVars>
    _$ggetDelayedRecommendationsVarsSerializer =
    new _$Gget_delayed_recommendationsVarsSerializer();

class _$Gget_delayed_recommendationsVarsSerializer
    implements StructuredSerializer<Gget_delayed_recommendationsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsVars,
    _$Gget_delayed_recommendationsVars
  ];
  @override
  final String wireName = 'Gget_delayed_recommendationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_delayed_recommendationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_delayed_recommendationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_delayed_recommendationsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsVars
    extends Gget_delayed_recommendationsVars {
  @override
  final String patientId;

  factory _$Gget_delayed_recommendationsVars(
          [void Function(Gget_delayed_recommendationsVarsBuilder)? updates]) =>
      (new Gget_delayed_recommendationsVarsBuilder()..update(updates))._build();

  _$Gget_delayed_recommendationsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_delayed_recommendationsVars', 'patientId');
  }

  @override
  Gget_delayed_recommendationsVars rebuild(
          void Function(Gget_delayed_recommendationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsVarsBuilder toBuilder() =>
      new Gget_delayed_recommendationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delayed_recommendationsVars &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_delayed_recommendationsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_delayed_recommendationsVarsBuilder
    implements
        Builder<Gget_delayed_recommendationsVars,
            Gget_delayed_recommendationsVarsBuilder> {
  _$Gget_delayed_recommendationsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_delayed_recommendationsVarsBuilder();

  Gget_delayed_recommendationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_delayed_recommendationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delayed_recommendationsVars;
  }

  @override
  void update(void Function(Gget_delayed_recommendationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsVars build() => _build();

  _$Gget_delayed_recommendationsVars _build() {
    final _$result = _$v ??
        new _$Gget_delayed_recommendationsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_delayed_recommendationsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
