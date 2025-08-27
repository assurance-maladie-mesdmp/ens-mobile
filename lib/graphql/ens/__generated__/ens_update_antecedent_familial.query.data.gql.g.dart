// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_update_antecedent_familial.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_antecedent_familialData>
    _$gupdateAntecedentFamilialDataSerializer =
    new _$Gupdate_antecedent_familialDataSerializer();
Serializer<Gupdate_antecedent_familialData_putFamilyHistory>
    _$gupdateAntecedentFamilialDataPutFamilyHistorySerializer =
    new _$Gupdate_antecedent_familialData_putFamilyHistorySerializer();

class _$Gupdate_antecedent_familialDataSerializer
    implements StructuredSerializer<Gupdate_antecedent_familialData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_antecedent_familialData,
    _$Gupdate_antecedent_familialData
  ];
  @override
  final String wireName = 'Gupdate_antecedent_familialData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_antecedent_familialData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putFamilyHistory',
      serializers.serialize(object.putFamilyHistory,
          specifiedType:
              const FullType(Gupdate_antecedent_familialData_putFamilyHistory)),
    ];

    return result;
  }

  @override
  Gupdate_antecedent_familialData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_antecedent_familialDataBuilder();

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
        case 'putFamilyHistory':
          result.putFamilyHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_antecedent_familialData_putFamilyHistory))!
              as Gupdate_antecedent_familialData_putFamilyHistory);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_antecedent_familialData_putFamilyHistorySerializer
    implements
        StructuredSerializer<Gupdate_antecedent_familialData_putFamilyHistory> {
  @override
  final Iterable<Type> types = const [
    Gupdate_antecedent_familialData_putFamilyHistory,
    _$Gupdate_antecedent_familialData_putFamilyHistory
  ];
  @override
  final String wireName = 'Gupdate_antecedent_familialData_putFamilyHistory';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_antecedent_familialData_putFamilyHistory object,
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
  Gupdate_antecedent_familialData_putFamilyHistory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_antecedent_familialData_putFamilyHistoryBuilder();

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

class _$Gupdate_antecedent_familialData
    extends Gupdate_antecedent_familialData {
  @override
  final String G__typename;
  @override
  final Gupdate_antecedent_familialData_putFamilyHistory putFamilyHistory;

  factory _$Gupdate_antecedent_familialData(
          [void Function(Gupdate_antecedent_familialDataBuilder)? updates]) =>
      (new Gupdate_antecedent_familialDataBuilder()..update(updates))._build();

  _$Gupdate_antecedent_familialData._(
      {required this.G__typename, required this.putFamilyHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_antecedent_familialData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(putFamilyHistory,
        r'Gupdate_antecedent_familialData', 'putFamilyHistory');
  }

  @override
  Gupdate_antecedent_familialData rebuild(
          void Function(Gupdate_antecedent_familialDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_antecedent_familialDataBuilder toBuilder() =>
      new Gupdate_antecedent_familialDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_antecedent_familialData &&
        G__typename == other.G__typename &&
        putFamilyHistory == other.putFamilyHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putFamilyHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_antecedent_familialData')
          ..add('G__typename', G__typename)
          ..add('putFamilyHistory', putFamilyHistory))
        .toString();
  }
}

class Gupdate_antecedent_familialDataBuilder
    implements
        Builder<Gupdate_antecedent_familialData,
            Gupdate_antecedent_familialDataBuilder> {
  _$Gupdate_antecedent_familialData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_antecedent_familialData_putFamilyHistoryBuilder? _putFamilyHistory;
  Gupdate_antecedent_familialData_putFamilyHistoryBuilder
      get putFamilyHistory => _$this._putFamilyHistory ??=
          new Gupdate_antecedent_familialData_putFamilyHistoryBuilder();
  set putFamilyHistory(
          Gupdate_antecedent_familialData_putFamilyHistoryBuilder?
              putFamilyHistory) =>
      _$this._putFamilyHistory = putFamilyHistory;

  Gupdate_antecedent_familialDataBuilder() {
    Gupdate_antecedent_familialData._initializeBuilder(this);
  }

  Gupdate_antecedent_familialDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putFamilyHistory = $v.putFamilyHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_antecedent_familialData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_antecedent_familialData;
  }

  @override
  void update(void Function(Gupdate_antecedent_familialDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_antecedent_familialData build() => _build();

  _$Gupdate_antecedent_familialData _build() {
    _$Gupdate_antecedent_familialData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_antecedent_familialData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_antecedent_familialData', 'G__typename'),
              putFamilyHistory: putFamilyHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putFamilyHistory';
        putFamilyHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_antecedent_familialData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_antecedent_familialData_putFamilyHistory
    extends Gupdate_antecedent_familialData_putFamilyHistory {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_antecedent_familialData_putFamilyHistory(
          [void Function(
                  Gupdate_antecedent_familialData_putFamilyHistoryBuilder)?
              updates]) =>
      (new Gupdate_antecedent_familialData_putFamilyHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_antecedent_familialData_putFamilyHistory._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_antecedent_familialData_putFamilyHistory', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gupdate_antecedent_familialData_putFamilyHistory', 'success');
  }

  @override
  Gupdate_antecedent_familialData_putFamilyHistory rebuild(
          void Function(Gupdate_antecedent_familialData_putFamilyHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_antecedent_familialData_putFamilyHistoryBuilder toBuilder() =>
      new Gupdate_antecedent_familialData_putFamilyHistoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_antecedent_familialData_putFamilyHistory &&
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
            r'Gupdate_antecedent_familialData_putFamilyHistory')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_antecedent_familialData_putFamilyHistoryBuilder
    implements
        Builder<Gupdate_antecedent_familialData_putFamilyHistory,
            Gupdate_antecedent_familialData_putFamilyHistoryBuilder> {
  _$Gupdate_antecedent_familialData_putFamilyHistory? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_antecedent_familialData_putFamilyHistoryBuilder() {
    Gupdate_antecedent_familialData_putFamilyHistory._initializeBuilder(this);
  }

  Gupdate_antecedent_familialData_putFamilyHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_antecedent_familialData_putFamilyHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_antecedent_familialData_putFamilyHistory;
  }

  @override
  void update(
      void Function(Gupdate_antecedent_familialData_putFamilyHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_antecedent_familialData_putFamilyHistory build() => _build();

  _$Gupdate_antecedent_familialData_putFamilyHistory _build() {
    final _$result = _$v ??
        new _$Gupdate_antecedent_familialData_putFamilyHistory._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_antecedent_familialData_putFamilyHistory',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_antecedent_familialData_putFamilyHistory',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
