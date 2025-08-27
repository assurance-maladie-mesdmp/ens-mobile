// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_unconcerned.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GunconcernedData> _$gunconcernedDataSerializer =
    new _$GunconcernedDataSerializer();
Serializer<GunconcernedData_unconcerned>
    _$gunconcernedDataUnconcernedSerializer =
    new _$GunconcernedData_unconcernedSerializer();

class _$GunconcernedDataSerializer
    implements StructuredSerializer<GunconcernedData> {
  @override
  final Iterable<Type> types = const [GunconcernedData, _$GunconcernedData];
  @override
  final String wireName = 'GunconcernedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GunconcernedData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'unconcerned',
      serializers.serialize(object.unconcerned,
          specifiedType: const FullType(GunconcernedData_unconcerned)),
    ];

    return result;
  }

  @override
  GunconcernedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GunconcernedDataBuilder();

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
        case 'unconcerned':
          result.unconcerned.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GunconcernedData_unconcerned))!
              as GunconcernedData_unconcerned);
          break;
      }
    }

    return result.build();
  }
}

class _$GunconcernedData_unconcernedSerializer
    implements StructuredSerializer<GunconcernedData_unconcerned> {
  @override
  final Iterable<Type> types = const [
    GunconcernedData_unconcerned,
    _$GunconcernedData_unconcerned
  ];
  @override
  final String wireName = 'GunconcernedData_unconcerned';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GunconcernedData_unconcerned object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.declarationDate;
    if (value != null) {
      result
        ..add('declarationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GunconcernedData_unconcerned deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GunconcernedData_unconcernedBuilder();

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
        case 'declarationDate':
          result.declarationDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GunconcernedData extends GunconcernedData {
  @override
  final String G__typename;
  @override
  final GunconcernedData_unconcerned unconcerned;

  factory _$GunconcernedData(
          [void Function(GunconcernedDataBuilder)? updates]) =>
      (new GunconcernedDataBuilder()..update(updates))._build();

  _$GunconcernedData._({required this.G__typename, required this.unconcerned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GunconcernedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unconcerned, r'GunconcernedData', 'unconcerned');
  }

  @override
  GunconcernedData rebuild(void Function(GunconcernedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GunconcernedDataBuilder toBuilder() =>
      new GunconcernedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GunconcernedData &&
        G__typename == other.G__typename &&
        unconcerned == other.unconcerned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unconcerned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GunconcernedData')
          ..add('G__typename', G__typename)
          ..add('unconcerned', unconcerned))
        .toString();
  }
}

class GunconcernedDataBuilder
    implements Builder<GunconcernedData, GunconcernedDataBuilder> {
  _$GunconcernedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GunconcernedData_unconcernedBuilder? _unconcerned;
  GunconcernedData_unconcernedBuilder get unconcerned =>
      _$this._unconcerned ??= new GunconcernedData_unconcernedBuilder();
  set unconcerned(GunconcernedData_unconcernedBuilder? unconcerned) =>
      _$this._unconcerned = unconcerned;

  GunconcernedDataBuilder() {
    GunconcernedData._initializeBuilder(this);
  }

  GunconcernedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unconcerned = $v.unconcerned.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GunconcernedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GunconcernedData;
  }

  @override
  void update(void Function(GunconcernedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GunconcernedData build() => _build();

  _$GunconcernedData _build() {
    _$GunconcernedData _$result;
    try {
      _$result = _$v ??
          new _$GunconcernedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GunconcernedData', 'G__typename'),
              unconcerned: unconcerned.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unconcerned';
        unconcerned.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GunconcernedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GunconcernedData_unconcerned extends GunconcernedData_unconcerned {
  @override
  final String G__typename;
  @override
  final String? declarationDate;

  factory _$GunconcernedData_unconcerned(
          [void Function(GunconcernedData_unconcernedBuilder)? updates]) =>
      (new GunconcernedData_unconcernedBuilder()..update(updates))._build();

  _$GunconcernedData_unconcerned._(
      {required this.G__typename, this.declarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GunconcernedData_unconcerned', 'G__typename');
  }

  @override
  GunconcernedData_unconcerned rebuild(
          void Function(GunconcernedData_unconcernedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GunconcernedData_unconcernedBuilder toBuilder() =>
      new GunconcernedData_unconcernedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GunconcernedData_unconcerned &&
        G__typename == other.G__typename &&
        declarationDate == other.declarationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, declarationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GunconcernedData_unconcerned')
          ..add('G__typename', G__typename)
          ..add('declarationDate', declarationDate))
        .toString();
  }
}

class GunconcernedData_unconcernedBuilder
    implements
        Builder<GunconcernedData_unconcerned,
            GunconcernedData_unconcernedBuilder> {
  _$GunconcernedData_unconcerned? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _declarationDate;
  String? get declarationDate => _$this._declarationDate;
  set declarationDate(String? declarationDate) =>
      _$this._declarationDate = declarationDate;

  GunconcernedData_unconcernedBuilder() {
    GunconcernedData_unconcerned._initializeBuilder(this);
  }

  GunconcernedData_unconcernedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _declarationDate = $v.declarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GunconcernedData_unconcerned other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GunconcernedData_unconcerned;
  }

  @override
  void update(void Function(GunconcernedData_unconcernedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GunconcernedData_unconcerned build() => _build();

  _$GunconcernedData_unconcerned _build() {
    final _$result = _$v ??
        new _$GunconcernedData_unconcerned._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GunconcernedData_unconcerned', 'G__typename'),
            declarationDate: declarationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
