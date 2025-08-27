// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_questionnaire.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnaireVars> _$ggetQuestionnaireVarsSerializer =
    new _$Gget_questionnaireVarsSerializer();

class _$Gget_questionnaireVarsSerializer
    implements StructuredSerializer<Gget_questionnaireVars> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireVars,
    _$Gget_questionnaireVars
  ];
  @override
  final String wireName = 'Gget_questionnaireVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnaireVars object,
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
  Gget_questionnaireVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireVarsBuilder();

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

class _$Gget_questionnaireVars extends Gget_questionnaireVars {
  @override
  final String patientId;
  @override
  final String code;
  @override
  final String version;

  factory _$Gget_questionnaireVars(
          [void Function(Gget_questionnaireVarsBuilder)? updates]) =>
      (new Gget_questionnaireVarsBuilder()..update(updates))._build();

  _$Gget_questionnaireVars._(
      {required this.patientId, required this.code, required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_questionnaireVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_questionnaireVars', 'code');
    BuiltValueNullFieldError.checkNotNull(
        version, r'Gget_questionnaireVars', 'version');
  }

  @override
  Gget_questionnaireVars rebuild(
          void Function(Gget_questionnaireVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireVarsBuilder toBuilder() =>
      new Gget_questionnaireVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_questionnaireVars')
          ..add('patientId', patientId)
          ..add('code', code)
          ..add('version', version))
        .toString();
  }
}

class Gget_questionnaireVarsBuilder
    implements Builder<Gget_questionnaireVars, Gget_questionnaireVarsBuilder> {
  _$Gget_questionnaireVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  Gget_questionnaireVarsBuilder();

  Gget_questionnaireVarsBuilder get _$this {
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
  void replace(Gget_questionnaireVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireVars;
  }

  @override
  void update(void Function(Gget_questionnaireVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireVars build() => _build();

  _$Gget_questionnaireVars _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_questionnaireVars', 'patientId'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_questionnaireVars', 'code'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Gget_questionnaireVars', 'version'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
