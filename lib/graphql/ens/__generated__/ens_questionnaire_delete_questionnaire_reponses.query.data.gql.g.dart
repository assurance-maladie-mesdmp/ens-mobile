// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_delete_questionnaire_reponses.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_questionnaire_reponsesData>
    _$gdeleteQuestionnaireReponsesDataSerializer =
    new _$Gdelete_questionnaire_reponsesDataSerializer();
Serializer<Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses>
    _$gdeleteQuestionnaireReponsesDataDeleteHealthQuizResponsesSerializer =
    new _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesSerializer();

class _$Gdelete_questionnaire_reponsesDataSerializer
    implements StructuredSerializer<Gdelete_questionnaire_reponsesData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_questionnaire_reponsesData,
    _$Gdelete_questionnaire_reponsesData
  ];
  @override
  final String wireName = 'Gdelete_questionnaire_reponsesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_questionnaire_reponsesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteHealthQuizResponses',
      serializers.serialize(object.deleteHealthQuizResponses,
          specifiedType: const FullType(
              Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses)),
    ];

    return result;
  }

  @override
  Gdelete_questionnaire_reponsesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_questionnaire_reponsesDataBuilder();

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
        case 'deleteHealthQuizResponses':
          result.deleteHealthQuizResponses.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses))!
              as Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesSerializer
    implements
        StructuredSerializer<
            Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses> {
  @override
  final Iterable<Type> types = const [
    Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses,
    _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
  ];
  @override
  final String wireName =
      'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses object,
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
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder();

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

class _$Gdelete_questionnaire_reponsesData
    extends Gdelete_questionnaire_reponsesData {
  @override
  final String G__typename;
  @override
  final Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
      deleteHealthQuizResponses;

  factory _$Gdelete_questionnaire_reponsesData(
          [void Function(Gdelete_questionnaire_reponsesDataBuilder)?
              updates]) =>
      (new Gdelete_questionnaire_reponsesDataBuilder()..update(updates))
          ._build();

  _$Gdelete_questionnaire_reponsesData._(
      {required this.G__typename, required this.deleteHealthQuizResponses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_questionnaire_reponsesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteHealthQuizResponses,
        r'Gdelete_questionnaire_reponsesData', 'deleteHealthQuizResponses');
  }

  @override
  Gdelete_questionnaire_reponsesData rebuild(
          void Function(Gdelete_questionnaire_reponsesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_questionnaire_reponsesDataBuilder toBuilder() =>
      new Gdelete_questionnaire_reponsesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_questionnaire_reponsesData &&
        G__typename == other.G__typename &&
        deleteHealthQuizResponses == other.deleteHealthQuizResponses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteHealthQuizResponses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_questionnaire_reponsesData')
          ..add('G__typename', G__typename)
          ..add('deleteHealthQuizResponses', deleteHealthQuizResponses))
        .toString();
  }
}

class Gdelete_questionnaire_reponsesDataBuilder
    implements
        Builder<Gdelete_questionnaire_reponsesData,
            Gdelete_questionnaire_reponsesDataBuilder> {
  _$Gdelete_questionnaire_reponsesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder?
      _deleteHealthQuizResponses;
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
      get deleteHealthQuizResponses => _$this._deleteHealthQuizResponses ??=
          new Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder();
  set deleteHealthQuizResponses(
          Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder?
              deleteHealthQuizResponses) =>
      _$this._deleteHealthQuizResponses = deleteHealthQuizResponses;

  Gdelete_questionnaire_reponsesDataBuilder() {
    Gdelete_questionnaire_reponsesData._initializeBuilder(this);
  }

  Gdelete_questionnaire_reponsesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteHealthQuizResponses = $v.deleteHealthQuizResponses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_questionnaire_reponsesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_questionnaire_reponsesData;
  }

  @override
  void update(
      void Function(Gdelete_questionnaire_reponsesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_questionnaire_reponsesData build() => _build();

  _$Gdelete_questionnaire_reponsesData _build() {
    _$Gdelete_questionnaire_reponsesData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_questionnaire_reponsesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_questionnaire_reponsesData', 'G__typename'),
              deleteHealthQuizResponses: deleteHealthQuizResponses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteHealthQuizResponses';
        deleteHealthQuizResponses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_questionnaire_reponsesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
    extends Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses(
          [void Function(
                  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder)?
              updates]) =>
      (new Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses',
        'success');
  }

  @override
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses rebuild(
          void Function(
                  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
      toBuilder() =>
          new Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses &&
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
            r'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
    implements
        Builder<Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses,
            Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder> {
  _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder() {
    Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses
        ._initializeBuilder(this);
  }

  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder
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
      Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses;
  }

  @override
  void update(
      void Function(
              Gdelete_questionnaire_reponsesData_deleteHealthQuizResponsesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses build() =>
      _build();

  _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses _build() {
    final _$result = _$v ??
        new _$Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_questionnaire_reponsesData_deleteHealthQuizResponses',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
