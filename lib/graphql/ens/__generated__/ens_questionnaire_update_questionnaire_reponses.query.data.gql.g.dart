// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_update_questionnaire_reponses.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_questionnaire_reponsesData>
    _$gupdateQuestionnaireReponsesDataSerializer =
    new _$Gupdate_questionnaire_reponsesDataSerializer();
Serializer<Gupdate_questionnaire_reponsesData_updateHealthQuizResponses>
    _$gupdateQuestionnaireReponsesDataUpdateHealthQuizResponsesSerializer =
    new _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesSerializer();

class _$Gupdate_questionnaire_reponsesDataSerializer
    implements StructuredSerializer<Gupdate_questionnaire_reponsesData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_questionnaire_reponsesData,
    _$Gupdate_questionnaire_reponsesData
  ];
  @override
  final String wireName = 'Gupdate_questionnaire_reponsesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_questionnaire_reponsesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateHealthQuizResponses',
      serializers.serialize(object.updateHealthQuizResponses,
          specifiedType: const FullType(
              Gupdate_questionnaire_reponsesData_updateHealthQuizResponses)),
    ];

    return result;
  }

  @override
  Gupdate_questionnaire_reponsesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_questionnaire_reponsesDataBuilder();

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
        case 'updateHealthQuizResponses':
          result.updateHealthQuizResponses.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gupdate_questionnaire_reponsesData_updateHealthQuizResponses))!
              as Gupdate_questionnaire_reponsesData_updateHealthQuizResponses);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesSerializer
    implements
        StructuredSerializer<
            Gupdate_questionnaire_reponsesData_updateHealthQuizResponses> {
  @override
  final Iterable<Type> types = const [
    Gupdate_questionnaire_reponsesData_updateHealthQuizResponses,
    _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
  ];
  @override
  final String wireName =
      'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_questionnaire_reponsesData_updateHealthQuizResponses object,
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
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder();

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

class _$Gupdate_questionnaire_reponsesData
    extends Gupdate_questionnaire_reponsesData {
  @override
  final String G__typename;
  @override
  final Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
      updateHealthQuizResponses;

  factory _$Gupdate_questionnaire_reponsesData(
          [void Function(Gupdate_questionnaire_reponsesDataBuilder)?
              updates]) =>
      (new Gupdate_questionnaire_reponsesDataBuilder()..update(updates))
          ._build();

  _$Gupdate_questionnaire_reponsesData._(
      {required this.G__typename, required this.updateHealthQuizResponses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_questionnaire_reponsesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateHealthQuizResponses,
        r'Gupdate_questionnaire_reponsesData', 'updateHealthQuizResponses');
  }

  @override
  Gupdate_questionnaire_reponsesData rebuild(
          void Function(Gupdate_questionnaire_reponsesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_questionnaire_reponsesDataBuilder toBuilder() =>
      new Gupdate_questionnaire_reponsesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_questionnaire_reponsesData &&
        G__typename == other.G__typename &&
        updateHealthQuizResponses == other.updateHealthQuizResponses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateHealthQuizResponses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_questionnaire_reponsesData')
          ..add('G__typename', G__typename)
          ..add('updateHealthQuizResponses', updateHealthQuizResponses))
        .toString();
  }
}

class Gupdate_questionnaire_reponsesDataBuilder
    implements
        Builder<Gupdate_questionnaire_reponsesData,
            Gupdate_questionnaire_reponsesDataBuilder> {
  _$Gupdate_questionnaire_reponsesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder?
      _updateHealthQuizResponses;
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
      get updateHealthQuizResponses => _$this._updateHealthQuizResponses ??=
          new Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder();
  set updateHealthQuizResponses(
          Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder?
              updateHealthQuizResponses) =>
      _$this._updateHealthQuizResponses = updateHealthQuizResponses;

  Gupdate_questionnaire_reponsesDataBuilder() {
    Gupdate_questionnaire_reponsesData._initializeBuilder(this);
  }

  Gupdate_questionnaire_reponsesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateHealthQuizResponses = $v.updateHealthQuizResponses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_questionnaire_reponsesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_questionnaire_reponsesData;
  }

  @override
  void update(
      void Function(Gupdate_questionnaire_reponsesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_questionnaire_reponsesData build() => _build();

  _$Gupdate_questionnaire_reponsesData _build() {
    _$Gupdate_questionnaire_reponsesData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_questionnaire_reponsesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_questionnaire_reponsesData', 'G__typename'),
              updateHealthQuizResponses: updateHealthQuizResponses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateHealthQuizResponses';
        updateHealthQuizResponses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_questionnaire_reponsesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
    extends Gupdate_questionnaire_reponsesData_updateHealthQuizResponses {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses(
          [void Function(
                  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder)?
              updates]) =>
      (new Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses',
        'success');
  }

  @override
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponses rebuild(
          void Function(
                  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
      toBuilder() =>
          new Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_questionnaire_reponsesData_updateHealthQuizResponses &&
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
            r'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
    implements
        Builder<Gupdate_questionnaire_reponsesData_updateHealthQuizResponses,
            Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder> {
  _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder() {
    Gupdate_questionnaire_reponsesData_updateHealthQuizResponses
        ._initializeBuilder(this);
  }

  Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gupdate_questionnaire_reponsesData_updateHealthQuizResponses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses;
  }

  @override
  void update(
      void Function(
              Gupdate_questionnaire_reponsesData_updateHealthQuizResponsesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_questionnaire_reponsesData_updateHealthQuizResponses build() =>
      _build();

  _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses _build() {
    final _$result = _$v ??
        new _$Gupdate_questionnaire_reponsesData_updateHealthQuizResponses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_questionnaire_reponsesData_updateHealthQuizResponses',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
