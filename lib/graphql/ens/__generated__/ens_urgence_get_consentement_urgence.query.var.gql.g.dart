// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_urgence_get_consentement_urgence.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_consentement_urgenceVars>
    _$ggetConsentementUrgenceVarsSerializer =
    new _$Gget_consentement_urgenceVarsSerializer();

class _$Gget_consentement_urgenceVarsSerializer
    implements StructuredSerializer<Gget_consentement_urgenceVars> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_urgenceVars,
    _$Gget_consentement_urgenceVars
  ];
  @override
  final String wireName = 'Gget_consentement_urgenceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_consentement_urgenceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dmpConsentementInput',
      serializers.serialize(object.dmpConsentementInput,
          specifiedType: const FullType(_i1.GGetDmpConsentementInput)),
    ];

    return result;
  }

  @override
  Gget_consentement_urgenceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_consentement_urgenceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dmpConsentementInput':
          result.dmpConsentementInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetDmpConsentementInput))!
              as _i1.GGetDmpConsentementInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consentement_urgenceVars extends Gget_consentement_urgenceVars {
  @override
  final _i1.GGetDmpConsentementInput dmpConsentementInput;

  factory _$Gget_consentement_urgenceVars(
          [void Function(Gget_consentement_urgenceVarsBuilder)? updates]) =>
      (new Gget_consentement_urgenceVarsBuilder()..update(updates))._build();

  _$Gget_consentement_urgenceVars._({required this.dmpConsentementInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dmpConsentementInput,
        r'Gget_consentement_urgenceVars', 'dmpConsentementInput');
  }

  @override
  Gget_consentement_urgenceVars rebuild(
          void Function(Gget_consentement_urgenceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_urgenceVarsBuilder toBuilder() =>
      new Gget_consentement_urgenceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consentement_urgenceVars &&
        dmpConsentementInput == other.dmpConsentementInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dmpConsentementInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_consentement_urgenceVars')
          ..add('dmpConsentementInput', dmpConsentementInput))
        .toString();
  }
}

class Gget_consentement_urgenceVarsBuilder
    implements
        Builder<Gget_consentement_urgenceVars,
            Gget_consentement_urgenceVarsBuilder> {
  _$Gget_consentement_urgenceVars? _$v;

  _i1.GGetDmpConsentementInputBuilder? _dmpConsentementInput;
  _i1.GGetDmpConsentementInputBuilder get dmpConsentementInput =>
      _$this._dmpConsentementInput ??=
          new _i1.GGetDmpConsentementInputBuilder();
  set dmpConsentementInput(
          _i1.GGetDmpConsentementInputBuilder? dmpConsentementInput) =>
      _$this._dmpConsentementInput = dmpConsentementInput;

  Gget_consentement_urgenceVarsBuilder();

  Gget_consentement_urgenceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dmpConsentementInput = $v.dmpConsentementInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_consentement_urgenceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consentement_urgenceVars;
  }

  @override
  void update(void Function(Gget_consentement_urgenceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_urgenceVars build() => _build();

  _$Gget_consentement_urgenceVars _build() {
    _$Gget_consentement_urgenceVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_consentement_urgenceVars._(
              dmpConsentementInput: dmpConsentementInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dmpConsentementInput';
        dmpConsentementInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consentement_urgenceVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
