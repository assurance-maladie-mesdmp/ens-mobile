// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_acknowledge.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GacknowledgeData> _$gacknowledgeDataSerializer =
    new _$GacknowledgeDataSerializer();
Serializer<GacknowledgeData_acknowledge>
    _$gacknowledgeDataAcknowledgeSerializer =
    new _$GacknowledgeData_acknowledgeSerializer();

class _$GacknowledgeDataSerializer
    implements StructuredSerializer<GacknowledgeData> {
  @override
  final Iterable<Type> types = const [GacknowledgeData, _$GacknowledgeData];
  @override
  final String wireName = 'GacknowledgeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GacknowledgeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'acknowledge',
      serializers.serialize(object.acknowledge,
          specifiedType: const FullType(GacknowledgeData_acknowledge)),
    ];

    return result;
  }

  @override
  GacknowledgeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacknowledgeDataBuilder();

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
        case 'acknowledge':
          result.acknowledge.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GacknowledgeData_acknowledge))!
              as GacknowledgeData_acknowledge);
          break;
      }
    }

    return result.build();
  }
}

class _$GacknowledgeData_acknowledgeSerializer
    implements StructuredSerializer<GacknowledgeData_acknowledge> {
  @override
  final Iterable<Type> types = const [
    GacknowledgeData_acknowledge,
    _$GacknowledgeData_acknowledge
  ];
  @override
  final String wireName = 'GacknowledgeData_acknowledge';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GacknowledgeData_acknowledge object,
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
  GacknowledgeData_acknowledge deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacknowledgeData_acknowledgeBuilder();

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

class _$GacknowledgeData extends GacknowledgeData {
  @override
  final String G__typename;
  @override
  final GacknowledgeData_acknowledge acknowledge;

  factory _$GacknowledgeData(
          [void Function(GacknowledgeDataBuilder)? updates]) =>
      (new GacknowledgeDataBuilder()..update(updates))._build();

  _$GacknowledgeData._({required this.G__typename, required this.acknowledge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GacknowledgeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        acknowledge, r'GacknowledgeData', 'acknowledge');
  }

  @override
  GacknowledgeData rebuild(void Function(GacknowledgeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacknowledgeDataBuilder toBuilder() =>
      new GacknowledgeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacknowledgeData &&
        G__typename == other.G__typename &&
        acknowledge == other.acknowledge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, acknowledge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GacknowledgeData')
          ..add('G__typename', G__typename)
          ..add('acknowledge', acknowledge))
        .toString();
  }
}

class GacknowledgeDataBuilder
    implements Builder<GacknowledgeData, GacknowledgeDataBuilder> {
  _$GacknowledgeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GacknowledgeData_acknowledgeBuilder? _acknowledge;
  GacknowledgeData_acknowledgeBuilder get acknowledge =>
      _$this._acknowledge ??= new GacknowledgeData_acknowledgeBuilder();
  set acknowledge(GacknowledgeData_acknowledgeBuilder? acknowledge) =>
      _$this._acknowledge = acknowledge;

  GacknowledgeDataBuilder() {
    GacknowledgeData._initializeBuilder(this);
  }

  GacknowledgeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _acknowledge = $v.acknowledge.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GacknowledgeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacknowledgeData;
  }

  @override
  void update(void Function(GacknowledgeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacknowledgeData build() => _build();

  _$GacknowledgeData _build() {
    _$GacknowledgeData _$result;
    try {
      _$result = _$v ??
          new _$GacknowledgeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GacknowledgeData', 'G__typename'),
              acknowledge: acknowledge.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'acknowledge';
        acknowledge.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GacknowledgeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GacknowledgeData_acknowledge extends GacknowledgeData_acknowledge {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$GacknowledgeData_acknowledge(
          [void Function(GacknowledgeData_acknowledgeBuilder)? updates]) =>
      (new GacknowledgeData_acknowledgeBuilder()..update(updates))._build();

  _$GacknowledgeData_acknowledge._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GacknowledgeData_acknowledge', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'GacknowledgeData_acknowledge', 'success');
  }

  @override
  GacknowledgeData_acknowledge rebuild(
          void Function(GacknowledgeData_acknowledgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacknowledgeData_acknowledgeBuilder toBuilder() =>
      new GacknowledgeData_acknowledgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacknowledgeData_acknowledge &&
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
    return (newBuiltValueToStringHelper(r'GacknowledgeData_acknowledge')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class GacknowledgeData_acknowledgeBuilder
    implements
        Builder<GacknowledgeData_acknowledge,
            GacknowledgeData_acknowledgeBuilder> {
  _$GacknowledgeData_acknowledge? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GacknowledgeData_acknowledgeBuilder() {
    GacknowledgeData_acknowledge._initializeBuilder(this);
  }

  GacknowledgeData_acknowledgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GacknowledgeData_acknowledge other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacknowledgeData_acknowledge;
  }

  @override
  void update(void Function(GacknowledgeData_acknowledgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacknowledgeData_acknowledge build() => _build();

  _$GacknowledgeData_acknowledge _build() {
    final _$result = _$v ??
        new _$GacknowledgeData_acknowledge._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GacknowledgeData_acknowledge', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'GacknowledgeData_acknowledge', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
