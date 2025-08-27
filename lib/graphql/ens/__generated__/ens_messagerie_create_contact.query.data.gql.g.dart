// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_create_contact.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_contactData> _$gcreateContactDataSerializer =
    new _$Gcreate_contactDataSerializer();
Serializer<Gcreate_contactData_createContactWithControl>
    _$gcreateContactDataCreateContactWithControlSerializer =
    new _$Gcreate_contactData_createContactWithControlSerializer();

class _$Gcreate_contactDataSerializer
    implements StructuredSerializer<Gcreate_contactData> {
  @override
  final Iterable<Type> types = const [
    Gcreate_contactData,
    _$Gcreate_contactData
  ];
  @override
  final String wireName = 'Gcreate_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createContactWithControl',
      serializers.serialize(object.createContactWithControl,
          specifiedType:
              const FullType(Gcreate_contactData_createContactWithControl)),
    ];

    return result;
  }

  @override
  Gcreate_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_contactDataBuilder();

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
        case 'createContactWithControl':
          result.createContactWithControl.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gcreate_contactData_createContactWithControl))!
              as Gcreate_contactData_createContactWithControl);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_contactData_createContactWithControlSerializer
    implements
        StructuredSerializer<Gcreate_contactData_createContactWithControl> {
  @override
  final Iterable<Type> types = const [
    Gcreate_contactData_createContactWithControl,
    _$Gcreate_contactData_createContactWithControl
  ];
  @override
  final String wireName = 'Gcreate_contactData_createContactWithControl';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gcreate_contactData_createContactWithControl object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'contactId',
      serializers.serialize(object.contactId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_contactData_createContactWithControl deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_contactData_createContactWithControlBuilder();

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
        case 'contactId':
          result.contactId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_contactData extends Gcreate_contactData {
  @override
  final String G__typename;
  @override
  final Gcreate_contactData_createContactWithControl createContactWithControl;

  factory _$Gcreate_contactData(
          [void Function(Gcreate_contactDataBuilder)? updates]) =>
      (new Gcreate_contactDataBuilder()..update(updates))._build();

  _$Gcreate_contactData._(
      {required this.G__typename, required this.createContactWithControl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(createContactWithControl,
        r'Gcreate_contactData', 'createContactWithControl');
  }

  @override
  Gcreate_contactData rebuild(
          void Function(Gcreate_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_contactDataBuilder toBuilder() =>
      new Gcreate_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_contactData &&
        G__typename == other.G__typename &&
        createContactWithControl == other.createContactWithControl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createContactWithControl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_contactData')
          ..add('G__typename', G__typename)
          ..add('createContactWithControl', createContactWithControl))
        .toString();
  }
}

class Gcreate_contactDataBuilder
    implements Builder<Gcreate_contactData, Gcreate_contactDataBuilder> {
  _$Gcreate_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_contactData_createContactWithControlBuilder?
      _createContactWithControl;
  Gcreate_contactData_createContactWithControlBuilder
      get createContactWithControl => _$this._createContactWithControl ??=
          new Gcreate_contactData_createContactWithControlBuilder();
  set createContactWithControl(
          Gcreate_contactData_createContactWithControlBuilder?
              createContactWithControl) =>
      _$this._createContactWithControl = createContactWithControl;

  Gcreate_contactDataBuilder() {
    Gcreate_contactData._initializeBuilder(this);
  }

  Gcreate_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createContactWithControl = $v.createContactWithControl.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_contactData;
  }

  @override
  void update(void Function(Gcreate_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_contactData build() => _build();

  _$Gcreate_contactData _build() {
    _$Gcreate_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_contactData', 'G__typename'),
              createContactWithControl: createContactWithControl.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createContactWithControl';
        createContactWithControl.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_contactData_createContactWithControl
    extends Gcreate_contactData_createContactWithControl {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final String contactId;

  factory _$Gcreate_contactData_createContactWithControl(
          [void Function(Gcreate_contactData_createContactWithControlBuilder)?
              updates]) =>
      (new Gcreate_contactData_createContactWithControlBuilder()
            ..update(updates))
          ._build();

  _$Gcreate_contactData_createContactWithControl._(
      {required this.G__typename,
      required this.success,
      required this.contactId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gcreate_contactData_createContactWithControl', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gcreate_contactData_createContactWithControl', 'success');
    BuiltValueNullFieldError.checkNotNull(contactId,
        r'Gcreate_contactData_createContactWithControl', 'contactId');
  }

  @override
  Gcreate_contactData_createContactWithControl rebuild(
          void Function(Gcreate_contactData_createContactWithControlBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_contactData_createContactWithControlBuilder toBuilder() =>
      new Gcreate_contactData_createContactWithControlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_contactData_createContactWithControl &&
        G__typename == other.G__typename &&
        success == other.success &&
        contactId == other.contactId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, contactId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcreate_contactData_createContactWithControl')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('contactId', contactId))
        .toString();
  }
}

class Gcreate_contactData_createContactWithControlBuilder
    implements
        Builder<Gcreate_contactData_createContactWithControl,
            Gcreate_contactData_createContactWithControlBuilder> {
  _$Gcreate_contactData_createContactWithControl? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _contactId;
  String? get contactId => _$this._contactId;
  set contactId(String? contactId) => _$this._contactId = contactId;

  Gcreate_contactData_createContactWithControlBuilder() {
    Gcreate_contactData_createContactWithControl._initializeBuilder(this);
  }

  Gcreate_contactData_createContactWithControlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _contactId = $v.contactId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_contactData_createContactWithControl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_contactData_createContactWithControl;
  }

  @override
  void update(
      void Function(Gcreate_contactData_createContactWithControlBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_contactData_createContactWithControl build() => _build();

  _$Gcreate_contactData_createContactWithControl _build() {
    final _$result = _$v ??
        new _$Gcreate_contactData_createContactWithControl._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gcreate_contactData_createContactWithControl', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gcreate_contactData_createContactWithControl', 'success'),
            contactId: BuiltValueNullFieldError.checkNotNull(contactId,
                r'Gcreate_contactData_createContactWithControl', 'contactId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
