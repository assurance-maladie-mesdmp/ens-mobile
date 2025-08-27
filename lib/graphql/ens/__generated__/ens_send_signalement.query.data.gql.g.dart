// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_send_signalement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_signalementData> _$gsendSignalementDataSerializer =
    new _$Gsend_signalementDataSerializer();
Serializer<Gsend_signalementData_sendReport>
    _$gsendSignalementDataSendReportSerializer =
    new _$Gsend_signalementData_sendReportSerializer();

class _$Gsend_signalementDataSerializer
    implements StructuredSerializer<Gsend_signalementData> {
  @override
  final Iterable<Type> types = const [
    Gsend_signalementData,
    _$Gsend_signalementData
  ];
  @override
  final String wireName = 'Gsend_signalementData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_signalementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendReport',
      serializers.serialize(object.sendReport,
          specifiedType: const FullType(Gsend_signalementData_sendReport)),
    ];

    return result;
  }

  @override
  Gsend_signalementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_signalementDataBuilder();

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
        case 'sendReport':
          result.sendReport.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gsend_signalementData_sendReport))!
              as Gsend_signalementData_sendReport);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_signalementData_sendReportSerializer
    implements StructuredSerializer<Gsend_signalementData_sendReport> {
  @override
  final Iterable<Type> types = const [
    Gsend_signalementData_sendReport,
    _$Gsend_signalementData_sendReport
  ];
  @override
  final String wireName = 'Gsend_signalementData_sendReport';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_signalementData_sendReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.errorCode;
    if (value != null) {
      result
        ..add('errorCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gsend_signalementData_sendReport deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_signalementData_sendReportBuilder();

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
        case 'errorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_signalementData extends Gsend_signalementData {
  @override
  final String G__typename;
  @override
  final Gsend_signalementData_sendReport sendReport;

  factory _$Gsend_signalementData(
          [void Function(Gsend_signalementDataBuilder)? updates]) =>
      (new Gsend_signalementDataBuilder()..update(updates))._build();

  _$Gsend_signalementData._(
      {required this.G__typename, required this.sendReport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_signalementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sendReport, r'Gsend_signalementData', 'sendReport');
  }

  @override
  Gsend_signalementData rebuild(
          void Function(Gsend_signalementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_signalementDataBuilder toBuilder() =>
      new Gsend_signalementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_signalementData &&
        G__typename == other.G__typename &&
        sendReport == other.sendReport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendReport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_signalementData')
          ..add('G__typename', G__typename)
          ..add('sendReport', sendReport))
        .toString();
  }
}

class Gsend_signalementDataBuilder
    implements Builder<Gsend_signalementData, Gsend_signalementDataBuilder> {
  _$Gsend_signalementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_signalementData_sendReportBuilder? _sendReport;
  Gsend_signalementData_sendReportBuilder get sendReport =>
      _$this._sendReport ??= new Gsend_signalementData_sendReportBuilder();
  set sendReport(Gsend_signalementData_sendReportBuilder? sendReport) =>
      _$this._sendReport = sendReport;

  Gsend_signalementDataBuilder() {
    Gsend_signalementData._initializeBuilder(this);
  }

  Gsend_signalementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendReport = $v.sendReport.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_signalementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_signalementData;
  }

  @override
  void update(void Function(Gsend_signalementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_signalementData build() => _build();

  _$Gsend_signalementData _build() {
    _$Gsend_signalementData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_signalementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_signalementData', 'G__typename'),
              sendReport: sendReport.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendReport';
        sendReport.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_signalementData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_signalementData_sendReport
    extends Gsend_signalementData_sendReport {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final String? errorCode;

  factory _$Gsend_signalementData_sendReport(
          [void Function(Gsend_signalementData_sendReportBuilder)? updates]) =>
      (new Gsend_signalementData_sendReportBuilder()..update(updates))._build();

  _$Gsend_signalementData_sendReport._(
      {required this.G__typename, required this.success, this.errorCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_signalementData_sendReport', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gsend_signalementData_sendReport', 'success');
  }

  @override
  Gsend_signalementData_sendReport rebuild(
          void Function(Gsend_signalementData_sendReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_signalementData_sendReportBuilder toBuilder() =>
      new Gsend_signalementData_sendReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_signalementData_sendReport &&
        G__typename == other.G__typename &&
        success == other.success &&
        errorCode == other.errorCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_signalementData_sendReport')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('errorCode', errorCode))
        .toString();
  }
}

class Gsend_signalementData_sendReportBuilder
    implements
        Builder<Gsend_signalementData_sendReport,
            Gsend_signalementData_sendReportBuilder> {
  _$Gsend_signalementData_sendReport? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  Gsend_signalementData_sendReportBuilder() {
    Gsend_signalementData_sendReport._initializeBuilder(this);
  }

  Gsend_signalementData_sendReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _errorCode = $v.errorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_signalementData_sendReport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_signalementData_sendReport;
  }

  @override
  void update(void Function(Gsend_signalementData_sendReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_signalementData_sendReport build() => _build();

  _$Gsend_signalementData_sendReport _build() {
    final _$result = _$v ??
        new _$Gsend_signalementData_sendReport._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gsend_signalementData_sendReport', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gsend_signalementData_sendReport', 'success'),
            errorCode: errorCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
