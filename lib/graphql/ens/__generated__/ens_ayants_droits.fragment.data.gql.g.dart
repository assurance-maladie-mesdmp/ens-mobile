// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ayants_droits.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GayantDroitsData> _$gayantDroitsDataSerializer =
    new _$GayantDroitsDataSerializer();

class _$GayantDroitsDataSerializer
    implements StructuredSerializer<GayantDroitsData> {
  @override
  final Iterable<Type> types = const [GayantDroitsData, _$GayantDroitsData];
  @override
  final String wireName = 'GayantDroitsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GayantDroitsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'isAide',
      serializers.serialize(object.isAide, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GayantDroitsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GayantDroitsDataBuilder();

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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isAide':
          result.isAide = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GayantDroitsData extends GayantDroitsData {
  @override
  final String G__typename;
  @override
  final String patientId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final bool isAide;

  factory _$GayantDroitsData(
          [void Function(GayantDroitsDataBuilder)? updates]) =>
      (new GayantDroitsDataBuilder()..update(updates))._build();

  _$GayantDroitsData._(
      {required this.G__typename,
      required this.patientId,
      required this.firstName,
      required this.lastName,
      required this.isAide})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GayantDroitsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'GayantDroitsData', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GayantDroitsData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GayantDroitsData', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        isAide, r'GayantDroitsData', 'isAide');
  }

  @override
  GayantDroitsData rebuild(void Function(GayantDroitsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GayantDroitsDataBuilder toBuilder() =>
      new GayantDroitsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GayantDroitsData &&
        G__typename == other.G__typename &&
        patientId == other.patientId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isAide == other.isAide;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, isAide.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GayantDroitsData')
          ..add('G__typename', G__typename)
          ..add('patientId', patientId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isAide', isAide))
        .toString();
  }
}

class GayantDroitsDataBuilder
    implements Builder<GayantDroitsData, GayantDroitsDataBuilder> {
  _$GayantDroitsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _isAide;
  bool? get isAide => _$this._isAide;
  set isAide(bool? isAide) => _$this._isAide = isAide;

  GayantDroitsDataBuilder() {
    GayantDroitsData._initializeBuilder(this);
  }

  GayantDroitsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _patientId = $v.patientId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _isAide = $v.isAide;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GayantDroitsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GayantDroitsData;
  }

  @override
  void update(void Function(GayantDroitsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GayantDroitsData build() => _build();

  _$GayantDroitsData _build() {
    final _$result = _$v ??
        new _$GayantDroitsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GayantDroitsData', 'G__typename'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'GayantDroitsData', 'patientId'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GayantDroitsData', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GayantDroitsData', 'lastName'),
            isAide: BuiltValueNullFieldError.checkNotNull(
                isAide, r'GayantDroitsData', 'isAide'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
