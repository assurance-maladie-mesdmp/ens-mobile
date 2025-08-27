// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GprofilMobileData> _$gprofilMobileDataSerializer =
    new _$GprofilMobileDataSerializer();

class _$GprofilMobileDataSerializer
    implements StructuredSerializer<GprofilMobileData> {
  @override
  final Iterable<Type> types = const [GprofilMobileData, _$GprofilMobileData];
  @override
  final String wireName = 'GprofilMobileData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GprofilMobileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'statutProfile',
      serializers.serialize(object.statutProfile,
          specifiedType: const FullType(String)),
      'hasDeleteRequest',
      serializers.serialize(object.hasDeleteRequest,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GprofilMobileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GprofilMobileDataBuilder();

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
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statutProfile':
          result.statutProfile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasDeleteRequest':
          result.hasDeleteRequest = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GprofilMobileData extends GprofilMobileData {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String statutProfile;
  @override
  final bool hasDeleteRequest;

  factory _$GprofilMobileData(
          [void Function(GprofilMobileDataBuilder)? updates]) =>
      (new GprofilMobileDataBuilder()..update(updates))._build();

  _$GprofilMobileData._(
      {required this.G__typename,
      required this.index,
      required this.lastName,
      required this.firstName,
      required this.statutProfile,
      required this.hasDeleteRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GprofilMobileData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(index, r'GprofilMobileData', 'index');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GprofilMobileData', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GprofilMobileData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statutProfile, r'GprofilMobileData', 'statutProfile');
    BuiltValueNullFieldError.checkNotNull(
        hasDeleteRequest, r'GprofilMobileData', 'hasDeleteRequest');
  }

  @override
  GprofilMobileData rebuild(void Function(GprofilMobileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GprofilMobileDataBuilder toBuilder() =>
      new GprofilMobileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GprofilMobileData &&
        G__typename == other.G__typename &&
        index == other.index &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statutProfile == other.statutProfile &&
        hasDeleteRequest == other.hasDeleteRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statutProfile.hashCode);
    _$hash = $jc(_$hash, hasDeleteRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GprofilMobileData')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statutProfile', statutProfile)
          ..add('hasDeleteRequest', hasDeleteRequest))
        .toString();
  }
}

class GprofilMobileDataBuilder
    implements Builder<GprofilMobileData, GprofilMobileDataBuilder> {
  _$GprofilMobileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _statutProfile;
  String? get statutProfile => _$this._statutProfile;
  set statutProfile(String? statutProfile) =>
      _$this._statutProfile = statutProfile;

  bool? _hasDeleteRequest;
  bool? get hasDeleteRequest => _$this._hasDeleteRequest;
  set hasDeleteRequest(bool? hasDeleteRequest) =>
      _$this._hasDeleteRequest = hasDeleteRequest;

  GprofilMobileDataBuilder() {
    GprofilMobileData._initializeBuilder(this);
  }

  GprofilMobileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statutProfile = $v.statutProfile;
      _hasDeleteRequest = $v.hasDeleteRequest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GprofilMobileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GprofilMobileData;
  }

  @override
  void update(void Function(GprofilMobileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GprofilMobileData build() => _build();

  _$GprofilMobileData _build() {
    final _$result = _$v ??
        new _$GprofilMobileData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GprofilMobileData', 'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'GprofilMobileData', 'index'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GprofilMobileData', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GprofilMobileData', 'firstName'),
            statutProfile: BuiltValueNullFieldError.checkNotNull(
                statutProfile, r'GprofilMobileData', 'statutProfile'),
            hasDeleteRequest: BuiltValueNullFieldError.checkNotNull(
                hasDeleteRequest, r'GprofilMobileData', 'hasDeleteRequest'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
