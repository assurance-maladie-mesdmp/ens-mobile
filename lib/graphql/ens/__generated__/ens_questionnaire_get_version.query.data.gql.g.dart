// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_version.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_version_questionnaireData>
    _$ggetVersionQuestionnaireDataSerializer =
    new _$Gget_version_questionnaireDataSerializer();
Serializer<Gget_version_questionnaireData_getHealthQuizCodeVersion>
    _$ggetVersionQuestionnaireDataGetHealthQuizCodeVersionSerializer =
    new _$Gget_version_questionnaireData_getHealthQuizCodeVersionSerializer();

class _$Gget_version_questionnaireDataSerializer
    implements StructuredSerializer<Gget_version_questionnaireData> {
  @override
  final Iterable<Type> types = const [
    Gget_version_questionnaireData,
    _$Gget_version_questionnaireData
  ];
  @override
  final String wireName = 'Gget_version_questionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_version_questionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getHealthQuizCodeVersion;
    if (value != null) {
      result
        ..add('getHealthQuizCodeVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_version_questionnaireData_getHealthQuizCodeVersion)));
    }
    return result;
  }

  @override
  Gget_version_questionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_version_questionnaireDataBuilder();

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
        case 'getHealthQuizCodeVersion':
          result.getHealthQuizCodeVersion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_version_questionnaireData_getHealthQuizCodeVersion))!
              as Gget_version_questionnaireData_getHealthQuizCodeVersion);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_version_questionnaireData_getHealthQuizCodeVersionSerializer
    implements
        StructuredSerializer<
            Gget_version_questionnaireData_getHealthQuizCodeVersion> {
  @override
  final Iterable<Type> types = const [
    Gget_version_questionnaireData_getHealthQuizCodeVersion,
    _$Gget_version_questionnaireData_getHealthQuizCodeVersion
  ];
  @override
  final String wireName =
      'Gget_version_questionnaireData_getHealthQuizCodeVersion';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_version_questionnaireData_getHealthQuizCodeVersion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.savedVersion;
    if (value != null) {
      result
        ..add('savedVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newVersion;
    if (value != null) {
      result
        ..add('newVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.responseId;
    if (value != null) {
      result
        ..add('responseId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_version_questionnaireData_getHealthQuizCodeVersion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'savedVersion':
          result.savedVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'newVersion':
          result.newVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'responseId':
          result.responseId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_version_questionnaireData extends Gget_version_questionnaireData {
  @override
  final String G__typename;
  @override
  final Gget_version_questionnaireData_getHealthQuizCodeVersion?
      getHealthQuizCodeVersion;

  factory _$Gget_version_questionnaireData(
          [void Function(Gget_version_questionnaireDataBuilder)? updates]) =>
      (new Gget_version_questionnaireDataBuilder()..update(updates))._build();

  _$Gget_version_questionnaireData._(
      {required this.G__typename, this.getHealthQuizCodeVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_version_questionnaireData', 'G__typename');
  }

  @override
  Gget_version_questionnaireData rebuild(
          void Function(Gget_version_questionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_version_questionnaireDataBuilder toBuilder() =>
      new Gget_version_questionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_version_questionnaireData &&
        G__typename == other.G__typename &&
        getHealthQuizCodeVersion == other.getHealthQuizCodeVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthQuizCodeVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_version_questionnaireData')
          ..add('G__typename', G__typename)
          ..add('getHealthQuizCodeVersion', getHealthQuizCodeVersion))
        .toString();
  }
}

class Gget_version_questionnaireDataBuilder
    implements
        Builder<Gget_version_questionnaireData,
            Gget_version_questionnaireDataBuilder> {
  _$Gget_version_questionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder?
      _getHealthQuizCodeVersion;
  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder
      get getHealthQuizCodeVersion => _$this._getHealthQuizCodeVersion ??=
          new Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder();
  set getHealthQuizCodeVersion(
          Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder?
              getHealthQuizCodeVersion) =>
      _$this._getHealthQuizCodeVersion = getHealthQuizCodeVersion;

  Gget_version_questionnaireDataBuilder() {
    Gget_version_questionnaireData._initializeBuilder(this);
  }

  Gget_version_questionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthQuizCodeVersion = $v.getHealthQuizCodeVersion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_version_questionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_version_questionnaireData;
  }

  @override
  void update(void Function(Gget_version_questionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_version_questionnaireData build() => _build();

  _$Gget_version_questionnaireData _build() {
    _$Gget_version_questionnaireData _$result;
    try {
      _$result = _$v ??
          new _$Gget_version_questionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_version_questionnaireData', 'G__typename'),
              getHealthQuizCodeVersion: _getHealthQuizCodeVersion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthQuizCodeVersion';
        _getHealthQuizCodeVersion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_version_questionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_version_questionnaireData_getHealthQuizCodeVersion
    extends Gget_version_questionnaireData_getHealthQuizCodeVersion {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String? savedVersion;
  @override
  final String? newVersion;
  @override
  final String? responseId;

  factory _$Gget_version_questionnaireData_getHealthQuizCodeVersion(
          [void Function(
                  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder)?
              updates]) =>
      (new Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder()
            ..update(updates))
          ._build();

  _$Gget_version_questionnaireData_getHealthQuizCodeVersion._(
      {required this.G__typename,
      required this.code,
      this.savedVersion,
      this.newVersion,
      this.responseId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_version_questionnaireData_getHealthQuizCodeVersion',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(code,
        r'Gget_version_questionnaireData_getHealthQuizCodeVersion', 'code');
  }

  @override
  Gget_version_questionnaireData_getHealthQuizCodeVersion rebuild(
          void Function(
                  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder toBuilder() =>
      new Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_version_questionnaireData_getHealthQuizCodeVersion &&
        G__typename == other.G__typename &&
        code == other.code &&
        savedVersion == other.savedVersion &&
        newVersion == other.newVersion &&
        responseId == other.responseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, savedVersion.hashCode);
    _$hash = $jc(_$hash, newVersion.hashCode);
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_version_questionnaireData_getHealthQuizCodeVersion')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('savedVersion', savedVersion)
          ..add('newVersion', newVersion)
          ..add('responseId', responseId))
        .toString();
  }
}

class Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder
    implements
        Builder<Gget_version_questionnaireData_getHealthQuizCodeVersion,
            Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder> {
  _$Gget_version_questionnaireData_getHealthQuizCodeVersion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _savedVersion;
  String? get savedVersion => _$this._savedVersion;
  set savedVersion(String? savedVersion) => _$this._savedVersion = savedVersion;

  String? _newVersion;
  String? get newVersion => _$this._newVersion;
  set newVersion(String? newVersion) => _$this._newVersion = newVersion;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder() {
    Gget_version_questionnaireData_getHealthQuizCodeVersion._initializeBuilder(
        this);
  }

  Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _savedVersion = $v.savedVersion;
      _newVersion = $v.newVersion;
      _responseId = $v.responseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_version_questionnaireData_getHealthQuizCodeVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_version_questionnaireData_getHealthQuizCodeVersion;
  }

  @override
  void update(
      void Function(
              Gget_version_questionnaireData_getHealthQuizCodeVersionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_version_questionnaireData_getHealthQuizCodeVersion build() => _build();

  _$Gget_version_questionnaireData_getHealthQuizCodeVersion _build() {
    final _$result = _$v ??
        new _$Gget_version_questionnaireData_getHealthQuizCodeVersion._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_version_questionnaireData_getHealthQuizCodeVersion',
                'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code,
                r'Gget_version_questionnaireData_getHealthQuizCodeVersion',
                'code'),
            savedVersion: savedVersion,
            newVersion: newVersion,
            responseId: responseId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
