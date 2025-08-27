// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_update_questionnaire_reponses.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_questionnaire_reponsesVars>
    _$gupdateQuestionnaireReponsesVarsSerializer =
    new _$Gupdate_questionnaire_reponsesVarsSerializer();

class _$Gupdate_questionnaire_reponsesVarsSerializer
    implements StructuredSerializer<Gupdate_questionnaire_reponsesVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_questionnaire_reponsesVars,
    _$Gupdate_questionnaire_reponsesVars
  ];
  @override
  final String wireName = 'Gupdate_questionnaire_reponsesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_questionnaire_reponsesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'healthQuizResponse',
      serializers.serialize(object.healthQuizResponse,
          specifiedType: const FullType(_i1.GHealthQuizResponseInput)),
      'responseId',
      serializers.serialize(object.responseId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gupdate_questionnaire_reponsesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_questionnaire_reponsesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'healthQuizResponse':
          result.healthQuizResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GHealthQuizResponseInput))!
              as _i1.GHealthQuizResponseInput);
          break;
        case 'responseId':
          result.responseId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_questionnaire_reponsesVars
    extends Gupdate_questionnaire_reponsesVars {
  @override
  final _i1.GHealthQuizResponseInput healthQuizResponse;
  @override
  final String responseId;

  factory _$Gupdate_questionnaire_reponsesVars(
          [void Function(Gupdate_questionnaire_reponsesVarsBuilder)?
              updates]) =>
      (new Gupdate_questionnaire_reponsesVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_questionnaire_reponsesVars._(
      {required this.healthQuizResponse, required this.responseId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(healthQuizResponse,
        r'Gupdate_questionnaire_reponsesVars', 'healthQuizResponse');
    BuiltValueNullFieldError.checkNotNull(
        responseId, r'Gupdate_questionnaire_reponsesVars', 'responseId');
  }

  @override
  Gupdate_questionnaire_reponsesVars rebuild(
          void Function(Gupdate_questionnaire_reponsesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_questionnaire_reponsesVarsBuilder toBuilder() =>
      new Gupdate_questionnaire_reponsesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_questionnaire_reponsesVars &&
        healthQuizResponse == other.healthQuizResponse &&
        responseId == other.responseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, healthQuizResponse.hashCode);
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_questionnaire_reponsesVars')
          ..add('healthQuizResponse', healthQuizResponse)
          ..add('responseId', responseId))
        .toString();
  }
}

class Gupdate_questionnaire_reponsesVarsBuilder
    implements
        Builder<Gupdate_questionnaire_reponsesVars,
            Gupdate_questionnaire_reponsesVarsBuilder> {
  _$Gupdate_questionnaire_reponsesVars? _$v;

  _i1.GHealthQuizResponseInputBuilder? _healthQuizResponse;
  _i1.GHealthQuizResponseInputBuilder get healthQuizResponse =>
      _$this._healthQuizResponse ??= new _i1.GHealthQuizResponseInputBuilder();
  set healthQuizResponse(
          _i1.GHealthQuizResponseInputBuilder? healthQuizResponse) =>
      _$this._healthQuizResponse = healthQuizResponse;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  Gupdate_questionnaire_reponsesVarsBuilder();

  Gupdate_questionnaire_reponsesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _healthQuizResponse = $v.healthQuizResponse.toBuilder();
      _responseId = $v.responseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_questionnaire_reponsesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_questionnaire_reponsesVars;
  }

  @override
  void update(
      void Function(Gupdate_questionnaire_reponsesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_questionnaire_reponsesVars build() => _build();

  _$Gupdate_questionnaire_reponsesVars _build() {
    _$Gupdate_questionnaire_reponsesVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_questionnaire_reponsesVars._(
              healthQuizResponse: healthQuizResponse.build(),
              responseId: BuiltValueNullFieldError.checkNotNull(responseId,
                  r'Gupdate_questionnaire_reponsesVars', 'responseId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthQuizResponse';
        healthQuizResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_questionnaire_reponsesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
