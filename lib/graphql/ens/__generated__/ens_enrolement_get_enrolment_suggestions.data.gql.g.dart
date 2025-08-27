// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_get_enrolment_suggestions.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEnrolmentUserNameAvailabilityData>
    _$gEnrolmentUserNameAvailabilityDataSerializer =
    new _$GEnrolmentUserNameAvailabilityDataSerializer();
Serializer<GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability>
    _$gEnrolmentUserNameAvailabilityDataEnrolmentUserNameAvailabilitySerializer =
    new _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilitySerializer();

class _$GEnrolmentUserNameAvailabilityDataSerializer
    implements StructuredSerializer<GEnrolmentUserNameAvailabilityData> {
  @override
  final Iterable<Type> types = const [
    GEnrolmentUserNameAvailabilityData,
    _$GEnrolmentUserNameAvailabilityData
  ];
  @override
  final String wireName = 'GEnrolmentUserNameAvailabilityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEnrolmentUserNameAvailabilityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'enrolmentUserNameAvailability',
      serializers.serialize(object.enrolmentUserNameAvailability,
          specifiedType: const FullType(
              GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability)),
    ];

    return result;
  }

  @override
  GEnrolmentUserNameAvailabilityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEnrolmentUserNameAvailabilityDataBuilder();

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
        case 'enrolmentUserNameAvailability':
          result.enrolmentUserNameAvailability.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability))!
              as GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability);
          break;
      }
    }

    return result.build();
  }
}

class _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilitySerializer
    implements
        StructuredSerializer<
            GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability> {
  @override
  final Iterable<Type> types = const [
    GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability,
    _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
  ];
  @override
  final String wireName =
      'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isAvailable',
      serializers.serialize(object.isAvailable,
          specifiedType: const FullType(bool)),
      'suggestions',
      serializers.serialize(object.suggestions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder();

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
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'suggestions':
          result.suggestions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GEnrolmentUserNameAvailabilityData
    extends GEnrolmentUserNameAvailabilityData {
  @override
  final String G__typename;
  @override
  final GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
      enrolmentUserNameAvailability;

  factory _$GEnrolmentUserNameAvailabilityData(
          [void Function(GEnrolmentUserNameAvailabilityDataBuilder)?
              updates]) =>
      (new GEnrolmentUserNameAvailabilityDataBuilder()..update(updates))
          ._build();

  _$GEnrolmentUserNameAvailabilityData._(
      {required this.G__typename, required this.enrolmentUserNameAvailability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEnrolmentUserNameAvailabilityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(enrolmentUserNameAvailability,
        r'GEnrolmentUserNameAvailabilityData', 'enrolmentUserNameAvailability');
  }

  @override
  GEnrolmentUserNameAvailabilityData rebuild(
          void Function(GEnrolmentUserNameAvailabilityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnrolmentUserNameAvailabilityDataBuilder toBuilder() =>
      new GEnrolmentUserNameAvailabilityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEnrolmentUserNameAvailabilityData &&
        G__typename == other.G__typename &&
        enrolmentUserNameAvailability == other.enrolmentUserNameAvailability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, enrolmentUserNameAvailability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEnrolmentUserNameAvailabilityData')
          ..add('G__typename', G__typename)
          ..add('enrolmentUserNameAvailability', enrolmentUserNameAvailability))
        .toString();
  }
}

class GEnrolmentUserNameAvailabilityDataBuilder
    implements
        Builder<GEnrolmentUserNameAvailabilityData,
            GEnrolmentUserNameAvailabilityDataBuilder> {
  _$GEnrolmentUserNameAvailabilityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder?
      _enrolmentUserNameAvailability;
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
      get enrolmentUserNameAvailability => _$this
              ._enrolmentUserNameAvailability ??=
          new GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder();
  set enrolmentUserNameAvailability(
          GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder?
              enrolmentUserNameAvailability) =>
      _$this._enrolmentUserNameAvailability = enrolmentUserNameAvailability;

  GEnrolmentUserNameAvailabilityDataBuilder() {
    GEnrolmentUserNameAvailabilityData._initializeBuilder(this);
  }

  GEnrolmentUserNameAvailabilityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _enrolmentUserNameAvailability =
          $v.enrolmentUserNameAvailability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEnrolmentUserNameAvailabilityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEnrolmentUserNameAvailabilityData;
  }

  @override
  void update(
      void Function(GEnrolmentUserNameAvailabilityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnrolmentUserNameAvailabilityData build() => _build();

  _$GEnrolmentUserNameAvailabilityData _build() {
    _$GEnrolmentUserNameAvailabilityData _$result;
    try {
      _$result = _$v ??
          new _$GEnrolmentUserNameAvailabilityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GEnrolmentUserNameAvailabilityData', 'G__typename'),
              enrolmentUserNameAvailability:
                  enrolmentUserNameAvailability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enrolmentUserNameAvailability';
        enrolmentUserNameAvailability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEnrolmentUserNameAvailabilityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
    extends GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability {
  @override
  final String G__typename;
  @override
  final bool isAvailable;
  @override
  final BuiltList<String> suggestions;

  factory _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability(
          [void Function(
                  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder)?
              updates]) =>
      (new GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder()
            ..update(updates))
          ._build();

  _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability._(
      {required this.G__typename,
      required this.isAvailable,
      required this.suggestions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isAvailable,
        r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
        'isAvailable');
    BuiltValueNullFieldError.checkNotNull(
        suggestions,
        r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
        'suggestions');
  }

  @override
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability rebuild(
          void Function(
                  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
      toBuilder() =>
          new GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability &&
        G__typename == other.G__typename &&
        isAvailable == other.isAvailable &&
        suggestions == other.suggestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, suggestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability')
          ..add('G__typename', G__typename)
          ..add('isAvailable', isAvailable)
          ..add('suggestions', suggestions))
        .toString();
  }
}

class GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
    implements
        Builder<
            GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability,
            GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder> {
  _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  ListBuilder<String>? _suggestions;
  ListBuilder<String> get suggestions =>
      _$this._suggestions ??= new ListBuilder<String>();
  set suggestions(ListBuilder<String>? suggestions) =>
      _$this._suggestions = suggestions;

  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder() {
    GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
        ._initializeBuilder(this);
  }

  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isAvailable = $v.isAvailable;
      _suggestions = $v.suggestions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability;
  }

  @override
  void update(
      void Function(
              GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability build() =>
      _build();

  _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability _build() {
    _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability _$result;
    try {
      _$result = _$v ??
          new _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
                  'G__typename'),
              isAvailable: BuiltValueNullFieldError.checkNotNull(
                  isAvailable,
                  r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
                  'isAvailable'),
              suggestions: suggestions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestions';
        suggestions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability',
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
