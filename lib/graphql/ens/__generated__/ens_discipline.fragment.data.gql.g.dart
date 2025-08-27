// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_discipline.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdisciplineResponseData> _$gdisciplineResponseDataSerializer =
    new _$GdisciplineResponseDataSerializer();

class _$GdisciplineResponseDataSerializer
    implements StructuredSerializer<GdisciplineResponseData> {
  @override
  final Iterable<Type> types = const [
    GdisciplineResponseData,
    _$GdisciplineResponseData
  ];
  @override
  final String wireName = 'GdisciplineResponseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdisciplineResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'treCode',
      serializers.serialize(object.treCode,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GdisciplineResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdisciplineResponseDataBuilder();

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
        case 'treCode':
          result.treCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GdisciplineResponseData extends GdisciplineResponseData {
  @override
  final String G__typename;
  @override
  final String treCode;
  @override
  final String? label;

  factory _$GdisciplineResponseData(
          [void Function(GdisciplineResponseDataBuilder)? updates]) =>
      (new GdisciplineResponseDataBuilder()..update(updates))._build();

  _$GdisciplineResponseData._(
      {required this.G__typename, required this.treCode, this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdisciplineResponseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        treCode, r'GdisciplineResponseData', 'treCode');
  }

  @override
  GdisciplineResponseData rebuild(
          void Function(GdisciplineResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisciplineResponseDataBuilder toBuilder() =>
      new GdisciplineResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisciplineResponseData &&
        G__typename == other.G__typename &&
        treCode == other.treCode &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, treCode.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdisciplineResponseData')
          ..add('G__typename', G__typename)
          ..add('treCode', treCode)
          ..add('label', label))
        .toString();
  }
}

class GdisciplineResponseDataBuilder
    implements
        Builder<GdisciplineResponseData, GdisciplineResponseDataBuilder> {
  _$GdisciplineResponseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _treCode;
  String? get treCode => _$this._treCode;
  set treCode(String? treCode) => _$this._treCode = treCode;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GdisciplineResponseDataBuilder() {
    GdisciplineResponseData._initializeBuilder(this);
  }

  GdisciplineResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _treCode = $v.treCode;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdisciplineResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisciplineResponseData;
  }

  @override
  void update(void Function(GdisciplineResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisciplineResponseData build() => _build();

  _$GdisciplineResponseData _build() {
    final _$result = _$v ??
        new _$GdisciplineResponseData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdisciplineResponseData', 'G__typename'),
            treCode: BuiltValueNullFieldError.checkNotNull(
                treCode, r'GdisciplineResponseData', 'treCode'),
            label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
