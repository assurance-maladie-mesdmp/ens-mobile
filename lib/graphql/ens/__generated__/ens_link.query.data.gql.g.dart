// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_link.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_linkData> _$gdeleteLinkDataSerializer =
    new _$Gdelete_linkDataSerializer();
Serializer<Gdelete_linkData_deleteLinks>
    _$gdeleteLinkDataDeleteLinksSerializer =
    new _$Gdelete_linkData_deleteLinksSerializer();

class _$Gdelete_linkDataSerializer
    implements StructuredSerializer<Gdelete_linkData> {
  @override
  final Iterable<Type> types = const [Gdelete_linkData, _$Gdelete_linkData];
  @override
  final String wireName = 'Gdelete_linkData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gdelete_linkData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteLinks',
      serializers.serialize(object.deleteLinks,
          specifiedType: const FullType(
              BuiltList, const [const FullType(Gdelete_linkData_deleteLinks)])),
    ];

    return result;
  }

  @override
  Gdelete_linkData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_linkDataBuilder();

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
        case 'deleteLinks':
          result.deleteLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gdelete_linkData_deleteLinks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_linkData_deleteLinksSerializer
    implements StructuredSerializer<Gdelete_linkData_deleteLinks> {
  @override
  final Iterable<Type> types = const [
    Gdelete_linkData_deleteLinks,
    _$Gdelete_linkData_deleteLinks
  ];
  @override
  final String wireName = 'Gdelete_linkData_deleteLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_linkData_deleteLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_linkData_deleteLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_linkData_deleteLinksBuilder();

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
        case 'linkId':
          result.linkId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_linkData extends Gdelete_linkData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gdelete_linkData_deleteLinks> deleteLinks;

  factory _$Gdelete_linkData(
          [void Function(Gdelete_linkDataBuilder)? updates]) =>
      (new Gdelete_linkDataBuilder()..update(updates))._build();

  _$Gdelete_linkData._({required this.G__typename, required this.deleteLinks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_linkData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinks, r'Gdelete_linkData', 'deleteLinks');
  }

  @override
  Gdelete_linkData rebuild(void Function(Gdelete_linkDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_linkDataBuilder toBuilder() =>
      new Gdelete_linkDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_linkData &&
        G__typename == other.G__typename &&
        deleteLinks == other.deleteLinks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteLinks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_linkData')
          ..add('G__typename', G__typename)
          ..add('deleteLinks', deleteLinks))
        .toString();
  }
}

class Gdelete_linkDataBuilder
    implements Builder<Gdelete_linkData, Gdelete_linkDataBuilder> {
  _$Gdelete_linkData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gdelete_linkData_deleteLinks>? _deleteLinks;
  ListBuilder<Gdelete_linkData_deleteLinks> get deleteLinks =>
      _$this._deleteLinks ??= new ListBuilder<Gdelete_linkData_deleteLinks>();
  set deleteLinks(ListBuilder<Gdelete_linkData_deleteLinks>? deleteLinks) =>
      _$this._deleteLinks = deleteLinks;

  Gdelete_linkDataBuilder() {
    Gdelete_linkData._initializeBuilder(this);
  }

  Gdelete_linkDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteLinks = $v.deleteLinks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_linkData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_linkData;
  }

  @override
  void update(void Function(Gdelete_linkDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_linkData build() => _build();

  _$Gdelete_linkData _build() {
    _$Gdelete_linkData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_linkData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_linkData', 'G__typename'),
              deleteLinks: deleteLinks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteLinks';
        deleteLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_linkData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_linkData_deleteLinks extends Gdelete_linkData_deleteLinks {
  @override
  final String G__typename;
  @override
  final String linkId;

  factory _$Gdelete_linkData_deleteLinks(
          [void Function(Gdelete_linkData_deleteLinksBuilder)? updates]) =>
      (new Gdelete_linkData_deleteLinksBuilder()..update(updates))._build();

  _$Gdelete_linkData_deleteLinks._(
      {required this.G__typename, required this.linkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_linkData_deleteLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'Gdelete_linkData_deleteLinks', 'linkId');
  }

  @override
  Gdelete_linkData_deleteLinks rebuild(
          void Function(Gdelete_linkData_deleteLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_linkData_deleteLinksBuilder toBuilder() =>
      new Gdelete_linkData_deleteLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_linkData_deleteLinks &&
        G__typename == other.G__typename &&
        linkId == other.linkId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_linkData_deleteLinks')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId))
        .toString();
  }
}

class Gdelete_linkData_deleteLinksBuilder
    implements
        Builder<Gdelete_linkData_deleteLinks,
            Gdelete_linkData_deleteLinksBuilder> {
  _$Gdelete_linkData_deleteLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gdelete_linkData_deleteLinksBuilder() {
    Gdelete_linkData_deleteLinks._initializeBuilder(this);
  }

  Gdelete_linkData_deleteLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_linkData_deleteLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_linkData_deleteLinks;
  }

  @override
  void update(void Function(Gdelete_linkData_deleteLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_linkData_deleteLinks build() => _build();

  _$Gdelete_linkData_deleteLinks _build() {
    final _$result = _$v ??
        new _$Gdelete_linkData_deleteLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gdelete_linkData_deleteLinks', 'G__typename'),
            linkId: BuiltValueNullFieldError.checkNotNull(
                linkId, r'Gdelete_linkData_deleteLinks', 'linkId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
