// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_examen_recommande.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_examen_recommandeVars> _$ggetExamenRecommandeVarsSerializer =
    new _$Gget_examen_recommandeVarsSerializer();

class _$Gget_examen_recommandeVarsSerializer
    implements StructuredSerializer<Gget_examen_recommandeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_examen_recommandeVars,
    _$Gget_examen_recommandeVars
  ];
  @override
  final String wireName = 'Gget_examen_recommandeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_examen_recommandeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'dateDebutPrevention',
      serializers.serialize(object.dateDebutPrevention,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_examen_recommandeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_examen_recommandeVarsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateDebutPrevention':
          result.dateDebutPrevention = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_examen_recommandeVars extends Gget_examen_recommandeVars {
  @override
  final String patientId;
  @override
  final String code;
  @override
  final String dateDebutPrevention;

  factory _$Gget_examen_recommandeVars(
          [void Function(Gget_examen_recommandeVarsBuilder)? updates]) =>
      (new Gget_examen_recommandeVarsBuilder()..update(updates))._build();

  _$Gget_examen_recommandeVars._(
      {required this.patientId,
      required this.code,
      required this.dateDebutPrevention})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_examen_recommandeVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_examen_recommandeVars', 'code');
    BuiltValueNullFieldError.checkNotNull(dateDebutPrevention,
        r'Gget_examen_recommandeVars', 'dateDebutPrevention');
  }

  @override
  Gget_examen_recommandeVars rebuild(
          void Function(Gget_examen_recommandeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examen_recommandeVarsBuilder toBuilder() =>
      new Gget_examen_recommandeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_examen_recommandeVars &&
        patientId == other.patientId &&
        code == other.code &&
        dateDebutPrevention == other.dateDebutPrevention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, dateDebutPrevention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_examen_recommandeVars')
          ..add('patientId', patientId)
          ..add('code', code)
          ..add('dateDebutPrevention', dateDebutPrevention))
        .toString();
  }
}

class Gget_examen_recommandeVarsBuilder
    implements
        Builder<Gget_examen_recommandeVars, Gget_examen_recommandeVarsBuilder> {
  _$Gget_examen_recommandeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _dateDebutPrevention;
  String? get dateDebutPrevention => _$this._dateDebutPrevention;
  set dateDebutPrevention(String? dateDebutPrevention) =>
      _$this._dateDebutPrevention = dateDebutPrevention;

  Gget_examen_recommandeVarsBuilder();

  Gget_examen_recommandeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _code = $v.code;
      _dateDebutPrevention = $v.dateDebutPrevention;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_examen_recommandeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_examen_recommandeVars;
  }

  @override
  void update(void Function(Gget_examen_recommandeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examen_recommandeVars build() => _build();

  _$Gget_examen_recommandeVars _build() {
    final _$result = _$v ??
        new _$Gget_examen_recommandeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_examen_recommandeVars', 'patientId'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_examen_recommandeVars', 'code'),
            dateDebutPrevention: BuiltValueNullFieldError.checkNotNull(
                dateDebutPrevention,
                r'Gget_examen_recommandeVars',
                'dateDebutPrevention'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
