// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_create_contact.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_contactVars> _$gcreateContactVarsSerializer =
    new _$Gcreate_contactVarsSerializer();

class _$Gcreate_contactVarsSerializer
    implements StructuredSerializer<Gcreate_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gcreate_contactVars,
    _$Gcreate_contactVars
  ];
  @override
  final String wireName = 'Gcreate_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'esId',
      serializers.serialize(object.esId, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_contactVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'esId':
          result.esId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_contactVars extends Gcreate_contactVars {
  @override
  final String patientId;
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String esId;

  factory _$Gcreate_contactVars(
          [void Function(Gcreate_contactVarsBuilder)? updates]) =>
      (new Gcreate_contactVarsBuilder()..update(updates))._build();

  _$Gcreate_contactVars._(
      {required this.patientId,
      required this.email,
      required this.fullName,
      required this.esId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gcreate_contactVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        email, r'Gcreate_contactVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'Gcreate_contactVars', 'fullName');
    BuiltValueNullFieldError.checkNotNull(esId, r'Gcreate_contactVars', 'esId');
  }

  @override
  Gcreate_contactVars rebuild(
          void Function(Gcreate_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_contactVarsBuilder toBuilder() =>
      new Gcreate_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_contactVars &&
        patientId == other.patientId &&
        email == other.email &&
        fullName == other.fullName &&
        esId == other.esId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, esId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_contactVars')
          ..add('patientId', patientId)
          ..add('email', email)
          ..add('fullName', fullName)
          ..add('esId', esId))
        .toString();
  }
}

class Gcreate_contactVarsBuilder
    implements Builder<Gcreate_contactVars, Gcreate_contactVarsBuilder> {
  _$Gcreate_contactVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _esId;
  String? get esId => _$this._esId;
  set esId(String? esId) => _$this._esId = esId;

  Gcreate_contactVarsBuilder();

  Gcreate_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _email = $v.email;
      _fullName = $v.fullName;
      _esId = $v.esId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_contactVars;
  }

  @override
  void update(void Function(Gcreate_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_contactVars build() => _build();

  _$Gcreate_contactVars _build() {
    final _$result = _$v ??
        new _$Gcreate_contactVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gcreate_contactVars', 'patientId'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gcreate_contactVars', 'email'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'Gcreate_contactVars', 'fullName'),
            esId: BuiltValueNullFieldError.checkNotNull(
                esId, r'Gcreate_contactVars', 'esId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
