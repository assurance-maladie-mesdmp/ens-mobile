// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_create.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_entourage_contactData>
    _$gcreateEntourageContactDataSerializer =
    new _$Gcreate_entourage_contactDataSerializer();
Serializer<Gcreate_entourage_contactData_postEntourageContact>
    _$gcreateEntourageContactDataPostEntourageContactSerializer =
    new _$Gcreate_entourage_contactData_postEntourageContactSerializer();

class _$Gcreate_entourage_contactDataSerializer
    implements StructuredSerializer<Gcreate_entourage_contactData> {
  @override
  final Iterable<Type> types = const [
    Gcreate_entourage_contactData,
    _$Gcreate_entourage_contactData
  ];
  @override
  final String wireName = 'Gcreate_entourage_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_entourage_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postEntourageContact',
      serializers.serialize(object.postEntourageContact,
          specifiedType: const FullType(
              Gcreate_entourage_contactData_postEntourageContact)),
    ];

    return result;
  }

  @override
  Gcreate_entourage_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_entourage_contactDataBuilder();

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
        case 'postEntourageContact':
          result.postEntourageContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gcreate_entourage_contactData_postEntourageContact))!
              as Gcreate_entourage_contactData_postEntourageContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_entourage_contactData_postEntourageContactSerializer
    implements
        StructuredSerializer<
            Gcreate_entourage_contactData_postEntourageContact> {
  @override
  final Iterable<Type> types = const [
    Gcreate_entourage_contactData_postEntourageContact,
    _$Gcreate_entourage_contactData_postEntourageContact
  ];
  @override
  final String wireName = 'Gcreate_entourage_contactData_postEntourageContact';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gcreate_entourage_contactData_postEntourageContact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_entourage_contactData_postEntourageContact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gcreate_entourage_contactData_postEntourageContactBuilder();

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
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_entourage_contactData extends Gcreate_entourage_contactData {
  @override
  final String G__typename;
  @override
  final Gcreate_entourage_contactData_postEntourageContact postEntourageContact;

  factory _$Gcreate_entourage_contactData(
          [void Function(Gcreate_entourage_contactDataBuilder)? updates]) =>
      (new Gcreate_entourage_contactDataBuilder()..update(updates))._build();

  _$Gcreate_entourage_contactData._(
      {required this.G__typename, required this.postEntourageContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_entourage_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postEntourageContact,
        r'Gcreate_entourage_contactData', 'postEntourageContact');
  }

  @override
  Gcreate_entourage_contactData rebuild(
          void Function(Gcreate_entourage_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_entourage_contactDataBuilder toBuilder() =>
      new Gcreate_entourage_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_entourage_contactData &&
        G__typename == other.G__typename &&
        postEntourageContact == other.postEntourageContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postEntourageContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_entourage_contactData')
          ..add('G__typename', G__typename)
          ..add('postEntourageContact', postEntourageContact))
        .toString();
  }
}

class Gcreate_entourage_contactDataBuilder
    implements
        Builder<Gcreate_entourage_contactData,
            Gcreate_entourage_contactDataBuilder> {
  _$Gcreate_entourage_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_entourage_contactData_postEntourageContactBuilder?
      _postEntourageContact;
  Gcreate_entourage_contactData_postEntourageContactBuilder
      get postEntourageContact => _$this._postEntourageContact ??=
          new Gcreate_entourage_contactData_postEntourageContactBuilder();
  set postEntourageContact(
          Gcreate_entourage_contactData_postEntourageContactBuilder?
              postEntourageContact) =>
      _$this._postEntourageContact = postEntourageContact;

  Gcreate_entourage_contactDataBuilder() {
    Gcreate_entourage_contactData._initializeBuilder(this);
  }

  Gcreate_entourage_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postEntourageContact = $v.postEntourageContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_entourage_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_entourage_contactData;
  }

  @override
  void update(void Function(Gcreate_entourage_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_entourage_contactData build() => _build();

  _$Gcreate_entourage_contactData _build() {
    _$Gcreate_entourage_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_entourage_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_entourage_contactData', 'G__typename'),
              postEntourageContact: postEntourageContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postEntourageContact';
        postEntourageContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_entourage_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_entourage_contactData_postEntourageContact
    extends Gcreate_entourage_contactData_postEntourageContact {
  @override
  final String G__typename;
  @override
  final String effectiveDate;

  factory _$Gcreate_entourage_contactData_postEntourageContact(
          [void Function(
                  Gcreate_entourage_contactData_postEntourageContactBuilder)?
              updates]) =>
      (new Gcreate_entourage_contactData_postEntourageContactBuilder()
            ..update(updates))
          ._build();

  _$Gcreate_entourage_contactData_postEntourageContact._(
      {required this.G__typename, required this.effectiveDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gcreate_entourage_contactData_postEntourageContact', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(effectiveDate,
        r'Gcreate_entourage_contactData_postEntourageContact', 'effectiveDate');
  }

  @override
  Gcreate_entourage_contactData_postEntourageContact rebuild(
          void Function(
                  Gcreate_entourage_contactData_postEntourageContactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_entourage_contactData_postEntourageContactBuilder toBuilder() =>
      new Gcreate_entourage_contactData_postEntourageContactBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_entourage_contactData_postEntourageContact &&
        G__typename == other.G__typename &&
        effectiveDate == other.effectiveDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcreate_entourage_contactData_postEntourageContact')
          ..add('G__typename', G__typename)
          ..add('effectiveDate', effectiveDate))
        .toString();
  }
}

class Gcreate_entourage_contactData_postEntourageContactBuilder
    implements
        Builder<Gcreate_entourage_contactData_postEntourageContact,
            Gcreate_entourage_contactData_postEntourageContactBuilder> {
  _$Gcreate_entourage_contactData_postEntourageContact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  Gcreate_entourage_contactData_postEntourageContactBuilder() {
    Gcreate_entourage_contactData_postEntourageContact._initializeBuilder(this);
  }

  Gcreate_entourage_contactData_postEntourageContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _effectiveDate = $v.effectiveDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_entourage_contactData_postEntourageContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_entourage_contactData_postEntourageContact;
  }

  @override
  void update(
      void Function(Gcreate_entourage_contactData_postEntourageContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_entourage_contactData_postEntourageContact build() => _build();

  _$Gcreate_entourage_contactData_postEntourageContact _build() {
    final _$result = _$v ??
        new _$Gcreate_entourage_contactData_postEntourageContact._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gcreate_entourage_contactData_postEntourageContact',
                'G__typename'),
            effectiveDate: BuiltValueNullFieldError.checkNotNull(
                effectiveDate,
                r'Gcreate_entourage_contactData_postEntourageContact',
                'effectiveDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
