// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_set_onboarding_done.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_onboarding_doneVars> _$gsetOnboardingDoneVarsSerializer =
    new _$Gset_onboarding_doneVarsSerializer();

class _$Gset_onboarding_doneVarsSerializer
    implements StructuredSerializer<Gset_onboarding_doneVars> {
  @override
  final Iterable<Type> types = const [
    Gset_onboarding_doneVars,
    _$Gset_onboarding_doneVars
  ];
  @override
  final String wireName = 'Gset_onboarding_doneVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_onboarding_doneVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'onboardingDate',
      serializers.serialize(object.onboardingDate,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gset_onboarding_doneVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_onboarding_doneVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'onboardingDate':
          result.onboardingDate = serializers.deserialize(value,
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

class _$Gset_onboarding_doneVars extends Gset_onboarding_doneVars {
  @override
  final String onboardingDate;
  @override
  final String patientId;

  factory _$Gset_onboarding_doneVars(
          [void Function(Gset_onboarding_doneVarsBuilder)? updates]) =>
      (new Gset_onboarding_doneVarsBuilder()..update(updates))._build();

  _$Gset_onboarding_doneVars._(
      {required this.onboardingDate, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onboardingDate, r'Gset_onboarding_doneVars', 'onboardingDate');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gset_onboarding_doneVars', 'patientId');
  }

  @override
  Gset_onboarding_doneVars rebuild(
          void Function(Gset_onboarding_doneVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_onboarding_doneVarsBuilder toBuilder() =>
      new Gset_onboarding_doneVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_onboarding_doneVars &&
        onboardingDate == other.onboardingDate &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onboardingDate.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_onboarding_doneVars')
          ..add('onboardingDate', onboardingDate)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gset_onboarding_doneVarsBuilder
    implements
        Builder<Gset_onboarding_doneVars, Gset_onboarding_doneVarsBuilder> {
  _$Gset_onboarding_doneVars? _$v;

  String? _onboardingDate;
  String? get onboardingDate => _$this._onboardingDate;
  set onboardingDate(String? onboardingDate) =>
      _$this._onboardingDate = onboardingDate;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gset_onboarding_doneVarsBuilder();

  Gset_onboarding_doneVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onboardingDate = $v.onboardingDate;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_onboarding_doneVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_onboarding_doneVars;
  }

  @override
  void update(void Function(Gset_onboarding_doneVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_onboarding_doneVars build() => _build();

  _$Gset_onboarding_doneVars _build() {
    final _$result = _$v ??
        new _$Gset_onboarding_doneVars._(
            onboardingDate: BuiltValueNullFieldError.checkNotNull(
                onboardingDate, r'Gset_onboarding_doneVars', 'onboardingDate'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gset_onboarding_doneVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
