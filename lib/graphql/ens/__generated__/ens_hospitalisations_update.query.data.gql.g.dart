// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_update.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_hospitalisationData> _$gupdateHospitalisationDataSerializer =
    new _$Gupdate_hospitalisationDataSerializer();
Serializer<Gupdate_hospitalisationData_putHospitalization>
    _$gupdateHospitalisationDataPutHospitalizationSerializer =
    new _$Gupdate_hospitalisationData_putHospitalizationSerializer();
Serializer<Gupdate_hospitalisationData_postLinks>
    _$gupdateHospitalisationDataPostLinksSerializer =
    new _$Gupdate_hospitalisationData_postLinksSerializer();
Serializer<Gupdate_hospitalisationData_deleteLinks>
    _$gupdateHospitalisationDataDeleteLinksSerializer =
    new _$Gupdate_hospitalisationData_deleteLinksSerializer();

class _$Gupdate_hospitalisationDataSerializer
    implements StructuredSerializer<Gupdate_hospitalisationData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_hospitalisationData,
    _$Gupdate_hospitalisationData
  ];
  @override
  final String wireName = 'Gupdate_hospitalisationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_hospitalisationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putHospitalization',
      serializers.serialize(object.putHospitalization,
          specifiedType:
              const FullType(Gupdate_hospitalisationData_putHospitalization)),
      'postLinks',
      serializers.serialize(object.postLinks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gupdate_hospitalisationData_postLinks)])),
      'deleteLinks',
      serializers.serialize(object.deleteLinks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gupdate_hospitalisationData_deleteLinks)])),
    ];

    return result;
  }

  @override
  Gupdate_hospitalisationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_hospitalisationDataBuilder();

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
        case 'putHospitalization':
          result.putHospitalization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_hospitalisationData_putHospitalization))!
              as Gupdate_hospitalisationData_putHospitalization);
          break;
        case 'postLinks':
          result.postLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gupdate_hospitalisationData_postLinks)
              ]))! as BuiltList<Object?>);
          break;
        case 'deleteLinks':
          result.deleteLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gupdate_hospitalisationData_deleteLinks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_hospitalisationData_putHospitalizationSerializer
    implements
        StructuredSerializer<Gupdate_hospitalisationData_putHospitalization> {
  @override
  final Iterable<Type> types = const [
    Gupdate_hospitalisationData_putHospitalization,
    _$Gupdate_hospitalisationData_putHospitalization
  ];
  @override
  final String wireName = 'Gupdate_hospitalisationData_putHospitalization';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_hospitalisationData_putHospitalization object,
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
  Gupdate_hospitalisationData_putHospitalization deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_hospitalisationData_putHospitalizationBuilder();

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

class _$Gupdate_hospitalisationData_postLinksSerializer
    implements StructuredSerializer<Gupdate_hospitalisationData_postLinks> {
  @override
  final Iterable<Type> types = const [
    Gupdate_hospitalisationData_postLinks,
    _$Gupdate_hospitalisationData_postLinks
  ];
  @override
  final String wireName = 'Gupdate_hospitalisationData_postLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_hospitalisationData_postLinks object,
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
  Gupdate_hospitalisationData_postLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_hospitalisationData_postLinksBuilder();

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

class _$Gupdate_hospitalisationData_deleteLinksSerializer
    implements StructuredSerializer<Gupdate_hospitalisationData_deleteLinks> {
  @override
  final Iterable<Type> types = const [
    Gupdate_hospitalisationData_deleteLinks,
    _$Gupdate_hospitalisationData_deleteLinks
  ];
  @override
  final String wireName = 'Gupdate_hospitalisationData_deleteLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_hospitalisationData_deleteLinks object,
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
  Gupdate_hospitalisationData_deleteLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_hospitalisationData_deleteLinksBuilder();

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

class _$Gupdate_hospitalisationData extends Gupdate_hospitalisationData {
  @override
  final String G__typename;
  @override
  final Gupdate_hospitalisationData_putHospitalization putHospitalization;
  @override
  final BuiltList<Gupdate_hospitalisationData_postLinks> postLinks;
  @override
  final BuiltList<Gupdate_hospitalisationData_deleteLinks> deleteLinks;

  factory _$Gupdate_hospitalisationData(
          [void Function(Gupdate_hospitalisationDataBuilder)? updates]) =>
      (new Gupdate_hospitalisationDataBuilder()..update(updates))._build();

  _$Gupdate_hospitalisationData._(
      {required this.G__typename,
      required this.putHospitalization,
      required this.postLinks,
      required this.deleteLinks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_hospitalisationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(putHospitalization,
        r'Gupdate_hospitalisationData', 'putHospitalization');
    BuiltValueNullFieldError.checkNotNull(
        postLinks, r'Gupdate_hospitalisationData', 'postLinks');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinks, r'Gupdate_hospitalisationData', 'deleteLinks');
  }

  @override
  Gupdate_hospitalisationData rebuild(
          void Function(Gupdate_hospitalisationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_hospitalisationDataBuilder toBuilder() =>
      new Gupdate_hospitalisationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_hospitalisationData &&
        G__typename == other.G__typename &&
        putHospitalization == other.putHospitalization &&
        postLinks == other.postLinks &&
        deleteLinks == other.deleteLinks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putHospitalization.hashCode);
    _$hash = $jc(_$hash, postLinks.hashCode);
    _$hash = $jc(_$hash, deleteLinks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_hospitalisationData')
          ..add('G__typename', G__typename)
          ..add('putHospitalization', putHospitalization)
          ..add('postLinks', postLinks)
          ..add('deleteLinks', deleteLinks))
        .toString();
  }
}

class Gupdate_hospitalisationDataBuilder
    implements
        Builder<Gupdate_hospitalisationData,
            Gupdate_hospitalisationDataBuilder> {
  _$Gupdate_hospitalisationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_hospitalisationData_putHospitalizationBuilder? _putHospitalization;
  Gupdate_hospitalisationData_putHospitalizationBuilder
      get putHospitalization => _$this._putHospitalization ??=
          new Gupdate_hospitalisationData_putHospitalizationBuilder();
  set putHospitalization(
          Gupdate_hospitalisationData_putHospitalizationBuilder?
              putHospitalization) =>
      _$this._putHospitalization = putHospitalization;

  ListBuilder<Gupdate_hospitalisationData_postLinks>? _postLinks;
  ListBuilder<Gupdate_hospitalisationData_postLinks> get postLinks =>
      _$this._postLinks ??=
          new ListBuilder<Gupdate_hospitalisationData_postLinks>();
  set postLinks(
          ListBuilder<Gupdate_hospitalisationData_postLinks>? postLinks) =>
      _$this._postLinks = postLinks;

  ListBuilder<Gupdate_hospitalisationData_deleteLinks>? _deleteLinks;
  ListBuilder<Gupdate_hospitalisationData_deleteLinks> get deleteLinks =>
      _$this._deleteLinks ??=
          new ListBuilder<Gupdate_hospitalisationData_deleteLinks>();
  set deleteLinks(
          ListBuilder<Gupdate_hospitalisationData_deleteLinks>? deleteLinks) =>
      _$this._deleteLinks = deleteLinks;

  Gupdate_hospitalisationDataBuilder() {
    Gupdate_hospitalisationData._initializeBuilder(this);
  }

  Gupdate_hospitalisationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putHospitalization = $v.putHospitalization.toBuilder();
      _postLinks = $v.postLinks.toBuilder();
      _deleteLinks = $v.deleteLinks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_hospitalisationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_hospitalisationData;
  }

  @override
  void update(void Function(Gupdate_hospitalisationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_hospitalisationData build() => _build();

  _$Gupdate_hospitalisationData _build() {
    _$Gupdate_hospitalisationData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_hospitalisationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_hospitalisationData', 'G__typename'),
              putHospitalization: putHospitalization.build(),
              postLinks: postLinks.build(),
              deleteLinks: deleteLinks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putHospitalization';
        putHospitalization.build();
        _$failedField = 'postLinks';
        postLinks.build();
        _$failedField = 'deleteLinks';
        deleteLinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_hospitalisationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_hospitalisationData_putHospitalization
    extends Gupdate_hospitalisationData_putHospitalization {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_hospitalisationData_putHospitalization(
          [void Function(Gupdate_hospitalisationData_putHospitalizationBuilder)?
              updates]) =>
      (new Gupdate_hospitalisationData_putHospitalizationBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_hospitalisationData_putHospitalization._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_hospitalisationData_putHospitalization', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_hospitalisationData_putHospitalization', 'success');
  }

  @override
  Gupdate_hospitalisationData_putHospitalization rebuild(
          void Function(Gupdate_hospitalisationData_putHospitalizationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_hospitalisationData_putHospitalizationBuilder toBuilder() =>
      new Gupdate_hospitalisationData_putHospitalizationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_hospitalisationData_putHospitalization &&
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
            r'Gupdate_hospitalisationData_putHospitalization')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_hospitalisationData_putHospitalizationBuilder
    implements
        Builder<Gupdate_hospitalisationData_putHospitalization,
            Gupdate_hospitalisationData_putHospitalizationBuilder> {
  _$Gupdate_hospitalisationData_putHospitalization? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_hospitalisationData_putHospitalizationBuilder() {
    Gupdate_hospitalisationData_putHospitalization._initializeBuilder(this);
  }

  Gupdate_hospitalisationData_putHospitalizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_hospitalisationData_putHospitalization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_hospitalisationData_putHospitalization;
  }

  @override
  void update(
      void Function(Gupdate_hospitalisationData_putHospitalizationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_hospitalisationData_putHospitalization build() => _build();

  _$Gupdate_hospitalisationData_putHospitalization _build() {
    final _$result = _$v ??
        new _$Gupdate_hospitalisationData_putHospitalization._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_hospitalisationData_putHospitalization',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gupdate_hospitalisationData_putHospitalization', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_hospitalisationData_postLinks
    extends Gupdate_hospitalisationData_postLinks {
  @override
  final String G__typename;
  @override
  final String linkId;

  factory _$Gupdate_hospitalisationData_postLinks(
          [void Function(Gupdate_hospitalisationData_postLinksBuilder)?
              updates]) =>
      (new Gupdate_hospitalisationData_postLinksBuilder()..update(updates))
          ._build();

  _$Gupdate_hospitalisationData_postLinks._(
      {required this.G__typename, required this.linkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_hospitalisationData_postLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'Gupdate_hospitalisationData_postLinks', 'linkId');
  }

  @override
  Gupdate_hospitalisationData_postLinks rebuild(
          void Function(Gupdate_hospitalisationData_postLinksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_hospitalisationData_postLinksBuilder toBuilder() =>
      new Gupdate_hospitalisationData_postLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_hospitalisationData_postLinks &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_hospitalisationData_postLinks')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId))
        .toString();
  }
}

class Gupdate_hospitalisationData_postLinksBuilder
    implements
        Builder<Gupdate_hospitalisationData_postLinks,
            Gupdate_hospitalisationData_postLinksBuilder> {
  _$Gupdate_hospitalisationData_postLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gupdate_hospitalisationData_postLinksBuilder() {
    Gupdate_hospitalisationData_postLinks._initializeBuilder(this);
  }

  Gupdate_hospitalisationData_postLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_hospitalisationData_postLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_hospitalisationData_postLinks;
  }

  @override
  void update(
      void Function(Gupdate_hospitalisationData_postLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_hospitalisationData_postLinks build() => _build();

  _$Gupdate_hospitalisationData_postLinks _build() {
    final _$result = _$v ??
        new _$Gupdate_hospitalisationData_postLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_hospitalisationData_postLinks', 'G__typename'),
            linkId: BuiltValueNullFieldError.checkNotNull(
                linkId, r'Gupdate_hospitalisationData_postLinks', 'linkId'));
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_hospitalisationData_deleteLinks
    extends Gupdate_hospitalisationData_deleteLinks {
  @override
  final String G__typename;
  @override
  final String linkId;

  factory _$Gupdate_hospitalisationData_deleteLinks(
          [void Function(Gupdate_hospitalisationData_deleteLinksBuilder)?
              updates]) =>
      (new Gupdate_hospitalisationData_deleteLinksBuilder()..update(updates))
          ._build();

  _$Gupdate_hospitalisationData_deleteLinks._(
      {required this.G__typename, required this.linkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_hospitalisationData_deleteLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'Gupdate_hospitalisationData_deleteLinks', 'linkId');
  }

  @override
  Gupdate_hospitalisationData_deleteLinks rebuild(
          void Function(Gupdate_hospitalisationData_deleteLinksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_hospitalisationData_deleteLinksBuilder toBuilder() =>
      new Gupdate_hospitalisationData_deleteLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_hospitalisationData_deleteLinks &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_hospitalisationData_deleteLinks')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId))
        .toString();
  }
}

class Gupdate_hospitalisationData_deleteLinksBuilder
    implements
        Builder<Gupdate_hospitalisationData_deleteLinks,
            Gupdate_hospitalisationData_deleteLinksBuilder> {
  _$Gupdate_hospitalisationData_deleteLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gupdate_hospitalisationData_deleteLinksBuilder() {
    Gupdate_hospitalisationData_deleteLinks._initializeBuilder(this);
  }

  Gupdate_hospitalisationData_deleteLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_hospitalisationData_deleteLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_hospitalisationData_deleteLinks;
  }

  @override
  void update(
      void Function(Gupdate_hospitalisationData_deleteLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_hospitalisationData_deleteLinks build() => _build();

  _$Gupdate_hospitalisationData_deleteLinks _build() {
    final _$result = _$v ??
        new _$Gupdate_hospitalisationData_deleteLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_hospitalisationData_deleteLinks', 'G__typename'),
            linkId: BuiltValueNullFieldError.checkNotNull(
                linkId, r'Gupdate_hospitalisationData_deleteLinks', 'linkId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
