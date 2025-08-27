// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_update.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmodify_entourage_contactData>
    _$gmodifyEntourageContactDataSerializer =
    new _$Gmodify_entourage_contactDataSerializer();
Serializer<Gmodify_entourage_contactData_putEntourageContact>
    _$gmodifyEntourageContactDataPutEntourageContactSerializer =
    new _$Gmodify_entourage_contactData_putEntourageContactSerializer();

class _$Gmodify_entourage_contactDataSerializer
    implements StructuredSerializer<Gmodify_entourage_contactData> {
  @override
  final Iterable<Type> types = const [
    Gmodify_entourage_contactData,
    _$Gmodify_entourage_contactData
  ];
  @override
  final String wireName = 'Gmodify_entourage_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmodify_entourage_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putEntourageContact',
      serializers.serialize(object.putEntourageContact,
          specifiedType: const FullType(
              Gmodify_entourage_contactData_putEntourageContact)),
    ];

    return result;
  }

  @override
  Gmodify_entourage_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmodify_entourage_contactDataBuilder();

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
        case 'putEntourageContact':
          result.putEntourageContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gmodify_entourage_contactData_putEntourageContact))!
              as Gmodify_entourage_contactData_putEntourageContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmodify_entourage_contactData_putEntourageContactSerializer
    implements
        StructuredSerializer<
            Gmodify_entourage_contactData_putEntourageContact> {
  @override
  final Iterable<Type> types = const [
    Gmodify_entourage_contactData_putEntourageContact,
    _$Gmodify_entourage_contactData_putEntourageContact
  ];
  @override
  final String wireName = 'Gmodify_entourage_contactData_putEntourageContact';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gmodify_entourage_contactData_putEntourageContact object,
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
  Gmodify_entourage_contactData_putEntourageContact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gmodify_entourage_contactData_putEntourageContactBuilder();

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

class _$Gmodify_entourage_contactData extends Gmodify_entourage_contactData {
  @override
  final String G__typename;
  @override
  final Gmodify_entourage_contactData_putEntourageContact putEntourageContact;

  factory _$Gmodify_entourage_contactData(
          [void Function(Gmodify_entourage_contactDataBuilder)? updates]) =>
      (new Gmodify_entourage_contactDataBuilder()..update(updates))._build();

  _$Gmodify_entourage_contactData._(
      {required this.G__typename, required this.putEntourageContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmodify_entourage_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(putEntourageContact,
        r'Gmodify_entourage_contactData', 'putEntourageContact');
  }

  @override
  Gmodify_entourage_contactData rebuild(
          void Function(Gmodify_entourage_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmodify_entourage_contactDataBuilder toBuilder() =>
      new Gmodify_entourage_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmodify_entourage_contactData &&
        G__typename == other.G__typename &&
        putEntourageContact == other.putEntourageContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putEntourageContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmodify_entourage_contactData')
          ..add('G__typename', G__typename)
          ..add('putEntourageContact', putEntourageContact))
        .toString();
  }
}

class Gmodify_entourage_contactDataBuilder
    implements
        Builder<Gmodify_entourage_contactData,
            Gmodify_entourage_contactDataBuilder> {
  _$Gmodify_entourage_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmodify_entourage_contactData_putEntourageContactBuilder?
      _putEntourageContact;
  Gmodify_entourage_contactData_putEntourageContactBuilder
      get putEntourageContact => _$this._putEntourageContact ??=
          new Gmodify_entourage_contactData_putEntourageContactBuilder();
  set putEntourageContact(
          Gmodify_entourage_contactData_putEntourageContactBuilder?
              putEntourageContact) =>
      _$this._putEntourageContact = putEntourageContact;

  Gmodify_entourage_contactDataBuilder() {
    Gmodify_entourage_contactData._initializeBuilder(this);
  }

  Gmodify_entourage_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putEntourageContact = $v.putEntourageContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmodify_entourage_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmodify_entourage_contactData;
  }

  @override
  void update(void Function(Gmodify_entourage_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmodify_entourage_contactData build() => _build();

  _$Gmodify_entourage_contactData _build() {
    _$Gmodify_entourage_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gmodify_entourage_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gmodify_entourage_contactData', 'G__typename'),
              putEntourageContact: putEntourageContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putEntourageContact';
        putEntourageContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmodify_entourage_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmodify_entourage_contactData_putEntourageContact
    extends Gmodify_entourage_contactData_putEntourageContact {
  @override
  final String G__typename;
  @override
  final String effectiveDate;

  factory _$Gmodify_entourage_contactData_putEntourageContact(
          [void Function(
                  Gmodify_entourage_contactData_putEntourageContactBuilder)?
              updates]) =>
      (new Gmodify_entourage_contactData_putEntourageContactBuilder()
            ..update(updates))
          ._build();

  _$Gmodify_entourage_contactData_putEntourageContact._(
      {required this.G__typename, required this.effectiveDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gmodify_entourage_contactData_putEntourageContact', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(effectiveDate,
        r'Gmodify_entourage_contactData_putEntourageContact', 'effectiveDate');
  }

  @override
  Gmodify_entourage_contactData_putEntourageContact rebuild(
          void Function(
                  Gmodify_entourage_contactData_putEntourageContactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmodify_entourage_contactData_putEntourageContactBuilder toBuilder() =>
      new Gmodify_entourage_contactData_putEntourageContactBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmodify_entourage_contactData_putEntourageContact &&
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
            r'Gmodify_entourage_contactData_putEntourageContact')
          ..add('G__typename', G__typename)
          ..add('effectiveDate', effectiveDate))
        .toString();
  }
}

class Gmodify_entourage_contactData_putEntourageContactBuilder
    implements
        Builder<Gmodify_entourage_contactData_putEntourageContact,
            Gmodify_entourage_contactData_putEntourageContactBuilder> {
  _$Gmodify_entourage_contactData_putEntourageContact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  Gmodify_entourage_contactData_putEntourageContactBuilder() {
    Gmodify_entourage_contactData_putEntourageContact._initializeBuilder(this);
  }

  Gmodify_entourage_contactData_putEntourageContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _effectiveDate = $v.effectiveDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmodify_entourage_contactData_putEntourageContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmodify_entourage_contactData_putEntourageContact;
  }

  @override
  void update(
      void Function(Gmodify_entourage_contactData_putEntourageContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmodify_entourage_contactData_putEntourageContact build() => _build();

  _$Gmodify_entourage_contactData_putEntourageContact _build() {
    final _$result = _$v ??
        new _$Gmodify_entourage_contactData_putEntourageContact._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gmodify_entourage_contactData_putEntourageContact',
                'G__typename'),
            effectiveDate: BuiltValueNullFieldError.checkNotNull(
                effectiveDate,
                r'Gmodify_entourage_contactData_putEntourageContact',
                'effectiveDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
