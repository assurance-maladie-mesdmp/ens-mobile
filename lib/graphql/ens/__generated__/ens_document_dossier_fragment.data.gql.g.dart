// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_dossier_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdossierData> _$gdossierDataSerializer =
    new _$GdossierDataSerializer();

class _$GdossierDataSerializer implements StructuredSerializer<GdossierData> {
  @override
  final Iterable<Type> types = const [GdossierData, _$GdossierData];
  @override
  final String wireName = 'GdossierData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdossierData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GdossierData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdossierDataBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdossierData extends GdossierData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GdossierData([void Function(GdossierDataBuilder)? updates]) =>
      (new GdossierDataBuilder()..update(updates))._build();

  _$GdossierData._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdossierData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GdossierData', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'GdossierData', 'title');
  }

  @override
  GdossierData rebuild(void Function(GdossierDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdossierDataBuilder toBuilder() => new GdossierDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdossierData &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdossierData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GdossierDataBuilder
    implements Builder<GdossierData, GdossierDataBuilder> {
  _$GdossierData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GdossierDataBuilder() {
    GdossierData._initializeBuilder(this);
  }

  GdossierDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdossierData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdossierData;
  }

  @override
  void update(void Function(GdossierDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdossierData build() => _build();

  _$GdossierData _build() {
    final _$result = _$v ??
        new _$GdossierData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdossierData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GdossierData', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GdossierData', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
