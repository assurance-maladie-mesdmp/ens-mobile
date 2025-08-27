// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_fetch_last_reports_information.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gfetch_last_reports_informationData>
    _$gfetchLastReportsInformationDataSerializer =
    new _$Gfetch_last_reports_informationDataSerializer();
Serializer<Gfetch_last_reports_informationData_fetchLastReportsInformation>
    _$gfetchLastReportsInformationDataFetchLastReportsInformationSerializer =
    new _$Gfetch_last_reports_informationData_fetchLastReportsInformationSerializer();

class _$Gfetch_last_reports_informationDataSerializer
    implements StructuredSerializer<Gfetch_last_reports_informationData> {
  @override
  final Iterable<Type> types = const [
    Gfetch_last_reports_informationData,
    _$Gfetch_last_reports_informationData
  ];
  @override
  final String wireName = 'Gfetch_last_reports_informationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gfetch_last_reports_informationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchLastReportsInformation',
      serializers.serialize(object.fetchLastReportsInformation,
          specifiedType: const FullType(
              Gfetch_last_reports_informationData_fetchLastReportsInformation)),
    ];

    return result;
  }

  @override
  Gfetch_last_reports_informationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gfetch_last_reports_informationDataBuilder();

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
        case 'fetchLastReportsInformation':
          result.fetchLastReportsInformation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gfetch_last_reports_informationData_fetchLastReportsInformation))!
              as Gfetch_last_reports_informationData_fetchLastReportsInformation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_last_reports_informationData_fetchLastReportsInformationSerializer
    implements
        StructuredSerializer<
            Gfetch_last_reports_informationData_fetchLastReportsInformation> {
  @override
  final Iterable<Type> types = const [
    Gfetch_last_reports_informationData_fetchLastReportsInformation,
    _$Gfetch_last_reports_informationData_fetchLastReportsInformation
  ];
  @override
  final String wireName =
      'Gfetch_last_reports_informationData_fetchLastReportsInformation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gfetch_last_reports_informationData_fetchLastReportsInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isReportLimitExceeded',
      serializers.serialize(object.isReportLimitExceeded,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.lastReport;
    if (value != null) {
      result
        ..add('lastReport')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gfetch_last_reports_informationData_fetchLastReportsInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder();

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
        case 'lastReport':
          result.lastReport = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isReportLimitExceeded':
          result.isReportLimitExceeded = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_last_reports_informationData
    extends Gfetch_last_reports_informationData {
  @override
  final String G__typename;
  @override
  final Gfetch_last_reports_informationData_fetchLastReportsInformation
      fetchLastReportsInformation;

  factory _$Gfetch_last_reports_informationData(
          [void Function(Gfetch_last_reports_informationDataBuilder)?
              updates]) =>
      (new Gfetch_last_reports_informationDataBuilder()..update(updates))
          ._build();

  _$Gfetch_last_reports_informationData._(
      {required this.G__typename, required this.fetchLastReportsInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gfetch_last_reports_informationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchLastReportsInformation,
        r'Gfetch_last_reports_informationData', 'fetchLastReportsInformation');
  }

  @override
  Gfetch_last_reports_informationData rebuild(
          void Function(Gfetch_last_reports_informationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_last_reports_informationDataBuilder toBuilder() =>
      new Gfetch_last_reports_informationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gfetch_last_reports_informationData &&
        G__typename == other.G__typename &&
        fetchLastReportsInformation == other.fetchLastReportsInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchLastReportsInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gfetch_last_reports_informationData')
          ..add('G__typename', G__typename)
          ..add('fetchLastReportsInformation', fetchLastReportsInformation))
        .toString();
  }
}

class Gfetch_last_reports_informationDataBuilder
    implements
        Builder<Gfetch_last_reports_informationData,
            Gfetch_last_reports_informationDataBuilder> {
  _$Gfetch_last_reports_informationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder?
      _fetchLastReportsInformation;
  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
      get fetchLastReportsInformation => _$this._fetchLastReportsInformation ??=
          new Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder();
  set fetchLastReportsInformation(
          Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder?
              fetchLastReportsInformation) =>
      _$this._fetchLastReportsInformation = fetchLastReportsInformation;

  Gfetch_last_reports_informationDataBuilder() {
    Gfetch_last_reports_informationData._initializeBuilder(this);
  }

  Gfetch_last_reports_informationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchLastReportsInformation = $v.fetchLastReportsInformation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gfetch_last_reports_informationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gfetch_last_reports_informationData;
  }

  @override
  void update(
      void Function(Gfetch_last_reports_informationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_last_reports_informationData build() => _build();

  _$Gfetch_last_reports_informationData _build() {
    _$Gfetch_last_reports_informationData _$result;
    try {
      _$result = _$v ??
          new _$Gfetch_last_reports_informationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gfetch_last_reports_informationData', 'G__typename'),
              fetchLastReportsInformation: fetchLastReportsInformation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchLastReportsInformation';
        fetchLastReportsInformation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gfetch_last_reports_informationData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gfetch_last_reports_informationData_fetchLastReportsInformation
    extends Gfetch_last_reports_informationData_fetchLastReportsInformation {
  @override
  final String G__typename;
  @override
  final String? lastReport;
  @override
  final bool isReportLimitExceeded;

  factory _$Gfetch_last_reports_informationData_fetchLastReportsInformation(
          [void Function(
                  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder)?
              updates]) =>
      (new Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder()
            ..update(updates))
          ._build();

  _$Gfetch_last_reports_informationData_fetchLastReportsInformation._(
      {required this.G__typename,
      this.lastReport,
      required this.isReportLimitExceeded})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gfetch_last_reports_informationData_fetchLastReportsInformation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isReportLimitExceeded,
        r'Gfetch_last_reports_informationData_fetchLastReportsInformation',
        'isReportLimitExceeded');
  }

  @override
  Gfetch_last_reports_informationData_fetchLastReportsInformation rebuild(
          void Function(
                  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
      toBuilder() =>
          new Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gfetch_last_reports_informationData_fetchLastReportsInformation &&
        G__typename == other.G__typename &&
        lastReport == other.lastReport &&
        isReportLimitExceeded == other.isReportLimitExceeded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastReport.hashCode);
    _$hash = $jc(_$hash, isReportLimitExceeded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gfetch_last_reports_informationData_fetchLastReportsInformation')
          ..add('G__typename', G__typename)
          ..add('lastReport', lastReport)
          ..add('isReportLimitExceeded', isReportLimitExceeded))
        .toString();
  }
}

class Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
    implements
        Builder<Gfetch_last_reports_informationData_fetchLastReportsInformation,
            Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder> {
  _$Gfetch_last_reports_informationData_fetchLastReportsInformation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastReport;
  String? get lastReport => _$this._lastReport;
  set lastReport(String? lastReport) => _$this._lastReport = lastReport;

  bool? _isReportLimitExceeded;
  bool? get isReportLimitExceeded => _$this._isReportLimitExceeded;
  set isReportLimitExceeded(bool? isReportLimitExceeded) =>
      _$this._isReportLimitExceeded = isReportLimitExceeded;

  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder() {
    Gfetch_last_reports_informationData_fetchLastReportsInformation
        ._initializeBuilder(this);
  }

  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastReport = $v.lastReport;
      _isReportLimitExceeded = $v.isReportLimitExceeded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gfetch_last_reports_informationData_fetchLastReportsInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gfetch_last_reports_informationData_fetchLastReportsInformation;
  }

  @override
  void update(
      void Function(
              Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_last_reports_informationData_fetchLastReportsInformation build() =>
      _build();

  _$Gfetch_last_reports_informationData_fetchLastReportsInformation _build() {
    final _$result = _$v ??
        new _$Gfetch_last_reports_informationData_fetchLastReportsInformation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gfetch_last_reports_informationData_fetchLastReportsInformation',
                'G__typename'),
            lastReport: lastReport,
            isReportLimitExceeded: BuiltValueNullFieldError.checkNotNull(
                isReportLimitExceeded,
                r'Gfetch_last_reports_informationData_fetchLastReportsInformation',
                'isReportLimitExceeded'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
