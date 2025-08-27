// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_active_profils_ads.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gactive_profils_adsVars> _$gactiveProfilsAdsVarsSerializer =
    new _$Gactive_profils_adsVarsSerializer();

class _$Gactive_profils_adsVarsSerializer
    implements StructuredSerializer<Gactive_profils_adsVars> {
  @override
  final Iterable<Type> types = const [
    Gactive_profils_adsVars,
    _$Gactive_profils_adsVars
  ];
  @override
  final String wireName = 'Gactive_profils_adsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gactive_profils_adsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountActiveProfilsInput',
      serializers.serialize(object.accountActiveProfilsInput,
          specifiedType: const FullType(_i1.GAccountActiveProfilsInput)),
    ];

    return result;
  }

  @override
  Gactive_profils_adsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gactive_profils_adsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountActiveProfilsInput':
          result.accountActiveProfilsInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GAccountActiveProfilsInput))!
              as _i1.GAccountActiveProfilsInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gactive_profils_adsVars extends Gactive_profils_adsVars {
  @override
  final _i1.GAccountActiveProfilsInput accountActiveProfilsInput;

  factory _$Gactive_profils_adsVars(
          [void Function(Gactive_profils_adsVarsBuilder)? updates]) =>
      (new Gactive_profils_adsVarsBuilder()..update(updates))._build();

  _$Gactive_profils_adsVars._({required this.accountActiveProfilsInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(accountActiveProfilsInput,
        r'Gactive_profils_adsVars', 'accountActiveProfilsInput');
  }

  @override
  Gactive_profils_adsVars rebuild(
          void Function(Gactive_profils_adsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gactive_profils_adsVarsBuilder toBuilder() =>
      new Gactive_profils_adsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gactive_profils_adsVars &&
        accountActiveProfilsInput == other.accountActiveProfilsInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountActiveProfilsInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gactive_profils_adsVars')
          ..add('accountActiveProfilsInput', accountActiveProfilsInput))
        .toString();
  }
}

class Gactive_profils_adsVarsBuilder
    implements
        Builder<Gactive_profils_adsVars, Gactive_profils_adsVarsBuilder> {
  _$Gactive_profils_adsVars? _$v;

  _i1.GAccountActiveProfilsInputBuilder? _accountActiveProfilsInput;
  _i1.GAccountActiveProfilsInputBuilder get accountActiveProfilsInput =>
      _$this._accountActiveProfilsInput ??=
          new _i1.GAccountActiveProfilsInputBuilder();
  set accountActiveProfilsInput(
          _i1.GAccountActiveProfilsInputBuilder? accountActiveProfilsInput) =>
      _$this._accountActiveProfilsInput = accountActiveProfilsInput;

  Gactive_profils_adsVarsBuilder();

  Gactive_profils_adsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountActiveProfilsInput = $v.accountActiveProfilsInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gactive_profils_adsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gactive_profils_adsVars;
  }

  @override
  void update(void Function(Gactive_profils_adsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gactive_profils_adsVars build() => _build();

  _$Gactive_profils_adsVars _build() {
    _$Gactive_profils_adsVars _$result;
    try {
      _$result = _$v ??
          new _$Gactive_profils_adsVars._(
              accountActiveProfilsInput: accountActiveProfilsInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountActiveProfilsInput';
        accountActiveProfilsInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gactive_profils_adsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
