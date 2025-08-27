// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_delete.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_entourage_contactData>
    _$gdeleteEntourageContactDataSerializer =
    new _$Gdelete_entourage_contactDataSerializer();
Serializer<Gdelete_entourage_contactData_deleteEntourageContact>
    _$gdeleteEntourageContactDataDeleteEntourageContactSerializer =
    new _$Gdelete_entourage_contactData_deleteEntourageContactSerializer();

class _$Gdelete_entourage_contactDataSerializer
    implements StructuredSerializer<Gdelete_entourage_contactData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_entourage_contactData,
    _$Gdelete_entourage_contactData
  ];
  @override
  final String wireName = 'Gdelete_entourage_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_entourage_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteEntourageContact',
      serializers.serialize(object.deleteEntourageContact,
          specifiedType: const FullType(
              Gdelete_entourage_contactData_deleteEntourageContact)),
    ];

    return result;
  }

  @override
  Gdelete_entourage_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_entourage_contactDataBuilder();

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
        case 'deleteEntourageContact':
          result.deleteEntourageContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_entourage_contactData_deleteEntourageContact))!
              as Gdelete_entourage_contactData_deleteEntourageContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_entourage_contactData_deleteEntourageContactSerializer
    implements
        StructuredSerializer<
            Gdelete_entourage_contactData_deleteEntourageContact> {
  @override
  final Iterable<Type> types = const [
    Gdelete_entourage_contactData_deleteEntourageContact,
    _$Gdelete_entourage_contactData_deleteEntourageContact
  ];
  @override
  final String wireName =
      'Gdelete_entourage_contactData_deleteEntourageContact';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_entourage_contactData_deleteEntourageContact object,
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
  Gdelete_entourage_contactData_deleteEntourageContact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_entourage_contactData_deleteEntourageContactBuilder();

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

class _$Gdelete_entourage_contactData extends Gdelete_entourage_contactData {
  @override
  final String G__typename;
  @override
  final Gdelete_entourage_contactData_deleteEntourageContact
      deleteEntourageContact;

  factory _$Gdelete_entourage_contactData(
          [void Function(Gdelete_entourage_contactDataBuilder)? updates]) =>
      (new Gdelete_entourage_contactDataBuilder()..update(updates))._build();

  _$Gdelete_entourage_contactData._(
      {required this.G__typename, required this.deleteEntourageContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_entourage_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteEntourageContact,
        r'Gdelete_entourage_contactData', 'deleteEntourageContact');
  }

  @override
  Gdelete_entourage_contactData rebuild(
          void Function(Gdelete_entourage_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_entourage_contactDataBuilder toBuilder() =>
      new Gdelete_entourage_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_entourage_contactData &&
        G__typename == other.G__typename &&
        deleteEntourageContact == other.deleteEntourageContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteEntourageContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_entourage_contactData')
          ..add('G__typename', G__typename)
          ..add('deleteEntourageContact', deleteEntourageContact))
        .toString();
  }
}

class Gdelete_entourage_contactDataBuilder
    implements
        Builder<Gdelete_entourage_contactData,
            Gdelete_entourage_contactDataBuilder> {
  _$Gdelete_entourage_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_entourage_contactData_deleteEntourageContactBuilder?
      _deleteEntourageContact;
  Gdelete_entourage_contactData_deleteEntourageContactBuilder
      get deleteEntourageContact => _$this._deleteEntourageContact ??=
          new Gdelete_entourage_contactData_deleteEntourageContactBuilder();
  set deleteEntourageContact(
          Gdelete_entourage_contactData_deleteEntourageContactBuilder?
              deleteEntourageContact) =>
      _$this._deleteEntourageContact = deleteEntourageContact;

  Gdelete_entourage_contactDataBuilder() {
    Gdelete_entourage_contactData._initializeBuilder(this);
  }

  Gdelete_entourage_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteEntourageContact = $v.deleteEntourageContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_entourage_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_entourage_contactData;
  }

  @override
  void update(void Function(Gdelete_entourage_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_entourage_contactData build() => _build();

  _$Gdelete_entourage_contactData _build() {
    _$Gdelete_entourage_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_entourage_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_entourage_contactData', 'G__typename'),
              deleteEntourageContact: deleteEntourageContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteEntourageContact';
        deleteEntourageContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_entourage_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_entourage_contactData_deleteEntourageContact
    extends Gdelete_entourage_contactData_deleteEntourageContact {
  @override
  final String G__typename;
  @override
  final String effectiveDate;

  factory _$Gdelete_entourage_contactData_deleteEntourageContact(
          [void Function(
                  Gdelete_entourage_contactData_deleteEntourageContactBuilder)?
              updates]) =>
      (new Gdelete_entourage_contactData_deleteEntourageContactBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_entourage_contactData_deleteEntourageContact._(
      {required this.G__typename, required this.effectiveDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_entourage_contactData_deleteEntourageContact', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate,
        r'Gdelete_entourage_contactData_deleteEntourageContact',
        'effectiveDate');
  }

  @override
  Gdelete_entourage_contactData_deleteEntourageContact rebuild(
          void Function(
                  Gdelete_entourage_contactData_deleteEntourageContactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_entourage_contactData_deleteEntourageContactBuilder toBuilder() =>
      new Gdelete_entourage_contactData_deleteEntourageContactBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_entourage_contactData_deleteEntourageContact &&
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
            r'Gdelete_entourage_contactData_deleteEntourageContact')
          ..add('G__typename', G__typename)
          ..add('effectiveDate', effectiveDate))
        .toString();
  }
}

class Gdelete_entourage_contactData_deleteEntourageContactBuilder
    implements
        Builder<Gdelete_entourage_contactData_deleteEntourageContact,
            Gdelete_entourage_contactData_deleteEntourageContactBuilder> {
  _$Gdelete_entourage_contactData_deleteEntourageContact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  Gdelete_entourage_contactData_deleteEntourageContactBuilder() {
    Gdelete_entourage_contactData_deleteEntourageContact._initializeBuilder(
        this);
  }

  Gdelete_entourage_contactData_deleteEntourageContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _effectiveDate = $v.effectiveDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_entourage_contactData_deleteEntourageContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_entourage_contactData_deleteEntourageContact;
  }

  @override
  void update(
      void Function(
              Gdelete_entourage_contactData_deleteEntourageContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_entourage_contactData_deleteEntourageContact build() => _build();

  _$Gdelete_entourage_contactData_deleteEntourageContact _build() {
    final _$result = _$v ??
        new _$Gdelete_entourage_contactData_deleteEntourageContact._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_entourage_contactData_deleteEntourageContact',
                'G__typename'),
            effectiveDate: BuiltValueNullFieldError.checkNotNull(
                effectiveDate,
                r'Gdelete_entourage_contactData_deleteEntourageContact',
                'effectiveDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
