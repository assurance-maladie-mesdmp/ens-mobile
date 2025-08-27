// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_delete_mesure_target.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_mesure_targetData> _$gdeleteMesureTargetDataSerializer =
    new _$Gdelete_mesure_targetDataSerializer();
Serializer<Gdelete_mesure_targetData_deleteMeasureTarget>
    _$gdeleteMesureTargetDataDeleteMeasureTargetSerializer =
    new _$Gdelete_mesure_targetData_deleteMeasureTargetSerializer();

class _$Gdelete_mesure_targetDataSerializer
    implements StructuredSerializer<Gdelete_mesure_targetData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_mesure_targetData,
    _$Gdelete_mesure_targetData
  ];
  @override
  final String wireName = 'Gdelete_mesure_targetData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_mesure_targetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteMeasureTarget',
      serializers.serialize(object.deleteMeasureTarget,
          specifiedType:
              const FullType(Gdelete_mesure_targetData_deleteMeasureTarget)),
    ];

    return result;
  }

  @override
  Gdelete_mesure_targetData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_mesure_targetDataBuilder();

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
        case 'deleteMeasureTarget':
          result.deleteMeasureTarget.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_mesure_targetData_deleteMeasureTarget))!
              as Gdelete_mesure_targetData_deleteMeasureTarget);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_mesure_targetData_deleteMeasureTargetSerializer
    implements
        StructuredSerializer<Gdelete_mesure_targetData_deleteMeasureTarget> {
  @override
  final Iterable<Type> types = const [
    Gdelete_mesure_targetData_deleteMeasureTarget,
    _$Gdelete_mesure_targetData_deleteMeasureTarget
  ];
  @override
  final String wireName = 'Gdelete_mesure_targetData_deleteMeasureTarget';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_mesure_targetData_deleteMeasureTarget object,
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
  Gdelete_mesure_targetData_deleteMeasureTarget deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_mesure_targetData_deleteMeasureTargetBuilder();

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

class _$Gdelete_mesure_targetData extends Gdelete_mesure_targetData {
  @override
  final String G__typename;
  @override
  final Gdelete_mesure_targetData_deleteMeasureTarget deleteMeasureTarget;

  factory _$Gdelete_mesure_targetData(
          [void Function(Gdelete_mesure_targetDataBuilder)? updates]) =>
      (new Gdelete_mesure_targetDataBuilder()..update(updates))._build();

  _$Gdelete_mesure_targetData._(
      {required this.G__typename, required this.deleteMeasureTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_mesure_targetData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteMeasureTarget,
        r'Gdelete_mesure_targetData', 'deleteMeasureTarget');
  }

  @override
  Gdelete_mesure_targetData rebuild(
          void Function(Gdelete_mesure_targetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_mesure_targetDataBuilder toBuilder() =>
      new Gdelete_mesure_targetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_mesure_targetData &&
        G__typename == other.G__typename &&
        deleteMeasureTarget == other.deleteMeasureTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteMeasureTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_mesure_targetData')
          ..add('G__typename', G__typename)
          ..add('deleteMeasureTarget', deleteMeasureTarget))
        .toString();
  }
}

class Gdelete_mesure_targetDataBuilder
    implements
        Builder<Gdelete_mesure_targetData, Gdelete_mesure_targetDataBuilder> {
  _$Gdelete_mesure_targetData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_mesure_targetData_deleteMeasureTargetBuilder? _deleteMeasureTarget;
  Gdelete_mesure_targetData_deleteMeasureTargetBuilder
      get deleteMeasureTarget => _$this._deleteMeasureTarget ??=
          new Gdelete_mesure_targetData_deleteMeasureTargetBuilder();
  set deleteMeasureTarget(
          Gdelete_mesure_targetData_deleteMeasureTargetBuilder?
              deleteMeasureTarget) =>
      _$this._deleteMeasureTarget = deleteMeasureTarget;

  Gdelete_mesure_targetDataBuilder() {
    Gdelete_mesure_targetData._initializeBuilder(this);
  }

  Gdelete_mesure_targetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteMeasureTarget = $v.deleteMeasureTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_mesure_targetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_mesure_targetData;
  }

  @override
  void update(void Function(Gdelete_mesure_targetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_mesure_targetData build() => _build();

  _$Gdelete_mesure_targetData _build() {
    _$Gdelete_mesure_targetData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_mesure_targetData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_mesure_targetData', 'G__typename'),
              deleteMeasureTarget: deleteMeasureTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteMeasureTarget';
        deleteMeasureTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_mesure_targetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_mesure_targetData_deleteMeasureTarget
    extends Gdelete_mesure_targetData_deleteMeasureTarget {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_mesure_targetData_deleteMeasureTarget(
          [void Function(Gdelete_mesure_targetData_deleteMeasureTargetBuilder)?
              updates]) =>
      (new Gdelete_mesure_targetData_deleteMeasureTargetBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_mesure_targetData_deleteMeasureTarget._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_mesure_targetData_deleteMeasureTarget', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_mesure_targetData_deleteMeasureTarget', 'success');
  }

  @override
  Gdelete_mesure_targetData_deleteMeasureTarget rebuild(
          void Function(Gdelete_mesure_targetData_deleteMeasureTargetBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_mesure_targetData_deleteMeasureTargetBuilder toBuilder() =>
      new Gdelete_mesure_targetData_deleteMeasureTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_mesure_targetData_deleteMeasureTarget &&
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
            r'Gdelete_mesure_targetData_deleteMeasureTarget')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_mesure_targetData_deleteMeasureTargetBuilder
    implements
        Builder<Gdelete_mesure_targetData_deleteMeasureTarget,
            Gdelete_mesure_targetData_deleteMeasureTargetBuilder> {
  _$Gdelete_mesure_targetData_deleteMeasureTarget? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_mesure_targetData_deleteMeasureTargetBuilder() {
    Gdelete_mesure_targetData_deleteMeasureTarget._initializeBuilder(this);
  }

  Gdelete_mesure_targetData_deleteMeasureTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_mesure_targetData_deleteMeasureTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_mesure_targetData_deleteMeasureTarget;
  }

  @override
  void update(
      void Function(Gdelete_mesure_targetData_deleteMeasureTargetBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_mesure_targetData_deleteMeasureTarget build() => _build();

  _$Gdelete_mesure_targetData_deleteMeasureTarget _build() {
    final _$result = _$v ??
        new _$Gdelete_mesure_targetData_deleteMeasureTarget._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_mesure_targetData_deleteMeasureTarget',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gdelete_mesure_targetData_deleteMeasureTarget', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
