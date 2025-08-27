// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_post_questionnaire_reponses.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_questionnaire_reponsesData>
    _$gpostQuestionnaireReponsesDataSerializer =
    new _$Gpost_questionnaire_reponsesDataSerializer();
Serializer<Gpost_questionnaire_reponsesData_postHealthQuizResponses>
    _$gpostQuestionnaireReponsesDataPostHealthQuizResponsesSerializer =
    new _$Gpost_questionnaire_reponsesData_postHealthQuizResponsesSerializer();

class _$Gpost_questionnaire_reponsesDataSerializer
    implements StructuredSerializer<Gpost_questionnaire_reponsesData> {
  @override
  final Iterable<Type> types = const [
    Gpost_questionnaire_reponsesData,
    _$Gpost_questionnaire_reponsesData
  ];
  @override
  final String wireName = 'Gpost_questionnaire_reponsesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_questionnaire_reponsesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postHealthQuizResponses',
      serializers.serialize(object.postHealthQuizResponses,
          specifiedType: const FullType(
              Gpost_questionnaire_reponsesData_postHealthQuizResponses)),
    ];

    return result;
  }

  @override
  Gpost_questionnaire_reponsesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_questionnaire_reponsesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postHealthQuizResponses':
          result.postHealthQuizResponses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gpost_questionnaire_reponsesData_postHealthQuizResponses))!
              as Gpost_questionnaire_reponsesData_postHealthQuizResponses);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_questionnaire_reponsesData_postHealthQuizResponsesSerializer
    implements
        StructuredSerializer<
            Gpost_questionnaire_reponsesData_postHealthQuizResponses> {
  @override
  final Iterable<Type> types = const [
    Gpost_questionnaire_reponsesData_postHealthQuizResponses,
    _$Gpost_questionnaire_reponsesData_postHealthQuizResponses
  ];
  @override
  final String wireName =
      'Gpost_questionnaire_reponsesData_postHealthQuizResponses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gpost_questionnaire_reponsesData_postHealthQuizResponses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gpost_questionnaire_reponsesData_postHealthQuizResponses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_questionnaire_reponsesData
    extends Gpost_questionnaire_reponsesData {
  @override
  final String G__typename;
  @override
  final Gpost_questionnaire_reponsesData_postHealthQuizResponses
      postHealthQuizResponses;

  factory _$Gpost_questionnaire_reponsesData(
          [void Function(Gpost_questionnaire_reponsesDataBuilder)? updates]) =>
      (new Gpost_questionnaire_reponsesDataBuilder()..update(updates))._build();

  _$Gpost_questionnaire_reponsesData._(
      {required this.G__typename, required this.postHealthQuizResponses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gpost_questionnaire_reponsesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postHealthQuizResponses,
        r'Gpost_questionnaire_reponsesData', 'postHealthQuizResponses');
  }

  @override
  Gpost_questionnaire_reponsesData rebuild(
          void Function(Gpost_questionnaire_reponsesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_questionnaire_reponsesDataBuilder toBuilder() =>
      new Gpost_questionnaire_reponsesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_questionnaire_reponsesData &&
        G__typename == other.G__typename &&
        postHealthQuizResponses == other.postHealthQuizResponses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postHealthQuizResponses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_questionnaire_reponsesData')
          ..add('G__typename', G__typename)
          ..add('postHealthQuizResponses', postHealthQuizResponses))
        .toString();
  }
}

class Gpost_questionnaire_reponsesDataBuilder
    implements
        Builder<Gpost_questionnaire_reponsesData,
            Gpost_questionnaire_reponsesDataBuilder> {
  _$Gpost_questionnaire_reponsesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder?
      _postHealthQuizResponses;
  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder
      get postHealthQuizResponses => _$this._postHealthQuizResponses ??=
          new Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder();
  set postHealthQuizResponses(
          Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder?
              postHealthQuizResponses) =>
      _$this._postHealthQuizResponses = postHealthQuizResponses;

  Gpost_questionnaire_reponsesDataBuilder() {
    Gpost_questionnaire_reponsesData._initializeBuilder(this);
  }

  Gpost_questionnaire_reponsesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postHealthQuizResponses = $v.postHealthQuizResponses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_questionnaire_reponsesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_questionnaire_reponsesData;
  }

  @override
  void update(void Function(Gpost_questionnaire_reponsesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_questionnaire_reponsesData build() => _build();

  _$Gpost_questionnaire_reponsesData _build() {
    _$Gpost_questionnaire_reponsesData _$result;
    try {
      _$result = _$v ??
          new _$Gpost_questionnaire_reponsesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gpost_questionnaire_reponsesData', 'G__typename'),
              postHealthQuizResponses: postHealthQuizResponses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postHealthQuizResponses';
        postHealthQuizResponses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_questionnaire_reponsesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_questionnaire_reponsesData_postHealthQuizResponses
    extends Gpost_questionnaire_reponsesData_postHealthQuizResponses {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gpost_questionnaire_reponsesData_postHealthQuizResponses(
          [void Function(
                  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder)?
              updates]) =>
      (new Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder()
            ..update(updates))
          ._build();

  _$Gpost_questionnaire_reponsesData_postHealthQuizResponses._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gpost_questionnaire_reponsesData_postHealthQuizResponses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gpost_questionnaire_reponsesData_postHealthQuizResponses', 'success');
  }

  @override
  Gpost_questionnaire_reponsesData_postHealthQuizResponses rebuild(
          void Function(
                  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder toBuilder() =>
      new Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_questionnaire_reponsesData_postHealthQuizResponses &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gpost_questionnaire_reponsesData_postHealthQuizResponses')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder
    implements
        Builder<Gpost_questionnaire_reponsesData_postHealthQuizResponses,
            Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder> {
  _$Gpost_questionnaire_reponsesData_postHealthQuizResponses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder() {
    Gpost_questionnaire_reponsesData_postHealthQuizResponses._initializeBuilder(
        this);
  }

  Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_questionnaire_reponsesData_postHealthQuizResponses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_questionnaire_reponsesData_postHealthQuizResponses;
  }

  @override
  void update(
      void Function(
              Gpost_questionnaire_reponsesData_postHealthQuizResponsesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_questionnaire_reponsesData_postHealthQuizResponses build() => _build();

  _$Gpost_questionnaire_reponsesData_postHealthQuizResponses _build() {
    final _$result = _$v ??
        new _$Gpost_questionnaire_reponsesData_postHealthQuizResponses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gpost_questionnaire_reponsesData_postHealthQuizResponses',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gpost_questionnaire_reponsesData_postHealthQuizResponses',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
