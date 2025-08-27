// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_active_profils_ads.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gactive_profils_adsData> _$gactiveProfilsAdsDataSerializer =
    new _$Gactive_profils_adsDataSerializer();
Serializer<Gactive_profils_adsData_activeProfils>
    _$gactiveProfilsAdsDataActiveProfilsSerializer =
    new _$Gactive_profils_adsData_activeProfilsSerializer();

class _$Gactive_profils_adsDataSerializer
    implements StructuredSerializer<Gactive_profils_adsData> {
  @override
  final Iterable<Type> types = const [
    Gactive_profils_adsData,
    _$Gactive_profils_adsData
  ];
  @override
  final String wireName = 'Gactive_profils_adsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gactive_profils_adsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'activeProfils',
      serializers.serialize(object.activeProfils,
          specifiedType: const FullType(Gactive_profils_adsData_activeProfils)),
    ];

    return result;
  }

  @override
  Gactive_profils_adsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gactive_profils_adsDataBuilder();

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
        case 'activeProfils':
          result.activeProfils.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gactive_profils_adsData_activeProfils))!
              as Gactive_profils_adsData_activeProfils);
          break;
      }
    }

    return result.build();
  }
}

class _$Gactive_profils_adsData_activeProfilsSerializer
    implements StructuredSerializer<Gactive_profils_adsData_activeProfils> {
  @override
  final Iterable<Type> types = const [
    Gactive_profils_adsData_activeProfils,
    _$Gactive_profils_adsData_activeProfils
  ];
  @override
  final String wireName = 'Gactive_profils_adsData_activeProfils';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gactive_profils_adsData_activeProfils object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gactive_profils_adsData_activeProfils deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gactive_profils_adsData_activeProfilsBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gactive_profils_adsData extends Gactive_profils_adsData {
  @override
  final String G__typename;
  @override
  final Gactive_profils_adsData_activeProfils activeProfils;

  factory _$Gactive_profils_adsData(
          [void Function(Gactive_profils_adsDataBuilder)? updates]) =>
      (new Gactive_profils_adsDataBuilder()..update(updates))._build();

  _$Gactive_profils_adsData._(
      {required this.G__typename, required this.activeProfils})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gactive_profils_adsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        activeProfils, r'Gactive_profils_adsData', 'activeProfils');
  }

  @override
  Gactive_profils_adsData rebuild(
          void Function(Gactive_profils_adsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gactive_profils_adsDataBuilder toBuilder() =>
      new Gactive_profils_adsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gactive_profils_adsData &&
        G__typename == other.G__typename &&
        activeProfils == other.activeProfils;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, activeProfils.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gactive_profils_adsData')
          ..add('G__typename', G__typename)
          ..add('activeProfils', activeProfils))
        .toString();
  }
}

class Gactive_profils_adsDataBuilder
    implements
        Builder<Gactive_profils_adsData, Gactive_profils_adsDataBuilder> {
  _$Gactive_profils_adsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gactive_profils_adsData_activeProfilsBuilder? _activeProfils;
  Gactive_profils_adsData_activeProfilsBuilder get activeProfils =>
      _$this._activeProfils ??=
          new Gactive_profils_adsData_activeProfilsBuilder();
  set activeProfils(
          Gactive_profils_adsData_activeProfilsBuilder? activeProfils) =>
      _$this._activeProfils = activeProfils;

  Gactive_profils_adsDataBuilder() {
    Gactive_profils_adsData._initializeBuilder(this);
  }

  Gactive_profils_adsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _activeProfils = $v.activeProfils.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gactive_profils_adsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gactive_profils_adsData;
  }

  @override
  void update(void Function(Gactive_profils_adsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gactive_profils_adsData build() => _build();

  _$Gactive_profils_adsData _build() {
    _$Gactive_profils_adsData _$result;
    try {
      _$result = _$v ??
          new _$Gactive_profils_adsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gactive_profils_adsData', 'G__typename'),
              activeProfils: activeProfils.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeProfils';
        activeProfils.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gactive_profils_adsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gactive_profils_adsData_activeProfils
    extends Gactive_profils_adsData_activeProfils {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gactive_profils_adsData_activeProfils(
          [void Function(Gactive_profils_adsData_activeProfilsBuilder)?
              updates]) =>
      (new Gactive_profils_adsData_activeProfilsBuilder()..update(updates))
          ._build();

  _$Gactive_profils_adsData_activeProfils._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gactive_profils_adsData_activeProfils', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gactive_profils_adsData_activeProfils', 'success');
  }

  @override
  Gactive_profils_adsData_activeProfils rebuild(
          void Function(Gactive_profils_adsData_activeProfilsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gactive_profils_adsData_activeProfilsBuilder toBuilder() =>
      new Gactive_profils_adsData_activeProfilsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gactive_profils_adsData_activeProfils &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gactive_profils_adsData_activeProfils')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gactive_profils_adsData_activeProfilsBuilder
    implements
        Builder<Gactive_profils_adsData_activeProfils,
            Gactive_profils_adsData_activeProfilsBuilder> {
  _$Gactive_profils_adsData_activeProfils? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gactive_profils_adsData_activeProfilsBuilder() {
    Gactive_profils_adsData_activeProfils._initializeBuilder(this);
  }

  Gactive_profils_adsData_activeProfilsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gactive_profils_adsData_activeProfils other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gactive_profils_adsData_activeProfils;
  }

  @override
  void update(
      void Function(Gactive_profils_adsData_activeProfilsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gactive_profils_adsData_activeProfils build() => _build();

  _$Gactive_profils_adsData_activeProfils _build() {
    final _$result = _$v ??
        new _$Gactive_profils_adsData_activeProfils._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gactive_profils_adsData_activeProfils', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gactive_profils_adsData_activeProfils', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
