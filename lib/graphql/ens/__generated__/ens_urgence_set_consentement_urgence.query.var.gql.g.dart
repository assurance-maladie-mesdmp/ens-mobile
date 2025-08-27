// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_urgence_set_consentement_urgence.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_consentement_urgenceVars>
    _$gsetConsentementUrgenceVarsSerializer =
    new _$Gset_consentement_urgenceVarsSerializer();

class _$Gset_consentement_urgenceVarsSerializer
    implements StructuredSerializer<Gset_consentement_urgenceVars> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceVars,
    _$Gset_consentement_urgenceVars
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'newValueETREAT',
      serializers.serialize(object.newValueETREAT,
          specifiedType: const FullType(bool)),
      'consentementIdETREAT',
      serializers.serialize(object.consentementIdETREAT,
          specifiedType: const FullType(String)),
      'newValueBTG',
      serializers.serialize(object.newValueBTG,
          specifiedType: const FullType(bool)),
      'consentementIdBTG',
      serializers.serialize(object.consentementIdBTG,
          specifiedType: const FullType(String)),
      'newValueMASKED',
      serializers.serialize(object.newValueMASKED,
          specifiedType: const FullType(bool)),
      'consentementIdMASKED',
      serializers.serialize(object.consentementIdMASKED,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gset_consentement_urgenceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'newValueETREAT':
          result.newValueETREAT = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'consentementIdETREAT':
          result.consentementIdETREAT = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'newValueBTG':
          result.newValueBTG = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'consentementIdBTG':
          result.consentementIdBTG = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'newValueMASKED':
          result.newValueMASKED = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'consentementIdMASKED':
          result.consentementIdMASKED = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_consentement_urgenceVars extends Gset_consentement_urgenceVars {
  @override
  final bool newValueETREAT;
  @override
  final String consentementIdETREAT;
  @override
  final bool newValueBTG;
  @override
  final String consentementIdBTG;
  @override
  final bool newValueMASKED;
  @override
  final String consentementIdMASKED;
  @override
  final String patientId;

  factory _$Gset_consentement_urgenceVars(
          [void Function(Gset_consentement_urgenceVarsBuilder)? updates]) =>
      (new Gset_consentement_urgenceVarsBuilder()..update(updates))._build();

  _$Gset_consentement_urgenceVars._(
      {required this.newValueETREAT,
      required this.consentementIdETREAT,
      required this.newValueBTG,
      required this.consentementIdBTG,
      required this.newValueMASKED,
      required this.consentementIdMASKED,
      required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        newValueETREAT, r'Gset_consentement_urgenceVars', 'newValueETREAT');
    BuiltValueNullFieldError.checkNotNull(consentementIdETREAT,
        r'Gset_consentement_urgenceVars', 'consentementIdETREAT');
    BuiltValueNullFieldError.checkNotNull(
        newValueBTG, r'Gset_consentement_urgenceVars', 'newValueBTG');
    BuiltValueNullFieldError.checkNotNull(consentementIdBTG,
        r'Gset_consentement_urgenceVars', 'consentementIdBTG');
    BuiltValueNullFieldError.checkNotNull(
        newValueMASKED, r'Gset_consentement_urgenceVars', 'newValueMASKED');
    BuiltValueNullFieldError.checkNotNull(consentementIdMASKED,
        r'Gset_consentement_urgenceVars', 'consentementIdMASKED');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gset_consentement_urgenceVars', 'patientId');
  }

  @override
  Gset_consentement_urgenceVars rebuild(
          void Function(Gset_consentement_urgenceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceVarsBuilder toBuilder() =>
      new Gset_consentement_urgenceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_consentement_urgenceVars &&
        newValueETREAT == other.newValueETREAT &&
        consentementIdETREAT == other.consentementIdETREAT &&
        newValueBTG == other.newValueBTG &&
        consentementIdBTG == other.consentementIdBTG &&
        newValueMASKED == other.newValueMASKED &&
        consentementIdMASKED == other.consentementIdMASKED &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newValueETREAT.hashCode);
    _$hash = $jc(_$hash, consentementIdETREAT.hashCode);
    _$hash = $jc(_$hash, newValueBTG.hashCode);
    _$hash = $jc(_$hash, consentementIdBTG.hashCode);
    _$hash = $jc(_$hash, newValueMASKED.hashCode);
    _$hash = $jc(_$hash, consentementIdMASKED.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_consentement_urgenceVars')
          ..add('newValueETREAT', newValueETREAT)
          ..add('consentementIdETREAT', consentementIdETREAT)
          ..add('newValueBTG', newValueBTG)
          ..add('consentementIdBTG', consentementIdBTG)
          ..add('newValueMASKED', newValueMASKED)
          ..add('consentementIdMASKED', consentementIdMASKED)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gset_consentement_urgenceVarsBuilder
    implements
        Builder<Gset_consentement_urgenceVars,
            Gset_consentement_urgenceVarsBuilder> {
  _$Gset_consentement_urgenceVars? _$v;

  bool? _newValueETREAT;
  bool? get newValueETREAT => _$this._newValueETREAT;
  set newValueETREAT(bool? newValueETREAT) =>
      _$this._newValueETREAT = newValueETREAT;

  String? _consentementIdETREAT;
  String? get consentementIdETREAT => _$this._consentementIdETREAT;
  set consentementIdETREAT(String? consentementIdETREAT) =>
      _$this._consentementIdETREAT = consentementIdETREAT;

  bool? _newValueBTG;
  bool? get newValueBTG => _$this._newValueBTG;
  set newValueBTG(bool? newValueBTG) => _$this._newValueBTG = newValueBTG;

  String? _consentementIdBTG;
  String? get consentementIdBTG => _$this._consentementIdBTG;
  set consentementIdBTG(String? consentementIdBTG) =>
      _$this._consentementIdBTG = consentementIdBTG;

  bool? _newValueMASKED;
  bool? get newValueMASKED => _$this._newValueMASKED;
  set newValueMASKED(bool? newValueMASKED) =>
      _$this._newValueMASKED = newValueMASKED;

  String? _consentementIdMASKED;
  String? get consentementIdMASKED => _$this._consentementIdMASKED;
  set consentementIdMASKED(String? consentementIdMASKED) =>
      _$this._consentementIdMASKED = consentementIdMASKED;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gset_consentement_urgenceVarsBuilder();

  Gset_consentement_urgenceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newValueETREAT = $v.newValueETREAT;
      _consentementIdETREAT = $v.consentementIdETREAT;
      _newValueBTG = $v.newValueBTG;
      _consentementIdBTG = $v.consentementIdBTG;
      _newValueMASKED = $v.newValueMASKED;
      _consentementIdMASKED = $v.consentementIdMASKED;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_consentement_urgenceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceVars;
  }

  @override
  void update(void Function(Gset_consentement_urgenceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceVars build() => _build();

  _$Gset_consentement_urgenceVars _build() {
    final _$result = _$v ??
        new _$Gset_consentement_urgenceVars._(
            newValueETREAT: BuiltValueNullFieldError.checkNotNull(
                newValueETREAT, r'Gset_consentement_urgenceVars', 'newValueETREAT'),
            consentementIdETREAT: BuiltValueNullFieldError.checkNotNull(
                consentementIdETREAT, r'Gset_consentement_urgenceVars', 'consentementIdETREAT'),
            newValueBTG: BuiltValueNullFieldError.checkNotNull(
                newValueBTG, r'Gset_consentement_urgenceVars', 'newValueBTG'),
            consentementIdBTG: BuiltValueNullFieldError.checkNotNull(
                consentementIdBTG, r'Gset_consentement_urgenceVars', 'consentementIdBTG'),
            newValueMASKED: BuiltValueNullFieldError.checkNotNull(
                newValueMASKED, r'Gset_consentement_urgenceVars', 'newValueMASKED'),
            consentementIdMASKED: BuiltValueNullFieldError.checkNotNull(
                consentementIdMASKED, r'Gset_consentement_urgenceVars', 'consentementIdMASKED'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gset_consentement_urgenceVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
