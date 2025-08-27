// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_post_questionnaire_reponses.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_questionnaire_reponsesVars>
    _$gpostQuestionnaireReponsesVarsSerializer =
    new _$Gpost_questionnaire_reponsesVarsSerializer();

class _$Gpost_questionnaire_reponsesVarsSerializer
    implements StructuredSerializer<Gpost_questionnaire_reponsesVars> {
  @override
  final Iterable<Type> types = const [
    Gpost_questionnaire_reponsesVars,
    _$Gpost_questionnaire_reponsesVars
  ];
  @override
  final String wireName = 'Gpost_questionnaire_reponsesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_questionnaire_reponsesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'healthQuizResponse',
      serializers.serialize(object.healthQuizResponse,
          specifiedType: const FullType(_i1.GHealthQuizResponseInput)),
    ];

    return result;
  }

  @override
  Gpost_questionnaire_reponsesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_questionnaire_reponsesVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gpost_questionnaire_reponsesVars
    extends Gpost_questionnaire_reponsesVars {
  @override
  final _i1.GHealthQuizResponseInput healthQuizResponse;

  factory _$Gpost_questionnaire_reponsesVars(
          [void Function(Gpost_questionnaire_reponsesVarsBuilder)? updates]) =>
      (new Gpost_questionnaire_reponsesVarsBuilder()..update(updates))._build();

  _$Gpost_questionnaire_reponsesVars._({required this.healthQuizResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(healthQuizResponse,
        r'Gpost_questionnaire_reponsesVars', 'healthQuizResponse');
  }

  @override
  Gpost_questionnaire_reponsesVars rebuild(
          void Function(Gpost_questionnaire_reponsesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_questionnaire_reponsesVarsBuilder toBuilder() =>
      new Gpost_questionnaire_reponsesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_questionnaire_reponsesVars &&
        healthQuizResponse == other.healthQuizResponse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, healthQuizResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_questionnaire_reponsesVars')
          ..add('healthQuizResponse', healthQuizResponse))
        .toString();
  }
}

class Gpost_questionnaire_reponsesVarsBuilder
    implements
        Builder<Gpost_questionnaire_reponsesVars,
            Gpost_questionnaire_reponsesVarsBuilder> {
  _$Gpost_questionnaire_reponsesVars? _$v;

  _i1.GHealthQuizResponseInputBuilder? _healthQuizResponse;
  _i1.GHealthQuizResponseInputBuilder get healthQuizResponse =>
      _$this._healthQuizResponse ??= new _i1.GHealthQuizResponseInputBuilder();
  set healthQuizResponse(
          _i1.GHealthQuizResponseInputBuilder? healthQuizResponse) =>
      _$this._healthQuizResponse = healthQuizResponse;

  Gpost_questionnaire_reponsesVarsBuilder();

  Gpost_questionnaire_reponsesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _healthQuizResponse = $v.healthQuizResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_questionnaire_reponsesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_questionnaire_reponsesVars;
  }

  @override
  void update(void Function(Gpost_questionnaire_reponsesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_questionnaire_reponsesVars build() => _build();

  _$Gpost_questionnaire_reponsesVars _build() {
    _$Gpost_questionnaire_reponsesVars _$result;
    try {
      _$result = _$v ??
          new _$Gpost_questionnaire_reponsesVars._(
              healthQuizResponse: healthQuizResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthQuizResponse';
        healthQuizResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_questionnaire_reponsesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
