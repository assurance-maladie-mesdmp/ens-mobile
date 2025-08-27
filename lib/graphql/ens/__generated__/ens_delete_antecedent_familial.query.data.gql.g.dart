// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_antecedent_familial.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_antecedent_familialData>
    _$gdeleteAntecedentFamilialDataSerializer =
    new _$Gdelete_antecedent_familialDataSerializer();
Serializer<Gdelete_antecedent_familialData_deleteFamilyHistory>
    _$gdeleteAntecedentFamilialDataDeleteFamilyHistorySerializer =
    new _$Gdelete_antecedent_familialData_deleteFamilyHistorySerializer();

class _$Gdelete_antecedent_familialDataSerializer
    implements StructuredSerializer<Gdelete_antecedent_familialData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_antecedent_familialData,
    _$Gdelete_antecedent_familialData
  ];
  @override
  final String wireName = 'Gdelete_antecedent_familialData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_antecedent_familialData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteFamilyHistory',
      serializers.serialize(object.deleteFamilyHistory,
          specifiedType: const FullType(
              Gdelete_antecedent_familialData_deleteFamilyHistory)),
    ];

    return result;
  }

  @override
  Gdelete_antecedent_familialData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_antecedent_familialDataBuilder();

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
        case 'deleteFamilyHistory':
          result.deleteFamilyHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_antecedent_familialData_deleteFamilyHistory))!
              as Gdelete_antecedent_familialData_deleteFamilyHistory);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_antecedent_familialData_deleteFamilyHistorySerializer
    implements
        StructuredSerializer<
            Gdelete_antecedent_familialData_deleteFamilyHistory> {
  @override
  final Iterable<Type> types = const [
    Gdelete_antecedent_familialData_deleteFamilyHistory,
    _$Gdelete_antecedent_familialData_deleteFamilyHistory
  ];
  @override
  final String wireName = 'Gdelete_antecedent_familialData_deleteFamilyHistory';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_antecedent_familialData_deleteFamilyHistory object,
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
  Gdelete_antecedent_familialData_deleteFamilyHistory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder();

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

class _$Gdelete_antecedent_familialData
    extends Gdelete_antecedent_familialData {
  @override
  final String G__typename;
  @override
  final Gdelete_antecedent_familialData_deleteFamilyHistory deleteFamilyHistory;

  factory _$Gdelete_antecedent_familialData(
          [void Function(Gdelete_antecedent_familialDataBuilder)? updates]) =>
      (new Gdelete_antecedent_familialDataBuilder()..update(updates))._build();

  _$Gdelete_antecedent_familialData._(
      {required this.G__typename, required this.deleteFamilyHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_antecedent_familialData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteFamilyHistory,
        r'Gdelete_antecedent_familialData', 'deleteFamilyHistory');
  }

  @override
  Gdelete_antecedent_familialData rebuild(
          void Function(Gdelete_antecedent_familialDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_antecedent_familialDataBuilder toBuilder() =>
      new Gdelete_antecedent_familialDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_antecedent_familialData &&
        G__typename == other.G__typename &&
        deleteFamilyHistory == other.deleteFamilyHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteFamilyHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_antecedent_familialData')
          ..add('G__typename', G__typename)
          ..add('deleteFamilyHistory', deleteFamilyHistory))
        .toString();
  }
}

class Gdelete_antecedent_familialDataBuilder
    implements
        Builder<Gdelete_antecedent_familialData,
            Gdelete_antecedent_familialDataBuilder> {
  _$Gdelete_antecedent_familialData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder?
      _deleteFamilyHistory;
  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder
      get deleteFamilyHistory => _$this._deleteFamilyHistory ??=
          new Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder();
  set deleteFamilyHistory(
          Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder?
              deleteFamilyHistory) =>
      _$this._deleteFamilyHistory = deleteFamilyHistory;

  Gdelete_antecedent_familialDataBuilder() {
    Gdelete_antecedent_familialData._initializeBuilder(this);
  }

  Gdelete_antecedent_familialDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteFamilyHistory = $v.deleteFamilyHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_antecedent_familialData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_antecedent_familialData;
  }

  @override
  void update(void Function(Gdelete_antecedent_familialDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_antecedent_familialData build() => _build();

  _$Gdelete_antecedent_familialData _build() {
    _$Gdelete_antecedent_familialData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_antecedent_familialData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_antecedent_familialData', 'G__typename'),
              deleteFamilyHistory: deleteFamilyHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteFamilyHistory';
        deleteFamilyHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_antecedent_familialData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_antecedent_familialData_deleteFamilyHistory
    extends Gdelete_antecedent_familialData_deleteFamilyHistory {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_antecedent_familialData_deleteFamilyHistory(
          [void Function(
                  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder)?
              updates]) =>
      (new Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_antecedent_familialData_deleteFamilyHistory._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_antecedent_familialData_deleteFamilyHistory', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_antecedent_familialData_deleteFamilyHistory', 'success');
  }

  @override
  Gdelete_antecedent_familialData_deleteFamilyHistory rebuild(
          void Function(
                  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder toBuilder() =>
      new Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_antecedent_familialData_deleteFamilyHistory &&
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
            r'Gdelete_antecedent_familialData_deleteFamilyHistory')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder
    implements
        Builder<Gdelete_antecedent_familialData_deleteFamilyHistory,
            Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder> {
  _$Gdelete_antecedent_familialData_deleteFamilyHistory? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder() {
    Gdelete_antecedent_familialData_deleteFamilyHistory._initializeBuilder(
        this);
  }

  Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_antecedent_familialData_deleteFamilyHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_antecedent_familialData_deleteFamilyHistory;
  }

  @override
  void update(
      void Function(Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_antecedent_familialData_deleteFamilyHistory build() => _build();

  _$Gdelete_antecedent_familialData_deleteFamilyHistory _build() {
    final _$result = _$v ??
        new _$Gdelete_antecedent_familialData_deleteFamilyHistory._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_antecedent_familialData_deleteFamilyHistory',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_antecedent_familialData_deleteFamilyHistory',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
