// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_partage_profil_get_partage_profil.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_partage_profilVars> _$ggetPartageProfilVarsSerializer =
    new _$Gget_partage_profilVarsSerializer();

class _$Gget_partage_profilVarsSerializer
    implements StructuredSerializer<Gget_partage_profilVars> {
  @override
  final Iterable<Type> types = const [
    Gget_partage_profilVars,
    _$Gget_partage_profilVars
  ];
  @override
  final String wireName = 'Gget_partage_profilVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_partage_profilVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'getLegalRepresentatives',
      serializers.serialize(object.getLegalRepresentatives,
          specifiedType: const FullType(_i1.GGetLegalRepresentativesInput)),
    ];

    return result;
  }

  @override
  Gget_partage_profilVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_partage_profilVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'getLegalRepresentatives':
          result.getLegalRepresentatives.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GGetLegalRepresentativesInput))!
              as _i1.GGetLegalRepresentativesInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_partage_profilVars extends Gget_partage_profilVars {
  @override
  final _i1.GGetLegalRepresentativesInput getLegalRepresentatives;

  factory _$Gget_partage_profilVars(
          [void Function(Gget_partage_profilVarsBuilder)? updates]) =>
      (new Gget_partage_profilVarsBuilder()..update(updates))._build();

  _$Gget_partage_profilVars._({required this.getLegalRepresentatives})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(getLegalRepresentatives,
        r'Gget_partage_profilVars', 'getLegalRepresentatives');
  }

  @override
  Gget_partage_profilVars rebuild(
          void Function(Gget_partage_profilVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_partage_profilVarsBuilder toBuilder() =>
      new Gget_partage_profilVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_partage_profilVars &&
        getLegalRepresentatives == other.getLegalRepresentatives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, getLegalRepresentatives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_partage_profilVars')
          ..add('getLegalRepresentatives', getLegalRepresentatives))
        .toString();
  }
}

class Gget_partage_profilVarsBuilder
    implements
        Builder<Gget_partage_profilVars, Gget_partage_profilVarsBuilder> {
  _$Gget_partage_profilVars? _$v;

  _i1.GGetLegalRepresentativesInputBuilder? _getLegalRepresentatives;
  _i1.GGetLegalRepresentativesInputBuilder get getLegalRepresentatives =>
      _$this._getLegalRepresentatives ??=
          new _i1.GGetLegalRepresentativesInputBuilder();
  set getLegalRepresentatives(
          _i1.GGetLegalRepresentativesInputBuilder? getLegalRepresentatives) =>
      _$this._getLegalRepresentatives = getLegalRepresentatives;

  Gget_partage_profilVarsBuilder();

  Gget_partage_profilVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _getLegalRepresentatives = $v.getLegalRepresentatives.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_partage_profilVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_partage_profilVars;
  }

  @override
  void update(void Function(Gget_partage_profilVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_partage_profilVars build() => _build();

  _$Gget_partage_profilVars _build() {
    _$Gget_partage_profilVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_partage_profilVars._(
              getLegalRepresentatives: getLegalRepresentatives.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLegalRepresentatives';
        getLegalRepresentatives.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_partage_profilVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
