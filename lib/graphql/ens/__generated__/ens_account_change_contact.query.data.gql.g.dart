// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_change_contact.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gchange_contactData> _$gchangeContactDataSerializer =
    new _$Gchange_contactDataSerializer();
Serializer<Gchange_contactData_changeContact>
    _$gchangeContactDataChangeContactSerializer =
    new _$Gchange_contactData_changeContactSerializer();

class _$Gchange_contactDataSerializer
    implements StructuredSerializer<Gchange_contactData> {
  @override
  final Iterable<Type> types = const [
    Gchange_contactData,
    _$Gchange_contactData
  ];
  @override
  final String wireName = 'Gchange_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'changeContact',
      serializers.serialize(object.changeContact,
          specifiedType: const FullType(Gchange_contactData_changeContact)),
    ];

    return result;
  }

  @override
  Gchange_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_contactDataBuilder();

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
        case 'changeContact':
          result.changeContact.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gchange_contactData_changeContact))!
              as Gchange_contactData_changeContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gchange_contactData_changeContactSerializer
    implements StructuredSerializer<Gchange_contactData_changeContact> {
  @override
  final Iterable<Type> types = const [
    Gchange_contactData_changeContact,
    _$Gchange_contactData_changeContact
  ];
  @override
  final String wireName = 'Gchange_contactData_changeContact';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_contactData_changeContact object,
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
  Gchange_contactData_changeContact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_contactData_changeContactBuilder();

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

class _$Gchange_contactData extends Gchange_contactData {
  @override
  final String G__typename;
  @override
  final Gchange_contactData_changeContact changeContact;

  factory _$Gchange_contactData(
          [void Function(Gchange_contactDataBuilder)? updates]) =>
      (new Gchange_contactDataBuilder()..update(updates))._build();

  _$Gchange_contactData._(
      {required this.G__typename, required this.changeContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gchange_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        changeContact, r'Gchange_contactData', 'changeContact');
  }

  @override
  Gchange_contactData rebuild(
          void Function(Gchange_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_contactDataBuilder toBuilder() =>
      new Gchange_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_contactData &&
        G__typename == other.G__typename &&
        changeContact == other.changeContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, changeContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gchange_contactData')
          ..add('G__typename', G__typename)
          ..add('changeContact', changeContact))
        .toString();
  }
}

class Gchange_contactDataBuilder
    implements Builder<Gchange_contactData, Gchange_contactDataBuilder> {
  _$Gchange_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gchange_contactData_changeContactBuilder? _changeContact;
  Gchange_contactData_changeContactBuilder get changeContact =>
      _$this._changeContact ??= new Gchange_contactData_changeContactBuilder();
  set changeContact(Gchange_contactData_changeContactBuilder? changeContact) =>
      _$this._changeContact = changeContact;

  Gchange_contactDataBuilder() {
    Gchange_contactData._initializeBuilder(this);
  }

  Gchange_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _changeContact = $v.changeContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_contactData;
  }

  @override
  void update(void Function(Gchange_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_contactData build() => _build();

  _$Gchange_contactData _build() {
    _$Gchange_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gchange_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gchange_contactData', 'G__typename'),
              changeContact: changeContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changeContact';
        changeContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gchange_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gchange_contactData_changeContact
    extends Gchange_contactData_changeContact {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gchange_contactData_changeContact(
          [void Function(Gchange_contactData_changeContactBuilder)? updates]) =>
      (new Gchange_contactData_changeContactBuilder()..update(updates))
          ._build();

  _$Gchange_contactData_changeContact._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gchange_contactData_changeContact', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gchange_contactData_changeContact', 'success');
  }

  @override
  Gchange_contactData_changeContact rebuild(
          void Function(Gchange_contactData_changeContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_contactData_changeContactBuilder toBuilder() =>
      new Gchange_contactData_changeContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_contactData_changeContact &&
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
    return (newBuiltValueToStringHelper(r'Gchange_contactData_changeContact')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gchange_contactData_changeContactBuilder
    implements
        Builder<Gchange_contactData_changeContact,
            Gchange_contactData_changeContactBuilder> {
  _$Gchange_contactData_changeContact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gchange_contactData_changeContactBuilder() {
    Gchange_contactData_changeContact._initializeBuilder(this);
  }

  Gchange_contactData_changeContactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_contactData_changeContact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_contactData_changeContact;
  }

  @override
  void update(
      void Function(Gchange_contactData_changeContactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_contactData_changeContact build() => _build();

  _$Gchange_contactData_changeContact _build() {
    final _$result = _$v ??
        new _$Gchange_contactData_changeContact._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gchange_contactData_changeContact', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gchange_contactData_changeContact', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
