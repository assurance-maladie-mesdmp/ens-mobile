// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_delete_questionnaire_reponses.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_questionnaire_reponsesVars>
    _$gdeleteQuestionnaireReponsesVarsSerializer =
    new _$Gdelete_questionnaire_reponsesVarsSerializer();

class _$Gdelete_questionnaire_reponsesVarsSerializer
    implements StructuredSerializer<Gdelete_questionnaire_reponsesVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_questionnaire_reponsesVars,
    _$Gdelete_questionnaire_reponsesVars
  ];
  @override
  final String wireName = 'Gdelete_questionnaire_reponsesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_questionnaire_reponsesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'responseId',
      serializers.serialize(object.responseId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_questionnaire_reponsesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_questionnaire_reponsesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'responseId':
          result.responseId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_questionnaire_reponsesVars
    extends Gdelete_questionnaire_reponsesVars {
  @override
  final String responseId;
  @override
  final String patientId;

  factory _$Gdelete_questionnaire_reponsesVars(
          [void Function(Gdelete_questionnaire_reponsesVarsBuilder)?
              updates]) =>
      (new Gdelete_questionnaire_reponsesVarsBuilder()..update(updates))
          ._build();

  _$Gdelete_questionnaire_reponsesVars._(
      {required this.responseId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseId, r'Gdelete_questionnaire_reponsesVars', 'responseId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_questionnaire_reponsesVars', 'patientId');
  }

  @override
  Gdelete_questionnaire_reponsesVars rebuild(
          void Function(Gdelete_questionnaire_reponsesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_questionnaire_reponsesVarsBuilder toBuilder() =>
      new Gdelete_questionnaire_reponsesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_questionnaire_reponsesVars &&
        responseId == other.responseId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_questionnaire_reponsesVars')
          ..add('responseId', responseId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_questionnaire_reponsesVarsBuilder
    implements
        Builder<Gdelete_questionnaire_reponsesVars,
            Gdelete_questionnaire_reponsesVarsBuilder> {
  _$Gdelete_questionnaire_reponsesVars? _$v;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_questionnaire_reponsesVarsBuilder();

  Gdelete_questionnaire_reponsesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseId = $v.responseId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_questionnaire_reponsesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_questionnaire_reponsesVars;
  }

  @override
  void update(
      void Function(Gdelete_questionnaire_reponsesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_questionnaire_reponsesVars build() => _build();

  _$Gdelete_questionnaire_reponsesVars _build() {
    final _$result = _$v ??
        new _$Gdelete_questionnaire_reponsesVars._(
            responseId: BuiltValueNullFieldError.checkNotNull(responseId,
                r'Gdelete_questionnaire_reponsesVars', 'responseId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_questionnaire_reponsesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
