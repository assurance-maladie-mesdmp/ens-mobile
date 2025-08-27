// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_get_activation_profils_ads_result.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_activation_profils_ads_resultVars>
    _$ggetActivationProfilsAdsResultVarsSerializer =
    new _$Gget_activation_profils_ads_resultVarsSerializer();

class _$Gget_activation_profils_ads_resultVarsSerializer
    implements StructuredSerializer<Gget_activation_profils_ads_resultVars> {
  @override
  final Iterable<Type> types = const [
    Gget_activation_profils_ads_resultVars,
    _$Gget_activation_profils_ads_resultVars
  ];
  @override
  final String wireName = 'Gget_activation_profils_ads_resultVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_activation_profils_ads_resultVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountGetAccountFamilyInput',
      serializers.serialize(object.accountGetAccountFamilyInput,
          specifiedType: const FullType(_i1.GAccountGetAccountFamilyInput)),
    ];

    return result;
  }

  @override
  Gget_activation_profils_ads_resultVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_activation_profils_ads_resultVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountGetAccountFamilyInput':
          result.accountGetAccountFamilyInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GAccountGetAccountFamilyInput))!
              as _i1.GAccountGetAccountFamilyInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_activation_profils_ads_resultVars
    extends Gget_activation_profils_ads_resultVars {
  @override
  final _i1.GAccountGetAccountFamilyInput accountGetAccountFamilyInput;

  factory _$Gget_activation_profils_ads_resultVars(
          [void Function(Gget_activation_profils_ads_resultVarsBuilder)?
              updates]) =>
      (new Gget_activation_profils_ads_resultVarsBuilder()..update(updates))
          ._build();

  _$Gget_activation_profils_ads_resultVars._(
      {required this.accountGetAccountFamilyInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountGetAccountFamilyInput,
        r'Gget_activation_profils_ads_resultVars',
        'accountGetAccountFamilyInput');
  }

  @override
  Gget_activation_profils_ads_resultVars rebuild(
          void Function(Gget_activation_profils_ads_resultVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_activation_profils_ads_resultVarsBuilder toBuilder() =>
      new Gget_activation_profils_ads_resultVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_activation_profils_ads_resultVars &&
        accountGetAccountFamilyInput == other.accountGetAccountFamilyInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountGetAccountFamilyInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_activation_profils_ads_resultVars')
          ..add('accountGetAccountFamilyInput', accountGetAccountFamilyInput))
        .toString();
  }
}

class Gget_activation_profils_ads_resultVarsBuilder
    implements
        Builder<Gget_activation_profils_ads_resultVars,
            Gget_activation_profils_ads_resultVarsBuilder> {
  _$Gget_activation_profils_ads_resultVars? _$v;

  _i1.GAccountGetAccountFamilyInputBuilder? _accountGetAccountFamilyInput;
  _i1.GAccountGetAccountFamilyInputBuilder get accountGetAccountFamilyInput =>
      _$this._accountGetAccountFamilyInput ??=
          new _i1.GAccountGetAccountFamilyInputBuilder();
  set accountGetAccountFamilyInput(
          _i1.GAccountGetAccountFamilyInputBuilder?
              accountGetAccountFamilyInput) =>
      _$this._accountGetAccountFamilyInput = accountGetAccountFamilyInput;

  Gget_activation_profils_ads_resultVarsBuilder();

  Gget_activation_profils_ads_resultVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountGetAccountFamilyInput =
          $v.accountGetAccountFamilyInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_activation_profils_ads_resultVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_activation_profils_ads_resultVars;
  }

  @override
  void update(
      void Function(Gget_activation_profils_ads_resultVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_activation_profils_ads_resultVars build() => _build();

  _$Gget_activation_profils_ads_resultVars _build() {
    _$Gget_activation_profils_ads_resultVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_activation_profils_ads_resultVars._(
              accountGetAccountFamilyInput:
                  accountGetAccountFamilyInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountGetAccountFamilyInput';
        accountGetAccountFamilyInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_activation_profils_ads_resultVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
