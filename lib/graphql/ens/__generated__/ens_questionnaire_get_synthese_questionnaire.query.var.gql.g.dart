// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_synthese_questionnaire.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnaire_syntheseVars>
    _$ggetQuestionnaireSyntheseVarsSerializer =
    new _$Gget_questionnaire_syntheseVarsSerializer();

class _$Gget_questionnaire_syntheseVarsSerializer
    implements StructuredSerializer<Gget_questionnaire_syntheseVars> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaire_syntheseVars,
    _$Gget_questionnaire_syntheseVars
  ];
  @override
  final String wireName = 'Gget_questionnaire_syntheseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnaire_syntheseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaire_syntheseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaire_syntheseVarsBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaire_syntheseVars
    extends Gget_questionnaire_syntheseVars {
  @override
  final String patientId;
  @override
  final String code;
  @override
  final String version;

  factory _$Gget_questionnaire_syntheseVars(
          [void Function(Gget_questionnaire_syntheseVarsBuilder)? updates]) =>
      (new Gget_questionnaire_syntheseVarsBuilder()..update(updates))._build();

  _$Gget_questionnaire_syntheseVars._(
      {required this.patientId, required this.code, required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_questionnaire_syntheseVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_questionnaire_syntheseVars', 'code');
    BuiltValueNullFieldError.checkNotNull(
        version, r'Gget_questionnaire_syntheseVars', 'version');
  }

  @override
  Gget_questionnaire_syntheseVars rebuild(
          void Function(Gget_questionnaire_syntheseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaire_syntheseVarsBuilder toBuilder() =>
      new Gget_questionnaire_syntheseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaire_syntheseVars &&
        patientId == other.patientId &&
        code == other.code &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_questionnaire_syntheseVars')
          ..add('patientId', patientId)
          ..add('code', code)
          ..add('version', version))
        .toString();
  }
}

class Gget_questionnaire_syntheseVarsBuilder
    implements
        Builder<Gget_questionnaire_syntheseVars,
            Gget_questionnaire_syntheseVarsBuilder> {
  _$Gget_questionnaire_syntheseVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  Gget_questionnaire_syntheseVarsBuilder();

  Gget_questionnaire_syntheseVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _code = $v.code;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaire_syntheseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaire_syntheseVars;
  }

  @override
  void update(void Function(Gget_questionnaire_syntheseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaire_syntheseVars build() => _build();

  _$Gget_questionnaire_syntheseVars _build() {
    final _$result = _$v ??
        new _$Gget_questionnaire_syntheseVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_questionnaire_syntheseVars', 'patientId'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_questionnaire_syntheseVars', 'code'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Gget_questionnaire_syntheseVars', 'version'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
