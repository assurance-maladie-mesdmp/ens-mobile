// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_consent_reapproval_requirement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_consentement_after_majoriteData>
    _$gupdateConsentementAfterMajoriteDataSerializer =
    new _$Gupdate_consentement_after_majoriteDataSerializer();
Serializer<
        Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement>
    _$gupdateConsentementAfterMajoriteDataDeleteConsentReapprovalRequirementSerializer =
    new _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementSerializer();

class _$Gupdate_consentement_after_majoriteDataSerializer
    implements StructuredSerializer<Gupdate_consentement_after_majoriteData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_consentement_after_majoriteData,
    _$Gupdate_consentement_after_majoriteData
  ];
  @override
  final String wireName = 'Gupdate_consentement_after_majoriteData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_consentement_after_majoriteData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteConsentReapprovalRequirement',
      serializers.serialize(object.deleteConsentReapprovalRequirement,
          specifiedType: const FullType(
              Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement)),
    ];

    return result;
  }

  @override
  Gupdate_consentement_after_majoriteData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_consentement_after_majoriteDataBuilder();

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
        case 'deleteConsentReapprovalRequirement':
          result.deleteConsentReapprovalRequirement.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement))!
              as Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementSerializer
    implements
        StructuredSerializer<
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement> {
  @override
  final Iterable<Type> types = const [
    Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement,
    _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
  ];
  @override
  final String wireName =
      'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
          object,
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
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder();

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

class _$Gupdate_consentement_after_majoriteData
    extends Gupdate_consentement_after_majoriteData {
  @override
  final String G__typename;
  @override
  final Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      deleteConsentReapprovalRequirement;

  factory _$Gupdate_consentement_after_majoriteData(
          [void Function(Gupdate_consentement_after_majoriteDataBuilder)?
              updates]) =>
      (new Gupdate_consentement_after_majoriteDataBuilder()..update(updates))
          ._build();

  _$Gupdate_consentement_after_majoriteData._(
      {required this.G__typename,
      required this.deleteConsentReapprovalRequirement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_consentement_after_majoriteData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteConsentReapprovalRequirement,
        r'Gupdate_consentement_after_majoriteData',
        'deleteConsentReapprovalRequirement');
  }

  @override
  Gupdate_consentement_after_majoriteData rebuild(
          void Function(Gupdate_consentement_after_majoriteDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_consentement_after_majoriteDataBuilder toBuilder() =>
      new Gupdate_consentement_after_majoriteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_consentement_after_majoriteData &&
        G__typename == other.G__typename &&
        deleteConsentReapprovalRequirement ==
            other.deleteConsentReapprovalRequirement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteConsentReapprovalRequirement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_consentement_after_majoriteData')
          ..add('G__typename', G__typename)
          ..add('deleteConsentReapprovalRequirement',
              deleteConsentReapprovalRequirement))
        .toString();
  }
}

class Gupdate_consentement_after_majoriteDataBuilder
    implements
        Builder<Gupdate_consentement_after_majoriteData,
            Gupdate_consentement_after_majoriteDataBuilder> {
  _$Gupdate_consentement_after_majoriteData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder?
      _deleteConsentReapprovalRequirement;
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
      get deleteConsentReapprovalRequirement => _$this
              ._deleteConsentReapprovalRequirement ??=
          new Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder();
  set deleteConsentReapprovalRequirement(
          Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder?
              deleteConsentReapprovalRequirement) =>
      _$this._deleteConsentReapprovalRequirement =
          deleteConsentReapprovalRequirement;

  Gupdate_consentement_after_majoriteDataBuilder() {
    Gupdate_consentement_after_majoriteData._initializeBuilder(this);
  }

  Gupdate_consentement_after_majoriteDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteConsentReapprovalRequirement =
          $v.deleteConsentReapprovalRequirement.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_consentement_after_majoriteData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_consentement_after_majoriteData;
  }

  @override
  void update(
      void Function(Gupdate_consentement_after_majoriteDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_consentement_after_majoriteData build() => _build();

  _$Gupdate_consentement_after_majoriteData _build() {
    _$Gupdate_consentement_after_majoriteData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_consentement_after_majoriteData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_consentement_after_majoriteData', 'G__typename'),
              deleteConsentReapprovalRequirement:
                  deleteConsentReapprovalRequirement.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteConsentReapprovalRequirement';
        deleteConsentReapprovalRequirement.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_consentement_after_majoriteData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
    extends Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement(
          [void Function(
                  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder)?
              updates]) =>
      (new Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement',
        'success');
  }

  @override
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      rebuild(
              void Function(
                      Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
      toBuilder() =>
          new Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement &&
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
            r'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
    implements
        Builder<
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement,
            Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder> {
  _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder() {
    Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
        ._initializeBuilder(this);
  }

  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder
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
      Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement;
  }

  @override
  void update(
      void Function(
              Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirementBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      build() => _build();

  _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
      _build() {
    final _$result = _$v ??
        new _$Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_consentement_after_majoriteData_deleteConsentReapprovalRequirement',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
