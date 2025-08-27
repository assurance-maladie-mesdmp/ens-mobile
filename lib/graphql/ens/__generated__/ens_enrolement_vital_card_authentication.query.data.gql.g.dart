// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_vital_card_authentication.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gvital_card_authenticationData>
    _$gvitalCardAuthenticationDataSerializer =
    new _$Gvital_card_authenticationDataSerializer();
Serializer<Gvital_card_authenticationData_vitalCardAuthentication>
    _$gvitalCardAuthenticationDataVitalCardAuthenticationSerializer =
    new _$Gvital_card_authenticationData_vitalCardAuthenticationSerializer();
Serializer<Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit>
    _$gvitalCardAuthenticationDataVitalCardAuthenticationOuvrantDroitSerializer =
    new _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitSerializer();
Serializer<
        Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte>
    _$gvitalCardAuthenticationDataVitalCardAuthenticationOuvrantDroitCompteSerializer =
    new _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteSerializer();
Serializer<Gvital_card_authenticationData_vitalCardAuthentication_contact>
    _$gvitalCardAuthenticationDataVitalCardAuthenticationContactSerializer =
    new _$Gvital_card_authenticationData_vitalCardAuthentication_contactSerializer();

class _$Gvital_card_authenticationDataSerializer
    implements StructuredSerializer<Gvital_card_authenticationData> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationData,
    _$Gvital_card_authenticationData
  ];
  @override
  final String wireName = 'Gvital_card_authenticationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gvital_card_authenticationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vitalCardAuthentication',
      serializers.serialize(object.vitalCardAuthentication,
          specifiedType: const FullType(
              Gvital_card_authenticationData_vitalCardAuthentication)),
    ];

    return result;
  }

  @override
  Gvital_card_authenticationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gvital_card_authenticationDataBuilder();

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
        case 'vitalCardAuthentication':
          result.vitalCardAuthentication.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gvital_card_authenticationData_vitalCardAuthentication))!
              as Gvital_card_authenticationData_vitalCardAuthentication);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthenticationSerializer
    implements
        StructuredSerializer<
            Gvital_card_authenticationData_vitalCardAuthentication> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationData_vitalCardAuthentication,
    _$Gvital_card_authenticationData_vitalCardAuthentication
  ];
  @override
  final String wireName =
      'Gvital_card_authenticationData_vitalCardAuthentication';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gvital_card_authenticationData_vitalCardAuthentication object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ouvrantDroit;
    if (value != null) {
      result
        ..add('ouvrantDroit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit)));
    }
    value = object.contact;
    if (value != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gvital_card_authenticationData_vitalCardAuthentication_contact)));
    }
    return result;
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gvital_card_authenticationData_vitalCardAuthenticationBuilder();

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
        case 'ouvrantDroit':
          result.ouvrantDroit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit))!
              as Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit);
          break;
        case 'contact':
          result.contact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gvital_card_authenticationData_vitalCardAuthentication_contact))!
              as Gvital_card_authenticationData_vitalCardAuthentication_contact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitSerializer
    implements
        StructuredSerializer<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit,
    _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
  ];
  @override
  final String wireName =
      'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.compte;
    if (value != null) {
      result
        ..add('compte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte)));
    }
    return result;
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder();

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
        case 'compte':
          result.compte.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte))!
              as Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteSerializer
    implements
        StructuredSerializer<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte,
    _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
  ];
  @override
  final String wireName =
      'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isAccountFound',
      serializers.serialize(object.isAccountFound,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder();

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
        case 'isAccountFound':
          result.isAccountFound = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_contactSerializer
    implements
        StructuredSerializer<
            Gvital_card_authenticationData_vitalCardAuthentication_contact> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationData_vitalCardAuthentication_contact,
    _$Gvital_card_authenticationData_vitalCardAuthentication_contact
  ];
  @override
  final String wireName =
      'Gvital_card_authenticationData_vitalCardAuthentication_contact';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gvital_card_authenticationData_vitalCardAuthentication_contact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_contact deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationData extends Gvital_card_authenticationData {
  @override
  final String G__typename;
  @override
  final Gvital_card_authenticationData_vitalCardAuthentication
      vitalCardAuthentication;

  factory _$Gvital_card_authenticationData(
          [void Function(Gvital_card_authenticationDataBuilder)? updates]) =>
      (new Gvital_card_authenticationDataBuilder()..update(updates))._build();

  _$Gvital_card_authenticationData._(
      {required this.G__typename, required this.vitalCardAuthentication})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gvital_card_authenticationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(vitalCardAuthentication,
        r'Gvital_card_authenticationData', 'vitalCardAuthentication');
  }

  @override
  Gvital_card_authenticationData rebuild(
          void Function(Gvital_card_authenticationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationDataBuilder toBuilder() =>
      new Gvital_card_authenticationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvital_card_authenticationData &&
        G__typename == other.G__typename &&
        vitalCardAuthentication == other.vitalCardAuthentication;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vitalCardAuthentication.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gvital_card_authenticationData')
          ..add('G__typename', G__typename)
          ..add('vitalCardAuthentication', vitalCardAuthentication))
        .toString();
  }
}

class Gvital_card_authenticationDataBuilder
    implements
        Builder<Gvital_card_authenticationData,
            Gvital_card_authenticationDataBuilder> {
  _$Gvital_card_authenticationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gvital_card_authenticationData_vitalCardAuthenticationBuilder?
      _vitalCardAuthentication;
  Gvital_card_authenticationData_vitalCardAuthenticationBuilder
      get vitalCardAuthentication => _$this._vitalCardAuthentication ??=
          new Gvital_card_authenticationData_vitalCardAuthenticationBuilder();
  set vitalCardAuthentication(
          Gvital_card_authenticationData_vitalCardAuthenticationBuilder?
              vitalCardAuthentication) =>
      _$this._vitalCardAuthentication = vitalCardAuthentication;

  Gvital_card_authenticationDataBuilder() {
    Gvital_card_authenticationData._initializeBuilder(this);
  }

  Gvital_card_authenticationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vitalCardAuthentication = $v.vitalCardAuthentication.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvital_card_authenticationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvital_card_authenticationData;
  }

  @override
  void update(void Function(Gvital_card_authenticationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationData build() => _build();

  _$Gvital_card_authenticationData _build() {
    _$Gvital_card_authenticationData _$result;
    try {
      _$result = _$v ??
          new _$Gvital_card_authenticationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gvital_card_authenticationData', 'G__typename'),
              vitalCardAuthentication: vitalCardAuthentication.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vitalCardAuthentication';
        vitalCardAuthentication.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvital_card_authenticationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication
    extends Gvital_card_authenticationData_vitalCardAuthentication {
  @override
  final String G__typename;
  @override
  final Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit?
      ouvrantDroit;
  @override
  final Gvital_card_authenticationData_vitalCardAuthentication_contact? contact;

  factory _$Gvital_card_authenticationData_vitalCardAuthentication(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthenticationBuilder)?
              updates]) =>
      (new Gvital_card_authenticationData_vitalCardAuthenticationBuilder()
            ..update(updates))
          ._build();

  _$Gvital_card_authenticationData_vitalCardAuthentication._(
      {required this.G__typename, this.ouvrantDroit, this.contact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gvital_card_authenticationData_vitalCardAuthentication',
        'G__typename');
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication rebuild(
          void Function(
                  Gvital_card_authenticationData_vitalCardAuthenticationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationData_vitalCardAuthenticationBuilder toBuilder() =>
      new Gvital_card_authenticationData_vitalCardAuthenticationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvital_card_authenticationData_vitalCardAuthentication &&
        G__typename == other.G__typename &&
        ouvrantDroit == other.ouvrantDroit &&
        contact == other.contact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ouvrantDroit.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gvital_card_authenticationData_vitalCardAuthentication')
          ..add('G__typename', G__typename)
          ..add('ouvrantDroit', ouvrantDroit)
          ..add('contact', contact))
        .toString();
  }
}

class Gvital_card_authenticationData_vitalCardAuthenticationBuilder
    implements
        Builder<Gvital_card_authenticationData_vitalCardAuthentication,
            Gvital_card_authenticationData_vitalCardAuthenticationBuilder> {
  _$Gvital_card_authenticationData_vitalCardAuthentication? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder?
      _ouvrantDroit;
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
      get ouvrantDroit => _$this._ouvrantDroit ??=
          new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder();
  set ouvrantDroit(
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder?
              ouvrantDroit) =>
      _$this._ouvrantDroit = ouvrantDroit;

  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder?
      _contact;
  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
      get contact => _$this._contact ??=
          new Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder();
  set contact(
          Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder?
              contact) =>
      _$this._contact = contact;

  Gvital_card_authenticationData_vitalCardAuthenticationBuilder() {
    Gvital_card_authenticationData_vitalCardAuthentication._initializeBuilder(
        this);
  }

  Gvital_card_authenticationData_vitalCardAuthenticationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ouvrantDroit = $v.ouvrantDroit?.toBuilder();
      _contact = $v.contact?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvital_card_authenticationData_vitalCardAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvital_card_authenticationData_vitalCardAuthentication;
  }

  @override
  void update(
      void Function(
              Gvital_card_authenticationData_vitalCardAuthenticationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication build() => _build();

  _$Gvital_card_authenticationData_vitalCardAuthentication _build() {
    _$Gvital_card_authenticationData_vitalCardAuthentication _$result;
    try {
      _$result = _$v ??
          new _$Gvital_card_authenticationData_vitalCardAuthentication._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gvital_card_authenticationData_vitalCardAuthentication',
                  'G__typename'),
              ouvrantDroit: _ouvrantDroit?.build(),
              contact: _contact?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ouvrantDroit';
        _ouvrantDroit?.build();
        _$failedField = 'contact';
        _contact?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvital_card_authenticationData_vitalCardAuthentication',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
    extends Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit {
  @override
  final String G__typename;
  @override
  final Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte?
      compte;

  factory _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder)?
              updates]) =>
      (new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder()
            ..update(updates))
          ._build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit._(
      {required this.G__typename, this.compte})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit',
        'G__typename');
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit rebuild(
          void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
      toBuilder() =>
          new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit &&
        G__typename == other.G__typename &&
        compte == other.compte;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, compte.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit')
          ..add('G__typename', G__typename)
          ..add('compte', compte))
        .toString();
  }
}

class Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
    implements
        Builder<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit,
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder> {
  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder?
      _compte;
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
      get compte => _$this._compte ??=
          new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder();
  set compte(
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder?
              compte) =>
      _$this._compte = compte;

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder() {
    Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
        ._initializeBuilder(this);
  }

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _compte = $v.compte?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit;
  }

  @override
  void update(
      void Function(
              Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit build() =>
      _build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
      _build() {
    _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
        _$result;
    try {
      _$result = _$v ??
          new _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit',
                  'G__typename'),
              compte: _compte?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compte';
        _compte?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
    extends Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte {
  @override
  final String G__typename;
  @override
  final bool isAccountFound;

  factory _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder)?
              updates]) =>
      (new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder()
            ..update(updates))
          ._build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte._(
      {required this.G__typename, required this.isAccountFound})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isAccountFound,
        r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte',
        'isAccountFound');
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
      rebuild(
              void Function(
                      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
      toBuilder() =>
          new Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte &&
        G__typename == other.G__typename &&
        isAccountFound == other.isAccountFound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isAccountFound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte')
          ..add('G__typename', G__typename)
          ..add('isAccountFound', isAccountFound))
        .toString();
  }
}

class Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
    implements
        Builder<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte,
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder> {
  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isAccountFound;
  bool? get isAccountFound => _$this._isAccountFound;
  set isAccountFound(bool? isAccountFound) =>
      _$this._isAccountFound = isAccountFound;

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder() {
    Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
        ._initializeBuilder(this);
  }

  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isAccountFound = $v.isAccountFound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte;
  }

  @override
  void update(
      void Function(
              Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
      build() => _build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
      _build() {
    final _$result = _$v ??
        new _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte',
                'G__typename'),
            isAccountFound: BuiltValueNullFieldError.checkNotNull(
                isAccountFound,
                r'Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte',
                'isAccountFound'));
    replace(_$result);
    return _$result;
  }
}

class _$Gvital_card_authenticationData_vitalCardAuthentication_contact
    extends Gvital_card_authenticationData_vitalCardAuthentication_contact {
  @override
  final String G__typename;
  @override
  final String? email;
  @override
  final String? mobileNumber;

  factory _$Gvital_card_authenticationData_vitalCardAuthentication_contact(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder)?
              updates]) =>
      (new Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder()
            ..update(updates))
          ._build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_contact._(
      {required this.G__typename, this.email, this.mobileNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gvital_card_authenticationData_vitalCardAuthentication_contact',
        'G__typename');
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_contact rebuild(
          void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
      toBuilder() =>
          new Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gvital_card_authenticationData_vitalCardAuthentication_contact &&
        G__typename == other.G__typename &&
        email == other.email &&
        mobileNumber == other.mobileNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gvital_card_authenticationData_vitalCardAuthentication_contact')
          ..add('G__typename', G__typename)
          ..add('email', email)
          ..add('mobileNumber', mobileNumber))
        .toString();
  }
}

class Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
    implements
        Builder<Gvital_card_authenticationData_vitalCardAuthentication_contact,
            Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder> {
  _$Gvital_card_authenticationData_vitalCardAuthentication_contact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder() {
    Gvital_card_authenticationData_vitalCardAuthentication_contact
        ._initializeBuilder(this);
  }

  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _mobileNumber = $v.mobileNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gvital_card_authenticationData_vitalCardAuthentication_contact other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gvital_card_authenticationData_vitalCardAuthentication_contact;
  }

  @override
  void update(
      void Function(
              Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationData_vitalCardAuthentication_contact build() =>
      _build();

  _$Gvital_card_authenticationData_vitalCardAuthentication_contact _build() {
    final _$result = _$v ??
        new _$Gvital_card_authenticationData_vitalCardAuthentication_contact._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gvital_card_authenticationData_vitalCardAuthentication_contact',
                'G__typename'),
            email: email,
            mobileNumber: mobileNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
