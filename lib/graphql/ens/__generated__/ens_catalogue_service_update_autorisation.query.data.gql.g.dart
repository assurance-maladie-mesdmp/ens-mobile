// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_update_autorisation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_autorisationData> _$gupdateAutorisationDataSerializer =
    new _$Gupdate_autorisationDataSerializer();
Serializer<Gupdate_autorisationData_confirmUpdateServiceVersionInformation>
    _$gupdateAutorisationDataConfirmUpdateServiceVersionInformationSerializer =
    new _$Gupdate_autorisationData_confirmUpdateServiceVersionInformationSerializer();

class _$Gupdate_autorisationDataSerializer
    implements StructuredSerializer<Gupdate_autorisationData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_autorisationData,
    _$Gupdate_autorisationData
  ];
  @override
  final String wireName = 'Gupdate_autorisationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_autorisationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'confirmUpdateServiceVersionInformation',
      serializers.serialize(object.confirmUpdateServiceVersionInformation,
          specifiedType: const FullType(
              Gupdate_autorisationData_confirmUpdateServiceVersionInformation)),
    ];

    return result;
  }

  @override
  Gupdate_autorisationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_autorisationDataBuilder();

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
        case 'confirmUpdateServiceVersionInformation':
          result.confirmUpdateServiceVersionInformation.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gupdate_autorisationData_confirmUpdateServiceVersionInformation))!
              as Gupdate_autorisationData_confirmUpdateServiceVersionInformation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_autorisationData_confirmUpdateServiceVersionInformationSerializer
    implements
        StructuredSerializer<
            Gupdate_autorisationData_confirmUpdateServiceVersionInformation> {
  @override
  final Iterable<Type> types = const [
    Gupdate_autorisationData_confirmUpdateServiceVersionInformation,
    _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation
  ];
  @override
  final String wireName =
      'Gupdate_autorisationData_confirmUpdateServiceVersionInformation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_autorisationData_confirmUpdateServiceVersionInformation object,
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
  Gupdate_autorisationData_confirmUpdateServiceVersionInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder();

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

class _$Gupdate_autorisationData extends Gupdate_autorisationData {
  @override
  final String G__typename;
  @override
  final Gupdate_autorisationData_confirmUpdateServiceVersionInformation
      confirmUpdateServiceVersionInformation;

  factory _$Gupdate_autorisationData(
          [void Function(Gupdate_autorisationDataBuilder)? updates]) =>
      (new Gupdate_autorisationDataBuilder()..update(updates))._build();

  _$Gupdate_autorisationData._(
      {required this.G__typename,
      required this.confirmUpdateServiceVersionInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_autorisationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        confirmUpdateServiceVersionInformation,
        r'Gupdate_autorisationData',
        'confirmUpdateServiceVersionInformation');
  }

  @override
  Gupdate_autorisationData rebuild(
          void Function(Gupdate_autorisationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_autorisationDataBuilder toBuilder() =>
      new Gupdate_autorisationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_autorisationData &&
        G__typename == other.G__typename &&
        confirmUpdateServiceVersionInformation ==
            other.confirmUpdateServiceVersionInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, confirmUpdateServiceVersionInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_autorisationData')
          ..add('G__typename', G__typename)
          ..add('confirmUpdateServiceVersionInformation',
              confirmUpdateServiceVersionInformation))
        .toString();
  }
}

class Gupdate_autorisationDataBuilder
    implements
        Builder<Gupdate_autorisationData, Gupdate_autorisationDataBuilder> {
  _$Gupdate_autorisationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder?
      _confirmUpdateServiceVersionInformation;
  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
      get confirmUpdateServiceVersionInformation => _$this
              ._confirmUpdateServiceVersionInformation ??=
          new Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder();
  set confirmUpdateServiceVersionInformation(
          Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder?
              confirmUpdateServiceVersionInformation) =>
      _$this._confirmUpdateServiceVersionInformation =
          confirmUpdateServiceVersionInformation;

  Gupdate_autorisationDataBuilder() {
    Gupdate_autorisationData._initializeBuilder(this);
  }

  Gupdate_autorisationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _confirmUpdateServiceVersionInformation =
          $v.confirmUpdateServiceVersionInformation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_autorisationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_autorisationData;
  }

  @override
  void update(void Function(Gupdate_autorisationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_autorisationData build() => _build();

  _$Gupdate_autorisationData _build() {
    _$Gupdate_autorisationData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_autorisationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_autorisationData', 'G__typename'),
              confirmUpdateServiceVersionInformation:
                  confirmUpdateServiceVersionInformation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'confirmUpdateServiceVersionInformation';
        confirmUpdateServiceVersionInformation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_autorisationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation
    extends Gupdate_autorisationData_confirmUpdateServiceVersionInformation {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation(
          [void Function(
                  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder)?
              updates]) =>
      (new Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_autorisationData_confirmUpdateServiceVersionInformation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_autorisationData_confirmUpdateServiceVersionInformation',
        'success');
  }

  @override
  Gupdate_autorisationData_confirmUpdateServiceVersionInformation rebuild(
          void Function(
                  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
      toBuilder() =>
          new Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_autorisationData_confirmUpdateServiceVersionInformation &&
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
            r'Gupdate_autorisationData_confirmUpdateServiceVersionInformation')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
    implements
        Builder<Gupdate_autorisationData_confirmUpdateServiceVersionInformation,
            Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder> {
  _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder() {
    Gupdate_autorisationData_confirmUpdateServiceVersionInformation
        ._initializeBuilder(this);
  }

  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gupdate_autorisationData_confirmUpdateServiceVersionInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation;
  }

  @override
  void update(
      void Function(
              Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_autorisationData_confirmUpdateServiceVersionInformation build() =>
      _build();

  _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation _build() {
    final _$result = _$v ??
        new _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_autorisationData_confirmUpdateServiceVersionInformation',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_autorisationData_confirmUpdateServiceVersionInformation',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
