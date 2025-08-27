// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_bilan_de_prevention_get_questionnaires.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnairesVars> _$ggetQuestionnairesVarsSerializer =
    new _$Gget_questionnairesVarsSerializer();

class _$Gget_questionnairesVarsSerializer
    implements StructuredSerializer<Gget_questionnairesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesVars,
    _$Gget_questionnairesVars
  ];
  @override
  final String wireName = 'Gget_questionnairesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnairesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnairesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnairesVarsBuilder();

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

class _$Gget_questionnairesVars extends Gget_questionnairesVars {
  @override
  final String patientId;

  factory _$Gget_questionnairesVars(
          [void Function(Gget_questionnairesVarsBuilder)? updates]) =>
      (new Gget_questionnairesVarsBuilder()..update(updates))._build();

  _$Gget_questionnairesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_questionnairesVars', 'patientId');
  }

  @override
  Gget_questionnairesVars rebuild(
          void Function(Gget_questionnairesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesVarsBuilder toBuilder() =>
      new Gget_questionnairesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnairesVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_questionnairesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_questionnairesVarsBuilder
    implements
        Builder<Gget_questionnairesVars, Gget_questionnairesVarsBuilder> {
  _$Gget_questionnairesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_questionnairesVarsBuilder();

  Gget_questionnairesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnairesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnairesVars;
  }

  @override
  void update(void Function(Gget_questionnairesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesVars build() => _build();

  _$Gget_questionnairesVars _build() {
    final _$result = _$v ??
        new _$Gget_questionnairesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_questionnairesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
