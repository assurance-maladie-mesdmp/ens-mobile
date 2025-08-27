// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_bilan_de_prevention_questionnaire.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GquestionnaireData> _$gquestionnaireDataSerializer =
    new _$GquestionnaireDataSerializer();
Serializer<GquestionnaireData_response> _$gquestionnaireDataResponseSerializer =
    new _$GquestionnaireData_responseSerializer();

class _$GquestionnaireDataSerializer
    implements StructuredSerializer<GquestionnaireData> {
  @override
  final Iterable<Type> types = const [GquestionnaireData, _$GquestionnaireData];
  @override
  final String wireName = 'GquestionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'lastVersion',
      serializers.serialize(object.lastVersion,
          specifiedType: const FullType(String)),
      'ageMin',
      serializers.serialize(object.ageMin,
          specifiedType: const FullType(double)),
      'ageMax',
      serializers.serialize(object.ageMax,
          specifiedType: const FullType(double)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'availableLimitDate',
      serializers.serialize(object.availableLimitDate,
          specifiedType: const FullType(String)),
      'availableLimitDateFormatted',
      serializers.serialize(object.availableLimitDateFormatted,
          specifiedType: const FullType(String)),
      'isEditable',
      serializers.serialize(object.isEditable,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GquestionnaireData_response)));
    }
    return result;
  }

  @override
  GquestionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionnaireDataBuilder();

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
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GquestionnaireData_response))!
              as GquestionnaireData_response);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastVersion':
          result.lastVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ageMin':
          result.ageMin = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ageMax':
          result.ageMax = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDate':
          result.availableLimitDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDateFormatted':
          result.availableLimitDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEditable':
          result.isEditable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GquestionnaireData_responseSerializer
    implements StructuredSerializer<GquestionnaireData_response> {
  @override
  final Iterable<Type> types = const [
    GquestionnaireData_response,
    _$GquestionnaireData_response
  ];
  @override
  final String wireName = 'GquestionnaireData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionnaireData_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i1.GHealthQuizCompletionStatus)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lastUpdateUserDateFormatted;
    if (value != null) {
      result
        ..add('lastUpdateUserDateFormatted')
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
  GquestionnaireData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionnaireData_responseBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHealthQuizCompletionStatus))!
              as _i1.GHealthQuizCompletionStatus;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdateUserDateFormatted':
          result.lastUpdateUserDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questionToDisplay':
          result.questionToDisplay = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GquestionnaireData extends GquestionnaireData {
  @override
  final String G__typename;
  @override
  final GquestionnaireData_response? response;
  @override
  final String code;
  @override
  final String lastVersion;
  @override
  final double ageMin;
  @override
  final double ageMax;
  @override
  final String title;
  @override
  final String availableLimitDate;
  @override
  final String availableLimitDateFormatted;
  @override
  final bool isEditable;

  factory _$GquestionnaireData(
          [void Function(GquestionnaireDataBuilder)? updates]) =>
      (new GquestionnaireDataBuilder()..update(updates))._build();

  _$GquestionnaireData._(
      {required this.G__typename,
      this.response,
      required this.code,
      required this.lastVersion,
      required this.ageMin,
      required this.ageMax,
      required this.title,
      required this.availableLimitDate,
      required this.availableLimitDateFormatted,
      required this.isEditable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionnaireData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GquestionnaireData', 'code');
    BuiltValueNullFieldError.checkNotNull(
        lastVersion, r'GquestionnaireData', 'lastVersion');
    BuiltValueNullFieldError.checkNotNull(
        ageMin, r'GquestionnaireData', 'ageMin');
    BuiltValueNullFieldError.checkNotNull(
        ageMax, r'GquestionnaireData', 'ageMax');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GquestionnaireData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDate, r'GquestionnaireData', 'availableLimitDate');
    BuiltValueNullFieldError.checkNotNull(availableLimitDateFormatted,
        r'GquestionnaireData', 'availableLimitDateFormatted');
    BuiltValueNullFieldError.checkNotNull(
        isEditable, r'GquestionnaireData', 'isEditable');
  }

  @override
  GquestionnaireData rebuild(
          void Function(GquestionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionnaireDataBuilder toBuilder() =>
      new GquestionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionnaireData &&
        G__typename == other.G__typename &&
        response == other.response &&
        code == other.code &&
        lastVersion == other.lastVersion &&
        ageMin == other.ageMin &&
        ageMax == other.ageMax &&
        title == other.title &&
        availableLimitDate == other.availableLimitDate &&
        availableLimitDateFormatted == other.availableLimitDateFormatted &&
        isEditable == other.isEditable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, lastVersion.hashCode);
    _$hash = $jc(_$hash, ageMin.hashCode);
    _$hash = $jc(_$hash, ageMax.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, availableLimitDate.hashCode);
    _$hash = $jc(_$hash, availableLimitDateFormatted.hashCode);
    _$hash = $jc(_$hash, isEditable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GquestionnaireData')
          ..add('G__typename', G__typename)
          ..add('response', response)
          ..add('code', code)
          ..add('lastVersion', lastVersion)
          ..add('ageMin', ageMin)
          ..add('ageMax', ageMax)
          ..add('title', title)
          ..add('availableLimitDate', availableLimitDate)
          ..add('availableLimitDateFormatted', availableLimitDateFormatted)
          ..add('isEditable', isEditable))
        .toString();
  }
}

class GquestionnaireDataBuilder
    implements Builder<GquestionnaireData, GquestionnaireDataBuilder> {
  _$GquestionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GquestionnaireData_responseBuilder? _response;
  GquestionnaireData_responseBuilder get response =>
      _$this._response ??= new GquestionnaireData_responseBuilder();
  set response(GquestionnaireData_responseBuilder? response) =>
      _$this._response = response;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _lastVersion;
  String? get lastVersion => _$this._lastVersion;
  set lastVersion(String? lastVersion) => _$this._lastVersion = lastVersion;

  double? _ageMin;
  double? get ageMin => _$this._ageMin;
  set ageMin(double? ageMin) => _$this._ageMin = ageMin;

  double? _ageMax;
  double? get ageMax => _$this._ageMax;
  set ageMax(double? ageMax) => _$this._ageMax = ageMax;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _availableLimitDate;
  String? get availableLimitDate => _$this._availableLimitDate;
  set availableLimitDate(String? availableLimitDate) =>
      _$this._availableLimitDate = availableLimitDate;

  String? _availableLimitDateFormatted;
  String? get availableLimitDateFormatted =>
      _$this._availableLimitDateFormatted;
  set availableLimitDateFormatted(String? availableLimitDateFormatted) =>
      _$this._availableLimitDateFormatted = availableLimitDateFormatted;

  bool? _isEditable;
  bool? get isEditable => _$this._isEditable;
  set isEditable(bool? isEditable) => _$this._isEditable = isEditable;

  GquestionnaireDataBuilder() {
    GquestionnaireData._initializeBuilder(this);
  }

  GquestionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _code = $v.code;
      _lastVersion = $v.lastVersion;
      _ageMin = $v.ageMin;
      _ageMax = $v.ageMax;
      _title = $v.title;
      _availableLimitDate = $v.availableLimitDate;
      _availableLimitDateFormatted = $v.availableLimitDateFormatted;
      _isEditable = $v.isEditable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GquestionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionnaireData;
  }

  @override
  void update(void Function(GquestionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionnaireData build() => _build();

  _$GquestionnaireData _build() {
    _$GquestionnaireData _$result;
    try {
      _$result = _$v ??
          new _$GquestionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GquestionnaireData', 'G__typename'),
              response: _response?.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GquestionnaireData', 'code'),
              lastVersion: BuiltValueNullFieldError.checkNotNull(
                  lastVersion, r'GquestionnaireData', 'lastVersion'),
              ageMin: BuiltValueNullFieldError.checkNotNull(
                  ageMin, r'GquestionnaireData', 'ageMin'),
              ageMax: BuiltValueNullFieldError.checkNotNull(
                  ageMax, r'GquestionnaireData', 'ageMax'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GquestionnaireData', 'title'),
              availableLimitDate: BuiltValueNullFieldError.checkNotNull(
                  availableLimitDate, r'GquestionnaireData', 'availableLimitDate'),
              availableLimitDateFormatted:
                  BuiltValueNullFieldError.checkNotNull(
                      availableLimitDateFormatted,
                      r'GquestionnaireData',
                      'availableLimitDateFormatted'),
              isEditable: BuiltValueNullFieldError.checkNotNull(isEditable, r'GquestionnaireData', 'isEditable'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GquestionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GquestionnaireData_response extends GquestionnaireData_response {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String version;
  @override
  final _i1.GHealthQuizCompletionStatus status;
  @override
  final String lastUpdateUserDate;
  @override
  final String? lastUpdateUserDateFormatted;
  @override
  final double? questionToDisplay;

  factory _$GquestionnaireData_response(
          [void Function(GquestionnaireData_responseBuilder)? updates]) =>
      (new GquestionnaireData_responseBuilder()..update(updates))._build();

  _$GquestionnaireData_response._(
      {required this.G__typename,
      required this.id,
      required this.version,
      required this.status,
      required this.lastUpdateUserDate,
      this.lastUpdateUserDateFormatted,
      this.questionToDisplay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionnaireData_response', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GquestionnaireData_response', 'id');
    BuiltValueNullFieldError.checkNotNull(
        version, r'GquestionnaireData_response', 'version');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GquestionnaireData_response', 'status');
    BuiltValueNullFieldError.checkNotNull(lastUpdateUserDate,
        r'GquestionnaireData_response', 'lastUpdateUserDate');
  }

  @override
  GquestionnaireData_response rebuild(
          void Function(GquestionnaireData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionnaireData_responseBuilder toBuilder() =>
      new GquestionnaireData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionnaireData_response &&
        G__typename == other.G__typename &&
        id == other.id &&
        version == other.version &&
        status == other.status &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        lastUpdateUserDateFormatted == other.lastUpdateUserDateFormatted &&
        questionToDisplay == other.questionToDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDateFormatted.hashCode);
    _$hash = $jc(_$hash, questionToDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GquestionnaireData_response')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('version', version)
          ..add('status', status)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('lastUpdateUserDateFormatted', lastUpdateUserDateFormatted)
          ..add('questionToDisplay', questionToDisplay))
        .toString();
  }
}

class GquestionnaireData_responseBuilder
    implements
        Builder<GquestionnaireData_response,
            GquestionnaireData_responseBuilder> {
  _$GquestionnaireData_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  _i1.GHealthQuizCompletionStatus? _status;
  _i1.GHealthQuizCompletionStatus? get status => _$this._status;
  set status(_i1.GHealthQuizCompletionStatus? status) =>
      _$this._status = status;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  String? _lastUpdateUserDateFormatted;
  String? get lastUpdateUserDateFormatted =>
      _$this._lastUpdateUserDateFormatted;
  set lastUpdateUserDateFormatted(String? lastUpdateUserDateFormatted) =>
      _$this._lastUpdateUserDateFormatted = lastUpdateUserDateFormatted;

  double? _questionToDisplay;
  double? get questionToDisplay => _$this._questionToDisplay;
  set questionToDisplay(double? questionToDisplay) =>
      _$this._questionToDisplay = questionToDisplay;

  GquestionnaireData_responseBuilder() {
    GquestionnaireData_response._initializeBuilder(this);
  }

  GquestionnaireData_responseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _version = $v.version;
      _status = $v.status;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _lastUpdateUserDateFormatted = $v.lastUpdateUserDateFormatted;
      _questionToDisplay = $v.questionToDisplay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GquestionnaireData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionnaireData_response;
  }

  @override
  void update(void Function(GquestionnaireData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionnaireData_response build() => _build();

  _$GquestionnaireData_response _build() {
    final _$result = _$v ??
        new _$GquestionnaireData_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GquestionnaireData_response', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GquestionnaireData_response', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'GquestionnaireData_response', 'version'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'GquestionnaireData_response', 'status'),
            lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                lastUpdateUserDate,
                r'GquestionnaireData_response',
                'lastUpdateUserDate'),
            lastUpdateUserDateFormatted: lastUpdateUserDateFormatted,
            questionToDisplay: questionToDisplay);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
