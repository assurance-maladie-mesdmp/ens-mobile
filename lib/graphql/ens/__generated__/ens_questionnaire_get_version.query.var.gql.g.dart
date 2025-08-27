// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_version.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_version_questionnaireVars>
    _$ggetVersionQuestionnaireVarsSerializer =
    new _$Gget_version_questionnaireVarsSerializer();

class _$Gget_version_questionnaireVarsSerializer
    implements StructuredSerializer<Gget_version_questionnaireVars> {
  @override
  final Iterable<Type> types = const [
    Gget_version_questionnaireVars,
    _$Gget_version_questionnaireVars
  ];
  @override
  final String wireName = 'Gget_version_questionnaireVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_version_questionnaireVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'fileNamePrefix',
      serializers.serialize(object.fileNamePrefix,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_version_questionnaireVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_version_questionnaireVarsBuilder();

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
        case 'fileNamePrefix':
          result.fileNamePrefix = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_version_questionnaireVars extends Gget_version_questionnaireVars {
  @override
  final String patientId;
  @override
  final String fileNamePrefix;

  factory _$Gget_version_questionnaireVars(
          [void Function(Gget_version_questionnaireVarsBuilder)? updates]) =>
      (new Gget_version_questionnaireVarsBuilder()..update(updates))._build();

  _$Gget_version_questionnaireVars._(
      {required this.patientId, required this.fileNamePrefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_version_questionnaireVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        fileNamePrefix, r'Gget_version_questionnaireVars', 'fileNamePrefix');
  }

  @override
  Gget_version_questionnaireVars rebuild(
          void Function(Gget_version_questionnaireVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_version_questionnaireVarsBuilder toBuilder() =>
      new Gget_version_questionnaireVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_version_questionnaireVars &&
        patientId == other.patientId &&
        fileNamePrefix == other.fileNamePrefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, fileNamePrefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_version_questionnaireVars')
          ..add('patientId', patientId)
          ..add('fileNamePrefix', fileNamePrefix))
        .toString();
  }
}

class Gget_version_questionnaireVarsBuilder
    implements
        Builder<Gget_version_questionnaireVars,
            Gget_version_questionnaireVarsBuilder> {
  _$Gget_version_questionnaireVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _fileNamePrefix;
  String? get fileNamePrefix => _$this._fileNamePrefix;
  set fileNamePrefix(String? fileNamePrefix) =>
      _$this._fileNamePrefix = fileNamePrefix;

  Gget_version_questionnaireVarsBuilder();

  Gget_version_questionnaireVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _fileNamePrefix = $v.fileNamePrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_version_questionnaireVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_version_questionnaireVars;
  }

  @override
  void update(void Function(Gget_version_questionnaireVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_version_questionnaireVars build() => _build();

  _$Gget_version_questionnaireVars _build() {
    final _$result = _$v ??
        new _$Gget_version_questionnaireVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_version_questionnaireVars', 'patientId'),
            fileNamePrefix: BuiltValueNullFieldError.checkNotNull(
                fileNamePrefix,
                r'Gget_version_questionnaireVars',
                'fileNamePrefix'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
