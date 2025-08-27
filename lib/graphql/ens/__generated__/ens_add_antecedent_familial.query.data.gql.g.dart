// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_add_antecedent_familial.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_antecedent_familialData>
    _$gaddAntecedentFamilialDataSerializer =
    new _$Gadd_antecedent_familialDataSerializer();
Serializer<Gadd_antecedent_familialData_postFamilyHistory>
    _$gaddAntecedentFamilialDataPostFamilyHistorySerializer =
    new _$Gadd_antecedent_familialData_postFamilyHistorySerializer();

class _$Gadd_antecedent_familialDataSerializer
    implements StructuredSerializer<Gadd_antecedent_familialData> {
  @override
  final Iterable<Type> types = const [
    Gadd_antecedent_familialData,
    _$Gadd_antecedent_familialData
  ];
  @override
  final String wireName = 'Gadd_antecedent_familialData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_antecedent_familialData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postFamilyHistory',
      serializers.serialize(object.postFamilyHistory,
          specifiedType:
              const FullType(Gadd_antecedent_familialData_postFamilyHistory)),
    ];

    return result;
  }

  @override
  Gadd_antecedent_familialData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_antecedent_familialDataBuilder();

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
        case 'postFamilyHistory':
          result.postFamilyHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gadd_antecedent_familialData_postFamilyHistory))!
              as Gadd_antecedent_familialData_postFamilyHistory);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_antecedent_familialData_postFamilyHistorySerializer
    implements
        StructuredSerializer<Gadd_antecedent_familialData_postFamilyHistory> {
  @override
  final Iterable<Type> types = const [
    Gadd_antecedent_familialData_postFamilyHistory,
    _$Gadd_antecedent_familialData_postFamilyHistory
  ];
  @override
  final String wireName = 'Gadd_antecedent_familialData_postFamilyHistory';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gadd_antecedent_familialData_postFamilyHistory object,
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
  Gadd_antecedent_familialData_postFamilyHistory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_antecedent_familialData_postFamilyHistoryBuilder();

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

class _$Gadd_antecedent_familialData extends Gadd_antecedent_familialData {
  @override
  final String G__typename;
  @override
  final Gadd_antecedent_familialData_postFamilyHistory postFamilyHistory;

  factory _$Gadd_antecedent_familialData(
          [void Function(Gadd_antecedent_familialDataBuilder)? updates]) =>
      (new Gadd_antecedent_familialDataBuilder()..update(updates))._build();

  _$Gadd_antecedent_familialData._(
      {required this.G__typename, required this.postFamilyHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_antecedent_familialData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postFamilyHistory,
        r'Gadd_antecedent_familialData', 'postFamilyHistory');
  }

  @override
  Gadd_antecedent_familialData rebuild(
          void Function(Gadd_antecedent_familialDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_antecedent_familialDataBuilder toBuilder() =>
      new Gadd_antecedent_familialDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_antecedent_familialData &&
        G__typename == other.G__typename &&
        postFamilyHistory == other.postFamilyHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postFamilyHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_antecedent_familialData')
          ..add('G__typename', G__typename)
          ..add('postFamilyHistory', postFamilyHistory))
        .toString();
  }
}

class Gadd_antecedent_familialDataBuilder
    implements
        Builder<Gadd_antecedent_familialData,
            Gadd_antecedent_familialDataBuilder> {
  _$Gadd_antecedent_familialData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_antecedent_familialData_postFamilyHistoryBuilder? _postFamilyHistory;
  Gadd_antecedent_familialData_postFamilyHistoryBuilder get postFamilyHistory =>
      _$this._postFamilyHistory ??=
          new Gadd_antecedent_familialData_postFamilyHistoryBuilder();
  set postFamilyHistory(
          Gadd_antecedent_familialData_postFamilyHistoryBuilder?
              postFamilyHistory) =>
      _$this._postFamilyHistory = postFamilyHistory;

  Gadd_antecedent_familialDataBuilder() {
    Gadd_antecedent_familialData._initializeBuilder(this);
  }

  Gadd_antecedent_familialDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postFamilyHistory = $v.postFamilyHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_antecedent_familialData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_antecedent_familialData;
  }

  @override
  void update(void Function(Gadd_antecedent_familialDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_antecedent_familialData build() => _build();

  _$Gadd_antecedent_familialData _build() {
    _$Gadd_antecedent_familialData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_antecedent_familialData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_antecedent_familialData', 'G__typename'),
              postFamilyHistory: postFamilyHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postFamilyHistory';
        postFamilyHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_antecedent_familialData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_antecedent_familialData_postFamilyHistory
    extends Gadd_antecedent_familialData_postFamilyHistory {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_antecedent_familialData_postFamilyHistory(
          [void Function(Gadd_antecedent_familialData_postFamilyHistoryBuilder)?
              updates]) =>
      (new Gadd_antecedent_familialData_postFamilyHistoryBuilder()
            ..update(updates))
          ._build();

  _$Gadd_antecedent_familialData_postFamilyHistory._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gadd_antecedent_familialData_postFamilyHistory', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_antecedent_familialData_postFamilyHistory', 'success');
  }

  @override
  Gadd_antecedent_familialData_postFamilyHistory rebuild(
          void Function(Gadd_antecedent_familialData_postFamilyHistoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_antecedent_familialData_postFamilyHistoryBuilder toBuilder() =>
      new Gadd_antecedent_familialData_postFamilyHistoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_antecedent_familialData_postFamilyHistory &&
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
            r'Gadd_antecedent_familialData_postFamilyHistory')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_antecedent_familialData_postFamilyHistoryBuilder
    implements
        Builder<Gadd_antecedent_familialData_postFamilyHistory,
            Gadd_antecedent_familialData_postFamilyHistoryBuilder> {
  _$Gadd_antecedent_familialData_postFamilyHistory? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_antecedent_familialData_postFamilyHistoryBuilder() {
    Gadd_antecedent_familialData_postFamilyHistory._initializeBuilder(this);
  }

  Gadd_antecedent_familialData_postFamilyHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_antecedent_familialData_postFamilyHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_antecedent_familialData_postFamilyHistory;
  }

  @override
  void update(
      void Function(Gadd_antecedent_familialData_postFamilyHistoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_antecedent_familialData_postFamilyHistory build() => _build();

  _$Gadd_antecedent_familialData_postFamilyHistory _build() {
    final _$result = _$v ??
        new _$Gadd_antecedent_familialData_postFamilyHistory._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gadd_antecedent_familialData_postFamilyHistory',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gadd_antecedent_familialData_postFamilyHistory', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
