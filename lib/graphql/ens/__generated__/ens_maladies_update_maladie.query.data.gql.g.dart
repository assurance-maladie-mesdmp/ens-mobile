// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_update_maladie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_maladieData> _$gupdateMaladieDataSerializer =
    new _$Gupdate_maladieDataSerializer();
Serializer<Gupdate_maladieData_putDisease>
    _$gupdateMaladieDataPutDiseaseSerializer =
    new _$Gupdate_maladieData_putDiseaseSerializer();
Serializer<Gupdate_maladieData_postLinks>
    _$gupdateMaladieDataPostLinksSerializer =
    new _$Gupdate_maladieData_postLinksSerializer();
Serializer<Gupdate_maladieData_deleteLinks>
    _$gupdateMaladieDataDeleteLinksSerializer =
    new _$Gupdate_maladieData_deleteLinksSerializer();

class _$Gupdate_maladieDataSerializer
    implements StructuredSerializer<Gupdate_maladieData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_maladieData,
    _$Gupdate_maladieData
  ];
  @override
  final String wireName = 'Gupdate_maladieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_maladieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putDisease',
      serializers.serialize(object.putDisease,
          specifiedType: const FullType(Gupdate_maladieData_putDisease)),
      'postLinks',
      serializers.serialize(object.postLinks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gupdate_maladieData_postLinks)])),
      'deleteLinks',
      serializers.serialize(object.deleteLinks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gupdate_maladieData_deleteLinks)])),
    ];

    return result;
  }

  @override
  Gupdate_maladieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_maladieDataBuilder();

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
        case 'putDisease':
          result.putDisease.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_maladieData_putDisease))!
              as Gupdate_maladieData_putDisease);
          break;
        case 'postLinks':
          result.postLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gupdate_maladieData_postLinks)
              ]))! as BuiltList<Object?>);
          break;
        case 'deleteLinks':
          result.deleteLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gupdate_maladieData_deleteLinks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_maladieData_putDiseaseSerializer
    implements StructuredSerializer<Gupdate_maladieData_putDisease> {
  @override
  final Iterable<Type> types = const [
    Gupdate_maladieData_putDisease,
    _$Gupdate_maladieData_putDisease
  ];
  @override
  final String wireName = 'Gupdate_maladieData_putDisease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_maladieData_putDisease object,
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
  Gupdate_maladieData_putDisease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_maladieData_putDiseaseBuilder();

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

class _$Gupdate_maladieData_postLinksSerializer
    implements StructuredSerializer<Gupdate_maladieData_postLinks> {
  @override
  final Iterable<Type> types = const [
    Gupdate_maladieData_postLinks,
    _$Gupdate_maladieData_postLinks
  ];
  @override
  final String wireName = 'Gupdate_maladieData_postLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_maladieData_postLinks object,
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
  Gupdate_maladieData_postLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_maladieData_postLinksBuilder();

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

class _$Gupdate_maladieData_deleteLinksSerializer
    implements StructuredSerializer<Gupdate_maladieData_deleteLinks> {
  @override
  final Iterable<Type> types = const [
    Gupdate_maladieData_deleteLinks,
    _$Gupdate_maladieData_deleteLinks
  ];
  @override
  final String wireName = 'Gupdate_maladieData_deleteLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_maladieData_deleteLinks object,
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
  Gupdate_maladieData_deleteLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_maladieData_deleteLinksBuilder();

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

class _$Gupdate_maladieData extends Gupdate_maladieData {
  @override
  final String G__typename;
  @override
  final Gupdate_maladieData_putDisease putDisease;
  @override
  final BuiltList<Gupdate_maladieData_postLinks> postLinks;
  @override
  final BuiltList<Gupdate_maladieData_deleteLinks> deleteLinks;

  factory _$Gupdate_maladieData(
          [void Function(Gupdate_maladieDataBuilder)? updates]) =>
      (new Gupdate_maladieDataBuilder()..update(updates))._build();

  _$Gupdate_maladieData._(
      {required this.G__typename,
      required this.putDisease,
      required this.postLinks,
      required this.deleteLinks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_maladieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        putDisease, r'Gupdate_maladieData', 'putDisease');
    BuiltValueNullFieldError.checkNotNull(
        postLinks, r'Gupdate_maladieData', 'postLinks');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinks, r'Gupdate_maladieData', 'deleteLinks');
  }

  @override
  Gupdate_maladieData rebuild(
          void Function(Gupdate_maladieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_maladieDataBuilder toBuilder() =>
      new Gupdate_maladieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_maladieData &&
        G__typename == other.G__typename &&
        putDisease == other.putDisease &&
        postLinks == other.postLinks &&
        deleteLinks == other.deleteLinks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putDisease.hashCode);
    _$hash = $jc(_$hash, postLinks.hashCode);
    _$hash = $jc(_$hash, deleteLinks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_maladieData')
          ..add('G__typename', G__typename)
          ..add('putDisease', putDisease)
          ..add('postLinks', postLinks)
          ..add('deleteLinks', deleteLinks))
        .toString();
  }
}

class Gupdate_maladieDataBuilder
    implements Builder<Gupdate_maladieData, Gupdate_maladieDataBuilder> {
  _$Gupdate_maladieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_maladieData_putDiseaseBuilder? _putDisease;
  Gupdate_maladieData_putDiseaseBuilder get putDisease =>
      _$this._putDisease ??= new Gupdate_maladieData_putDiseaseBuilder();
  set putDisease(Gupdate_maladieData_putDiseaseBuilder? putDisease) =>
      _$this._putDisease = putDisease;

  ListBuilder<Gupdate_maladieData_postLinks>? _postLinks;
  ListBuilder<Gupdate_maladieData_postLinks> get postLinks =>
      _$this._postLinks ??= new ListBuilder<Gupdate_maladieData_postLinks>();
  set postLinks(ListBuilder<Gupdate_maladieData_postLinks>? postLinks) =>
      _$this._postLinks = postLinks;

  ListBuilder<Gupdate_maladieData_deleteLinks>? _deleteLinks;
  ListBuilder<Gupdate_maladieData_deleteLinks> get deleteLinks =>
      _$this._deleteLinks ??=
          new ListBuilder<Gupdate_maladieData_deleteLinks>();
  set deleteLinks(ListBuilder<Gupdate_maladieData_deleteLinks>? deleteLinks) =>
      _$this._deleteLinks = deleteLinks;

  Gupdate_maladieDataBuilder() {
    Gupdate_maladieData._initializeBuilder(this);
  }

  Gupdate_maladieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putDisease = $v.putDisease.toBuilder();
      _postLinks = $v.postLinks.toBuilder();
      _deleteLinks = $v.deleteLinks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_maladieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_maladieData;
  }

  @override
  void update(void Function(Gupdate_maladieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_maladieData build() => _build();

  _$Gupdate_maladieData _build() {
    _$Gupdate_maladieData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_maladieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_maladieData', 'G__typename'),
              putDisease: putDisease.build(),
              postLinks: postLinks.build(),
              deleteLinks: deleteLinks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putDisease';
        putDisease.build();
        _$failedField = 'postLinks';
        postLinks.build();
        _$failedField = 'deleteLinks';
        deleteLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_maladieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_maladieData_putDisease extends Gupdate_maladieData_putDisease {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_maladieData_putDisease(
          [void Function(Gupdate_maladieData_putDiseaseBuilder)? updates]) =>
      (new Gupdate_maladieData_putDiseaseBuilder()..update(updates))._build();

  _$Gupdate_maladieData_putDisease._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_maladieData_putDisease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_maladieData_putDisease', 'success');
  }

  @override
  Gupdate_maladieData_putDisease rebuild(
          void Function(Gupdate_maladieData_putDiseaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_maladieData_putDiseaseBuilder toBuilder() =>
      new Gupdate_maladieData_putDiseaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_maladieData_putDisease &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_maladieData_putDisease')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_maladieData_putDiseaseBuilder
    implements
        Builder<Gupdate_maladieData_putDisease,
            Gupdate_maladieData_putDiseaseBuilder> {
  _$Gupdate_maladieData_putDisease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_maladieData_putDiseaseBuilder() {
    Gupdate_maladieData_putDisease._initializeBuilder(this);
  }

  Gupdate_maladieData_putDiseaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_maladieData_putDisease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_maladieData_putDisease;
  }

  @override
  void update(void Function(Gupdate_maladieData_putDiseaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_maladieData_putDisease build() => _build();

  _$Gupdate_maladieData_putDisease _build() {
    final _$result = _$v ??
        new _$Gupdate_maladieData_putDisease._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gupdate_maladieData_putDisease', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gupdate_maladieData_putDisease', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_maladieData_postLinks extends Gupdate_maladieData_postLinks {
  @override
  final String G__typename;
  @override
  final String linkId;

  factory _$Gupdate_maladieData_postLinks(
          [void Function(Gupdate_maladieData_postLinksBuilder)? updates]) =>
      (new Gupdate_maladieData_postLinksBuilder()..update(updates))._build();

  _$Gupdate_maladieData_postLinks._(
      {required this.G__typename, required this.linkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_maladieData_postLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'Gupdate_maladieData_postLinks', 'linkId');
  }

  @override
  Gupdate_maladieData_postLinks rebuild(
          void Function(Gupdate_maladieData_postLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_maladieData_postLinksBuilder toBuilder() =>
      new Gupdate_maladieData_postLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_maladieData_postLinks &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_maladieData_postLinks')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId))
        .toString();
  }
}

class Gupdate_maladieData_postLinksBuilder
    implements
        Builder<Gupdate_maladieData_postLinks,
            Gupdate_maladieData_postLinksBuilder> {
  _$Gupdate_maladieData_postLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gupdate_maladieData_postLinksBuilder() {
    Gupdate_maladieData_postLinks._initializeBuilder(this);
  }

  Gupdate_maladieData_postLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_maladieData_postLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_maladieData_postLinks;
  }

  @override
  void update(void Function(Gupdate_maladieData_postLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_maladieData_postLinks build() => _build();

  _$Gupdate_maladieData_postLinks _build() {
    final _$result = _$v ??
        new _$Gupdate_maladieData_postLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gupdate_maladieData_postLinks', 'G__typename'),
            linkId: BuiltValueNullFieldError.checkNotNull(
                linkId, r'Gupdate_maladieData_postLinks', 'linkId'));
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_maladieData_deleteLinks
    extends Gupdate_maladieData_deleteLinks {
  @override
  final String G__typename;
  @override
  final String linkId;

  factory _$Gupdate_maladieData_deleteLinks(
          [void Function(Gupdate_maladieData_deleteLinksBuilder)? updates]) =>
      (new Gupdate_maladieData_deleteLinksBuilder()..update(updates))._build();

  _$Gupdate_maladieData_deleteLinks._(
      {required this.G__typename, required this.linkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_maladieData_deleteLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'Gupdate_maladieData_deleteLinks', 'linkId');
  }

  @override
  Gupdate_maladieData_deleteLinks rebuild(
          void Function(Gupdate_maladieData_deleteLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_maladieData_deleteLinksBuilder toBuilder() =>
      new Gupdate_maladieData_deleteLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_maladieData_deleteLinks &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_maladieData_deleteLinks')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId))
        .toString();
  }
}

class Gupdate_maladieData_deleteLinksBuilder
    implements
        Builder<Gupdate_maladieData_deleteLinks,
            Gupdate_maladieData_deleteLinksBuilder> {
  _$Gupdate_maladieData_deleteLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gupdate_maladieData_deleteLinksBuilder() {
    Gupdate_maladieData_deleteLinks._initializeBuilder(this);
  }

  Gupdate_maladieData_deleteLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_maladieData_deleteLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_maladieData_deleteLinks;
  }

  @override
  void update(void Function(Gupdate_maladieData_deleteLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_maladieData_deleteLinks build() => _build();

  _$Gupdate_maladieData_deleteLinks _build() {
    final _$result = _$v ??
        new _$Gupdate_maladieData_deleteLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gupdate_maladieData_deleteLinks', 'G__typename'),
            linkId: BuiltValueNullFieldError.checkNotNull(
                linkId, r'Gupdate_maladieData_deleteLinks', 'linkId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
