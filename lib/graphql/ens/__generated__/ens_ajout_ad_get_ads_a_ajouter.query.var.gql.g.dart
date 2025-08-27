// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_get_ads_a_ajouter.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ads_a_ajouterVars> _$ggetAdsAAjouterVarsSerializer =
    new _$Gget_ads_a_ajouterVarsSerializer();

class _$Gget_ads_a_ajouterVarsSerializer
    implements StructuredSerializer<Gget_ads_a_ajouterVars> {
  @override
  final Iterable<Type> types = const [
    Gget_ads_a_ajouterVars,
    _$Gget_ads_a_ajouterVars
  ];
  @override
  final String wireName = 'Gget_ads_a_ajouterVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ads_a_ajouterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountGetAccountFamilyInput',
      serializers.serialize(object.accountGetAccountFamilyInput,
          specifiedType: const FullType(_i1.GAccountGetAccountFamilyInput)),
    ];

    return result;
  }

  @override
  Gget_ads_a_ajouterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ads_a_ajouterVarsBuilder();

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

class _$Gget_ads_a_ajouterVars extends Gget_ads_a_ajouterVars {
  @override
  final _i1.GAccountGetAccountFamilyInput accountGetAccountFamilyInput;

  factory _$Gget_ads_a_ajouterVars(
          [void Function(Gget_ads_a_ajouterVarsBuilder)? updates]) =>
      (new Gget_ads_a_ajouterVarsBuilder()..update(updates))._build();

  _$Gget_ads_a_ajouterVars._({required this.accountGetAccountFamilyInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(accountGetAccountFamilyInput,
        r'Gget_ads_a_ajouterVars', 'accountGetAccountFamilyInput');
  }

  @override
  Gget_ads_a_ajouterVars rebuild(
          void Function(Gget_ads_a_ajouterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ads_a_ajouterVarsBuilder toBuilder() =>
      new Gget_ads_a_ajouterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ads_a_ajouterVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_ads_a_ajouterVars')
          ..add('accountGetAccountFamilyInput', accountGetAccountFamilyInput))
        .toString();
  }
}

class Gget_ads_a_ajouterVarsBuilder
    implements Builder<Gget_ads_a_ajouterVars, Gget_ads_a_ajouterVarsBuilder> {
  _$Gget_ads_a_ajouterVars? _$v;

  _i1.GAccountGetAccountFamilyInputBuilder? _accountGetAccountFamilyInput;
  _i1.GAccountGetAccountFamilyInputBuilder get accountGetAccountFamilyInput =>
      _$this._accountGetAccountFamilyInput ??=
          new _i1.GAccountGetAccountFamilyInputBuilder();
  set accountGetAccountFamilyInput(
          _i1.GAccountGetAccountFamilyInputBuilder?
              accountGetAccountFamilyInput) =>
      _$this._accountGetAccountFamilyInput = accountGetAccountFamilyInput;

  Gget_ads_a_ajouterVarsBuilder();

  Gget_ads_a_ajouterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountGetAccountFamilyInput =
          $v.accountGetAccountFamilyInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ads_a_ajouterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ads_a_ajouterVars;
  }

  @override
  void update(void Function(Gget_ads_a_ajouterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ads_a_ajouterVars build() => _build();

  _$Gget_ads_a_ajouterVars _build() {
    _$Gget_ads_a_ajouterVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_ads_a_ajouterVars._(
              accountGetAccountFamilyInput:
                  accountGetAccountFamilyInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountGetAccountFamilyInput';
        accountGetAccountFamilyInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ads_a_ajouterVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
