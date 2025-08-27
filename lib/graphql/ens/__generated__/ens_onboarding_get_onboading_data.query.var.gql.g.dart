// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_onboarding_get_onboading_data.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_onboarding_dataVars> _$ggetOnboardingDataVarsSerializer =
    new _$Gget_onboarding_dataVarsSerializer();

class _$Gget_onboarding_dataVarsSerializer
    implements StructuredSerializer<Gget_onboarding_dataVars> {
  @override
  final Iterable<Type> types = const [
    Gget_onboarding_dataVars,
    _$Gget_onboarding_dataVars
  ];
  @override
  final String wireName = 'Gget_onboarding_dataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_onboarding_dataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dmpConsentementInput',
      serializers.serialize(object.dmpConsentementInput,
          specifiedType: const FullType(_i1.GGetDmpConsentementInput)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_onboarding_dataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_onboarding_dataVarsBuilder();

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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_onboarding_dataVars extends Gget_onboarding_dataVars {
  @override
  final _i1.GGetDmpConsentementInput dmpConsentementInput;
  @override
  final String patientId;

  factory _$Gget_onboarding_dataVars(
          [void Function(Gget_onboarding_dataVarsBuilder)? updates]) =>
      (new Gget_onboarding_dataVarsBuilder()..update(updates))._build();

  _$Gget_onboarding_dataVars._(
      {required this.dmpConsentementInput, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dmpConsentementInput,
        r'Gget_onboarding_dataVars', 'dmpConsentementInput');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_onboarding_dataVars', 'patientId');
  }

  @override
  Gget_onboarding_dataVars rebuild(
          void Function(Gget_onboarding_dataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_onboarding_dataVarsBuilder toBuilder() =>
      new Gget_onboarding_dataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_onboarding_dataVars &&
        dmpConsentementInput == other.dmpConsentementInput &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dmpConsentementInput.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_onboarding_dataVars')
          ..add('dmpConsentementInput', dmpConsentementInput)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_onboarding_dataVarsBuilder
    implements
        Builder<Gget_onboarding_dataVars, Gget_onboarding_dataVarsBuilder> {
  _$Gget_onboarding_dataVars? _$v;

  _i1.GGetDmpConsentementInputBuilder? _dmpConsentementInput;
  _i1.GGetDmpConsentementInputBuilder get dmpConsentementInput =>
      _$this._dmpConsentementInput ??=
          new _i1.GGetDmpConsentementInputBuilder();
  set dmpConsentementInput(
          _i1.GGetDmpConsentementInputBuilder? dmpConsentementInput) =>
      _$this._dmpConsentementInput = dmpConsentementInput;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_onboarding_dataVarsBuilder();

  Gget_onboarding_dataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dmpConsentementInput = $v.dmpConsentementInput.toBuilder();
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_onboarding_dataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_onboarding_dataVars;
  }

  @override
  void update(void Function(Gget_onboarding_dataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_onboarding_dataVars build() => _build();

  _$Gget_onboarding_dataVars _build() {
    _$Gget_onboarding_dataVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_onboarding_dataVars._(
              dmpConsentementInput: dmpConsentementInput.build(),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_onboarding_dataVars', 'patientId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dmpConsentementInput';
        dmpConsentementInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_onboarding_dataVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
