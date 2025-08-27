// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_incentive_reco.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_recommandationsVars> _$ggetRecommandationsVarsSerializer =
    new _$Gget_recommandationsVarsSerializer();

class _$Gget_recommandationsVarsSerializer
    implements StructuredSerializer<Gget_recommandationsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_recommandationsVars,
    _$Gget_recommandationsVars
  ];
  @override
  final String wireName = 'Gget_recommandationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_recommandationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_recommandationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_recommandationsVarsBuilder();

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

class _$Gget_recommandationsVars extends Gget_recommandationsVars {
  @override
  final String patientId;

  factory _$Gget_recommandationsVars(
          [void Function(Gget_recommandationsVarsBuilder)? updates]) =>
      (new Gget_recommandationsVarsBuilder()..update(updates))._build();

  _$Gget_recommandationsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_recommandationsVars', 'patientId');
  }

  @override
  Gget_recommandationsVars rebuild(
          void Function(Gget_recommandationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_recommandationsVarsBuilder toBuilder() =>
      new Gget_recommandationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_recommandationsVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_recommandationsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_recommandationsVarsBuilder
    implements
        Builder<Gget_recommandationsVars, Gget_recommandationsVarsBuilder> {
  _$Gget_recommandationsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_recommandationsVarsBuilder();

  Gget_recommandationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_recommandationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_recommandationsVars;
  }

  @override
  void update(void Function(Gget_recommandationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_recommandationsVars build() => _build();

  _$Gget_recommandationsVars _build() {
    final _$result = _$v ??
        new _$Gget_recommandationsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_recommandationsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
