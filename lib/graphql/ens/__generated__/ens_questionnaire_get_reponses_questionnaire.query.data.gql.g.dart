// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_reponses_questionnaire.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_reponses_questionnaireData>
    _$ggetReponsesQuestionnaireDataSerializer =
    new _$Gget_reponses_questionnaireDataSerializer();
Serializer<Gget_reponses_questionnaireData_getHealthQuizResponses>
    _$ggetReponsesQuestionnaireDataGetHealthQuizResponsesSerializer =
    new _$Gget_reponses_questionnaireData_getHealthQuizResponsesSerializer();
Serializer<Gget_reponses_questionnaireData_getHealthQuizResponses_details>
    _$ggetReponsesQuestionnaireDataGetHealthQuizResponsesDetailsSerializer =
    new _$Gget_reponses_questionnaireData_getHealthQuizResponses_detailsSerializer();

class _$Gget_reponses_questionnaireDataSerializer
    implements StructuredSerializer<Gget_reponses_questionnaireData> {
  @override
  final Iterable<Type> types = const [
    Gget_reponses_questionnaireData,
    _$Gget_reponses_questionnaireData
  ];
  @override
  final String wireName = 'Gget_reponses_questionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_reponses_questionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getHealthQuizResponses;
    if (value != null) {
      result
        ..add('getHealthQuizResponses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_reponses_questionnaireData_getHealthQuizResponses)));
    }
    return result;
  }

  @override
  Gget_reponses_questionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_reponses_questionnaireDataBuilder();

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
        case 'getHealthQuizResponses':
          result.getHealthQuizResponses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_reponses_questionnaireData_getHealthQuizResponses))!
              as Gget_reponses_questionnaireData_getHealthQuizResponses);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_reponses_questionnaireData_getHealthQuizResponsesSerializer
    implements
        StructuredSerializer<
            Gget_reponses_questionnaireData_getHealthQuizResponses> {
  @override
  final Iterable<Type> types = const [
    Gget_reponses_questionnaireData_getHealthQuizResponses,
    _$Gget_reponses_questionnaireData_getHealthQuizResponses
  ];
  @override
  final String wireName =
      'Gget_reponses_questionnaireData_getHealthQuizResponses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_reponses_questionnaireData_getHealthQuizResponses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GHealthQuizCompletionStatus)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_reponses_questionnaireData_getHealthQuizResponses_details)
          ])),
    ];
    Object? value;
    value = object.responseId;
    if (value != null) {
      result
        ..add('responseId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questionToDisplay;
    if (value != null) {
      result
        ..add('questionToDisplay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GHealthQuizCompletionStatus))!
              as _i2.GHealthQuizCompletionStatus;
          break;
        case 'responseId':
          result.responseId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questionToDisplay':
          result.questionToDisplay = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_reponses_questionnaireData_getHealthQuizResponses_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_reponses_questionnaireData_getHealthQuizResponses_detailsSerializer
    implements
        StructuredSerializer<
            Gget_reponses_questionnaireData_getHealthQuizResponses_details> {
  @override
  final Iterable<Type> types = const [
    Gget_reponses_questionnaireData_getHealthQuizResponses_details,
    _$Gget_reponses_questionnaireData_getHealthQuizResponses_details
  ];
  @override
  final String wireName =
      'Gget_reponses_questionnaireData_getHealthQuizResponses_details';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_reponses_questionnaireData_getHealthQuizResponses_details object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'questionCode',
      serializers.serialize(object.questionCode,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses_details deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder();

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
        case 'questionCode':
          result.questionCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_reponses_questionnaireData
    extends Gget_reponses_questionnaireData {
  @override
  final String G__typename;
  @override
  final Gget_reponses_questionnaireData_getHealthQuizResponses?
      getHealthQuizResponses;

  factory _$Gget_reponses_questionnaireData(
          [void Function(Gget_reponses_questionnaireDataBuilder)? updates]) =>
      (new Gget_reponses_questionnaireDataBuilder()..update(updates))._build();

  _$Gget_reponses_questionnaireData._(
      {required this.G__typename, this.getHealthQuizResponses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_reponses_questionnaireData', 'G__typename');
  }

  @override
  Gget_reponses_questionnaireData rebuild(
          void Function(Gget_reponses_questionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_reponses_questionnaireDataBuilder toBuilder() =>
      new Gget_reponses_questionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_reponses_questionnaireData &&
        G__typename == other.G__typename &&
        getHealthQuizResponses == other.getHealthQuizResponses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthQuizResponses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_reponses_questionnaireData')
          ..add('G__typename', G__typename)
          ..add('getHealthQuizResponses', getHealthQuizResponses))
        .toString();
  }
}

class Gget_reponses_questionnaireDataBuilder
    implements
        Builder<Gget_reponses_questionnaireData,
            Gget_reponses_questionnaireDataBuilder> {
  _$Gget_reponses_questionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder?
      _getHealthQuizResponses;
  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder
      get getHealthQuizResponses => _$this._getHealthQuizResponses ??=
          new Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder();
  set getHealthQuizResponses(
          Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder?
              getHealthQuizResponses) =>
      _$this._getHealthQuizResponses = getHealthQuizResponses;

  Gget_reponses_questionnaireDataBuilder() {
    Gget_reponses_questionnaireData._initializeBuilder(this);
  }

  Gget_reponses_questionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthQuizResponses = $v.getHealthQuizResponses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_reponses_questionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_reponses_questionnaireData;
  }

  @override
  void update(void Function(Gget_reponses_questionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_reponses_questionnaireData build() => _build();

  _$Gget_reponses_questionnaireData _build() {
    _$Gget_reponses_questionnaireData _$result;
    try {
      _$result = _$v ??
          new _$Gget_reponses_questionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_reponses_questionnaireData', 'G__typename'),
              getHealthQuizResponses: _getHealthQuizResponses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthQuizResponses';
        _getHealthQuizResponses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_reponses_questionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_reponses_questionnaireData_getHealthQuizResponses
    extends Gget_reponses_questionnaireData_getHealthQuizResponses {
  @override
  final String G__typename;
  @override
  final _i2.GHealthQuizCompletionStatus status;
  @override
  final String? responseId;
  @override
  final double? questionToDisplay;
  @override
  final String lastUpdateUserDate;
  @override
  final BuiltList<
      Gget_reponses_questionnaireData_getHealthQuizResponses_details> details;

  factory _$Gget_reponses_questionnaireData_getHealthQuizResponses(
          [void Function(
                  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder)?
              updates]) =>
      (new Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder()
            ..update(updates))
          ._build();

  _$Gget_reponses_questionnaireData_getHealthQuizResponses._(
      {required this.G__typename,
      required this.status,
      this.responseId,
      this.questionToDisplay,
      required this.lastUpdateUserDate,
      required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(status,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses', 'status');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateUserDate,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses',
        'lastUpdateUserDate');
    BuiltValueNullFieldError.checkNotNull(details,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses', 'details');
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses rebuild(
          void Function(
                  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder toBuilder() =>
      new Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_reponses_questionnaireData_getHealthQuizResponses &&
        G__typename == other.G__typename &&
        status == other.status &&
        responseId == other.responseId &&
        questionToDisplay == other.questionToDisplay &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, responseId.hashCode);
    _$hash = $jc(_$hash, questionToDisplay.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_reponses_questionnaireData_getHealthQuizResponses')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('responseId', responseId)
          ..add('questionToDisplay', questionToDisplay)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('details', details))
        .toString();
  }
}

class Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder
    implements
        Builder<Gget_reponses_questionnaireData_getHealthQuizResponses,
            Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder> {
  _$Gget_reponses_questionnaireData_getHealthQuizResponses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GHealthQuizCompletionStatus? _status;
  _i2.GHealthQuizCompletionStatus? get status => _$this._status;
  set status(_i2.GHealthQuizCompletionStatus? status) =>
      _$this._status = status;

  String? _responseId;
  String? get responseId => _$this._responseId;
  set responseId(String? responseId) => _$this._responseId = responseId;

  double? _questionToDisplay;
  double? get questionToDisplay => _$this._questionToDisplay;
  set questionToDisplay(double? questionToDisplay) =>
      _$this._questionToDisplay = questionToDisplay;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  ListBuilder<Gget_reponses_questionnaireData_getHealthQuizResponses_details>?
      _details;
  ListBuilder<Gget_reponses_questionnaireData_getHealthQuizResponses_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_reponses_questionnaireData_getHealthQuizResponses_details>();
  set details(
          ListBuilder<
                  Gget_reponses_questionnaireData_getHealthQuizResponses_details>?
              details) =>
      _$this._details = details;

  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder() {
    Gget_reponses_questionnaireData_getHealthQuizResponses._initializeBuilder(
        this);
  }

  Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _responseId = $v.responseId;
      _questionToDisplay = $v.questionToDisplay;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_reponses_questionnaireData_getHealthQuizResponses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_reponses_questionnaireData_getHealthQuizResponses;
  }

  @override
  void update(
      void Function(
              Gget_reponses_questionnaireData_getHealthQuizResponsesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses build() => _build();

  _$Gget_reponses_questionnaireData_getHealthQuizResponses _build() {
    _$Gget_reponses_questionnaireData_getHealthQuizResponses _$result;
    try {
      _$result = _$v ??
          new _$Gget_reponses_questionnaireData_getHealthQuizResponses._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_reponses_questionnaireData_getHealthQuizResponses',
                  'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status,
                  r'Gget_reponses_questionnaireData_getHealthQuizResponses',
                  'status'),
              responseId: responseId,
              questionToDisplay: questionToDisplay,
              lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                  lastUpdateUserDate,
                  r'Gget_reponses_questionnaireData_getHealthQuizResponses',
                  'lastUpdateUserDate'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_reponses_questionnaireData_getHealthQuizResponses',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_reponses_questionnaireData_getHealthQuizResponses_details
    extends Gget_reponses_questionnaireData_getHealthQuizResponses_details {
  @override
  final String G__typename;
  @override
  final String questionCode;
  @override
  final BuiltList<String> value;

  factory _$Gget_reponses_questionnaireData_getHealthQuizResponses_details(
          [void Function(
                  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder)?
              updates]) =>
      (new Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_reponses_questionnaireData_getHealthQuizResponses_details._(
      {required this.G__typename,
      required this.questionCode,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        questionCode,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
        'questionCode');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
        'value');
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses_details rebuild(
          void Function(
                  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder
      toBuilder() =>
          new Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_reponses_questionnaireData_getHealthQuizResponses_details &&
        G__typename == other.G__typename &&
        questionCode == other.questionCode &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, questionCode.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_reponses_questionnaireData_getHealthQuizResponses_details')
          ..add('G__typename', G__typename)
          ..add('questionCode', questionCode)
          ..add('value', value))
        .toString();
  }
}

class Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder
    implements
        Builder<Gget_reponses_questionnaireData_getHealthQuizResponses_details,
            Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder> {
  _$Gget_reponses_questionnaireData_getHealthQuizResponses_details? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _questionCode;
  String? get questionCode => _$this._questionCode;
  set questionCode(String? questionCode) => _$this._questionCode = questionCode;

  ListBuilder<String>? _value;
  ListBuilder<String> get value => _$this._value ??= new ListBuilder<String>();
  set value(ListBuilder<String>? value) => _$this._value = value;

  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder() {
    Gget_reponses_questionnaireData_getHealthQuizResponses_details
        ._initializeBuilder(this);
  }

  Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _questionCode = $v.questionCode;
      _value = $v.value.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_reponses_questionnaireData_getHealthQuizResponses_details other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_reponses_questionnaireData_getHealthQuizResponses_details;
  }

  @override
  void update(
      void Function(
              Gget_reponses_questionnaireData_getHealthQuizResponses_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_reponses_questionnaireData_getHealthQuizResponses_details build() =>
      _build();

  _$Gget_reponses_questionnaireData_getHealthQuizResponses_details _build() {
    _$Gget_reponses_questionnaireData_getHealthQuizResponses_details _$result;
    try {
      _$result = _$v ??
          new _$Gget_reponses_questionnaireData_getHealthQuizResponses_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
                  'G__typename'),
              questionCode: BuiltValueNullFieldError.checkNotNull(
                  questionCode,
                  r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
                  'questionCode'),
              value: value.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        value.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_reponses_questionnaireData_getHealthQuizResponses_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
