// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_delete_delegation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_delegationData> _$gdeleteDelegationDataSerializer =
    new _$Gdelete_delegationDataSerializer();
Serializer<Gdelete_delegationData_delegationRevoke>
    _$gdeleteDelegationDataDelegationRevokeSerializer =
    new _$Gdelete_delegationData_delegationRevokeSerializer();

class _$Gdelete_delegationDataSerializer
    implements StructuredSerializer<Gdelete_delegationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_delegationData,
    _$Gdelete_delegationData
  ];
  @override
  final String wireName = 'Gdelete_delegationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_delegationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationRevoke',
      serializers.serialize(object.delegationRevoke,
          specifiedType:
              const FullType(Gdelete_delegationData_delegationRevoke)),
    ];

    return result;
  }

  @override
  Gdelete_delegationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_delegationDataBuilder();

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
        case 'delegationRevoke':
          result.delegationRevoke.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_delegationData_delegationRevoke))!
              as Gdelete_delegationData_delegationRevoke);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_delegationData_delegationRevokeSerializer
    implements StructuredSerializer<Gdelete_delegationData_delegationRevoke> {
  @override
  final Iterable<Type> types = const [
    Gdelete_delegationData_delegationRevoke,
    _$Gdelete_delegationData_delegationRevoke
  ];
  @override
  final String wireName = 'Gdelete_delegationData_delegationRevoke';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_delegationData_delegationRevoke object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.attestation;
    if (value != null) {
      result
        ..add('attestation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.documentId;
    if (value != null) {
      result
        ..add('documentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSavedInDmp;
    if (value != null) {
      result
        ..add('isSavedInDmp')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Gdelete_delegationData_delegationRevoke deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_delegationData_delegationRevokeBuilder();

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
        case 'attestation':
          result.attestation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'documentId':
          result.documentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSavedInDmp':
          result.isSavedInDmp = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_delegationData extends Gdelete_delegationData {
  @override
  final String G__typename;
  @override
  final Gdelete_delegationData_delegationRevoke delegationRevoke;

  factory _$Gdelete_delegationData(
          [void Function(Gdelete_delegationDataBuilder)? updates]) =>
      (new Gdelete_delegationDataBuilder()..update(updates))._build();

  _$Gdelete_delegationData._(
      {required this.G__typename, required this.delegationRevoke})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_delegationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delegationRevoke, r'Gdelete_delegationData', 'delegationRevoke');
  }

  @override
  Gdelete_delegationData rebuild(
          void Function(Gdelete_delegationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_delegationDataBuilder toBuilder() =>
      new Gdelete_delegationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_delegationData &&
        G__typename == other.G__typename &&
        delegationRevoke == other.delegationRevoke;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationRevoke.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_delegationData')
          ..add('G__typename', G__typename)
          ..add('delegationRevoke', delegationRevoke))
        .toString();
  }
}

class Gdelete_delegationDataBuilder
    implements Builder<Gdelete_delegationData, Gdelete_delegationDataBuilder> {
  _$Gdelete_delegationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_delegationData_delegationRevokeBuilder? _delegationRevoke;
  Gdelete_delegationData_delegationRevokeBuilder get delegationRevoke =>
      _$this._delegationRevoke ??=
          new Gdelete_delegationData_delegationRevokeBuilder();
  set delegationRevoke(
          Gdelete_delegationData_delegationRevokeBuilder? delegationRevoke) =>
      _$this._delegationRevoke = delegationRevoke;

  Gdelete_delegationDataBuilder() {
    Gdelete_delegationData._initializeBuilder(this);
  }

  Gdelete_delegationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationRevoke = $v.delegationRevoke.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_delegationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_delegationData;
  }

  @override
  void update(void Function(Gdelete_delegationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_delegationData build() => _build();

  _$Gdelete_delegationData _build() {
    _$Gdelete_delegationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_delegationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_delegationData', 'G__typename'),
              delegationRevoke: delegationRevoke.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationRevoke';
        delegationRevoke.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_delegationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_delegationData_delegationRevoke
    extends Gdelete_delegationData_delegationRevoke {
  @override
  final String G__typename;
  @override
  final String? attestation;
  @override
  final String? documentId;
  @override
  final bool? isSavedInDmp;

  factory _$Gdelete_delegationData_delegationRevoke(
          [void Function(Gdelete_delegationData_delegationRevokeBuilder)?
              updates]) =>
      (new Gdelete_delegationData_delegationRevokeBuilder()..update(updates))
          ._build();

  _$Gdelete_delegationData_delegationRevoke._(
      {required this.G__typename,
      this.attestation,
      this.documentId,
      this.isSavedInDmp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_delegationData_delegationRevoke', 'G__typename');
  }

  @override
  Gdelete_delegationData_delegationRevoke rebuild(
          void Function(Gdelete_delegationData_delegationRevokeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_delegationData_delegationRevokeBuilder toBuilder() =>
      new Gdelete_delegationData_delegationRevokeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_delegationData_delegationRevoke &&
        G__typename == other.G__typename &&
        attestation == other.attestation &&
        documentId == other.documentId &&
        isSavedInDmp == other.isSavedInDmp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, attestation.hashCode);
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, isSavedInDmp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gdelete_delegationData_delegationRevoke')
          ..add('G__typename', G__typename)
          ..add('attestation', attestation)
          ..add('documentId', documentId)
          ..add('isSavedInDmp', isSavedInDmp))
        .toString();
  }
}

class Gdelete_delegationData_delegationRevokeBuilder
    implements
        Builder<Gdelete_delegationData_delegationRevoke,
            Gdelete_delegationData_delegationRevokeBuilder> {
  _$Gdelete_delegationData_delegationRevoke? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _attestation;
  String? get attestation => _$this._attestation;
  set attestation(String? attestation) => _$this._attestation = attestation;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  bool? _isSavedInDmp;
  bool? get isSavedInDmp => _$this._isSavedInDmp;
  set isSavedInDmp(bool? isSavedInDmp) => _$this._isSavedInDmp = isSavedInDmp;

  Gdelete_delegationData_delegationRevokeBuilder() {
    Gdelete_delegationData_delegationRevoke._initializeBuilder(this);
  }

  Gdelete_delegationData_delegationRevokeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _attestation = $v.attestation;
      _documentId = $v.documentId;
      _isSavedInDmp = $v.isSavedInDmp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_delegationData_delegationRevoke other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_delegationData_delegationRevoke;
  }

  @override
  void update(
      void Function(Gdelete_delegationData_delegationRevokeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_delegationData_delegationRevoke build() => _build();

  _$Gdelete_delegationData_delegationRevoke _build() {
    final _$result = _$v ??
        new _$Gdelete_delegationData_delegationRevoke._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_delegationData_delegationRevoke', 'G__typename'),
            attestation: attestation,
            documentId: documentId,
            isSavedInDmp: isSavedInDmp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
