// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_synthese_questionnaire.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnaire_syntheseData>
    _$ggetQuestionnaireSyntheseDataSerializer =
    new _$Gget_questionnaire_syntheseDataSerializer();
Serializer<Gget_questionnaire_syntheseData_getHealthQuizPDF>
    _$ggetQuestionnaireSyntheseDataGetHealthQuizPDFSerializer =
    new _$Gget_questionnaire_syntheseData_getHealthQuizPDFSerializer();

class _$Gget_questionnaire_syntheseDataSerializer
    implements StructuredSerializer<Gget_questionnaire_syntheseData> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaire_syntheseData,
    _$Gget_questionnaire_syntheseData
  ];
  @override
  final String wireName = 'Gget_questionnaire_syntheseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnaire_syntheseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthQuizPDF',
      serializers.serialize(object.getHealthQuizPDF,
          specifiedType:
              const FullType(Gget_questionnaire_syntheseData_getHealthQuizPDF)),
    ];

    return result;
  }

  @override
  Gget_questionnaire_syntheseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaire_syntheseDataBuilder();

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
        case 'getHealthQuizPDF':
          result.getHealthQuizPDF.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaire_syntheseData_getHealthQuizPDF))!
              as Gget_questionnaire_syntheseData_getHealthQuizPDF);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaire_syntheseData_getHealthQuizPDFSerializer
    implements
        StructuredSerializer<Gget_questionnaire_syntheseData_getHealthQuizPDF> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaire_syntheseData_getHealthQuizPDF,
    _$Gget_questionnaire_syntheseData_getHealthQuizPDF
  ];
  @override
  final String wireName = 'Gget_questionnaire_syntheseData_getHealthQuizPDF';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaire_syntheseData_getHealthQuizPDF object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'mimeType',
      serializers.serialize(object.mimeType,
          specifiedType: const FullType(String)),
      'binary',
      serializers.serialize(object.binary,
          specifiedType: const FullType(String)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
      'responseId',
      serializers.serialize(object.responseId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaire_syntheseData_getHealthQuizPDF deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mimeType':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'binary':
          result.binary = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$Gget_questionnaire_syntheseData
    extends Gget_questionnaire_syntheseData {
  @override
  final String G__typename;
  @override
  final Gget_questionnaire_syntheseData_getHealthQuizPDF getHealthQuizPDF;

  factory _$Gget_questionnaire_syntheseData(
          [void Function(Gget_questionnaire_syntheseDataBuilder)? updates]) =>
      (new Gget_questionnaire_syntheseDataBuilder()..update(updates))._build();

  _$Gget_questionnaire_syntheseData._(
      {required this.G__typename, required this.getHealthQuizPDF})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_questionnaire_syntheseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getHealthQuizPDF,
        r'Gget_questionnaire_syntheseData', 'getHealthQuizPDF');
  }

  @override
  Gget_questionnaire_syntheseData rebuild(
          void Function(Gget_questionnaire_syntheseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaire_syntheseDataBuilder toBuilder() =>
      new Gget_questionnaire_syntheseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaire_syntheseData &&
        G__typename == other.G__typename &&
        getHealthQuizPDF == other.getHealthQuizPDF;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthQuizPDF.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_questionnaire_syntheseData')
          ..add('G__typename', G__typename)
          ..add('getHealthQuizPDF', getHealthQuizPDF))
        .toString();
  }
}

class Gget_questionnaire_syntheseDataBuilder
    implements
        Builder<Gget_questionnaire_syntheseData,
            Gget_questionnaire_syntheseDataBuilder> {
  _$Gget_questionnaire_syntheseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder? _getHealthQuizPDF;
  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder
      get getHealthQuizPDF => _$this._getHealthQuizPDF ??=
          new Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder();
  set getHealthQuizPDF(
          Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder?
              getHealthQuizPDF) =>
      _$this._getHealthQuizPDF = getHealthQuizPDF;

  Gget_questionnaire_syntheseDataBuilder() {
    Gget_questionnaire_syntheseData._initializeBuilder(this);
  }

  Gget_questionnaire_syntheseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthQuizPDF = $v.getHealthQuizPDF.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaire_syntheseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaire_syntheseData;
  }

  @override
  void update(void Function(Gget_questionnaire_syntheseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaire_syntheseData build() => _build();

  _$Gget_questionnaire_syntheseData _build() {
    _$Gget_questionnaire_syntheseData _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaire_syntheseData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_questionnaire_syntheseData', 'G__typename'),
              getHealthQuizPDF: getHealthQuizPDF.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthQuizPDF';
        getHealthQuizPDF.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaire_syntheseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaire_syntheseData_getHealthQuizPDF
    extends Gget_questionnaire_syntheseData_getHealthQuizPDF {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String mimeType;
  @override
  final String binary;
  @override
  final String lastUpdateUserDate;
  @override
  final String responseId;

  factory _$Gget_questionnaire_syntheseData_getHealthQuizPDF(
          [void Function(
                  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder)?
              updates]) =>
      (new Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaire_syntheseData_getHealthQuizPDF._(
      {required this.G__typename,
      required this.name,
      required this.mimeType,
      required this.binary,
      required this.lastUpdateUserDate,
      required this.responseId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'name');
    BuiltValueNullFieldError.checkNotNull(mimeType,
        r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'mimeType');
    BuiltValueNullFieldError.checkNotNull(
        binary, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'binary');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateUserDate,
        r'Gget_questionnaire_syntheseData_getHealthQuizPDF',
        'lastUpdateUserDate');
    BuiltValueNullFieldError.checkNotNull(responseId,
        r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'responseId');
  }

  @override
  Gget_questionnaire_syntheseData_getHealthQuizPDF rebuild(
          void Function(Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder toBuilder() =>
      new Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaire_syntheseData_getHealthQuizPDF &&
        G__typename == other.G__typename &&
        name == other.name &&
        mimeType == other.mimeType &&
        binary == other.binary &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        responseId == other.responseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, binary.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaire_syntheseData_getHealthQuizPDF')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('mimeType', mimeType)
          ..add('binary', binary)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('responseId', responseId))
        .toString();
  }
}

class Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder
    implements
        Builder<Gget_questionnaire_syntheseData_getHealthQuizPDF,
            Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder> {
  _$Gget_questionnaire_syntheseData_getHealthQuizPDF? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _binary;
  String? get binary => _$this._binary;
  set binary(String? binary) => _$this._binary = binary;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder() {
    Gget_questionnaire_syntheseData_getHealthQuizPDF._initializeBuilder(this);
  }

  Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _mimeType = $v.mimeType;
      _binary = $v.binary;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _responseId = $v.responseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaire_syntheseData_getHealthQuizPDF other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaire_syntheseData_getHealthQuizPDF;
  }

  @override
  void update(
      void Function(Gget_questionnaire_syntheseData_getHealthQuizPDFBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaire_syntheseData_getHealthQuizPDF build() => _build();

  _$Gget_questionnaire_syntheseData_getHealthQuizPDF _build() {
    final _$result = _$v ??
        new _$Gget_questionnaire_syntheseData_getHealthQuizPDF._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaire_syntheseData_getHealthQuizPDF',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'name'),
            mimeType: BuiltValueNullFieldError.checkNotNull(
                mimeType, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'mimeType'),
            binary: BuiltValueNullFieldError.checkNotNull(
                binary, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'binary'),
            lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                lastUpdateUserDate,
                r'Gget_questionnaire_syntheseData_getHealthQuizPDF',
                'lastUpdateUserDate'),
            responseId: BuiltValueNullFieldError.checkNotNull(
                responseId, r'Gget_questionnaire_syntheseData_getHealthQuizPDF', 'responseId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
