// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_documentData> _$gupdateDocumentDataSerializer =
    new _$Gupdate_documentDataSerializer();
Serializer<Gupdate_documentData_updateDocumentProperties>
    _$gupdateDocumentDataUpdateDocumentPropertiesSerializer =
    new _$Gupdate_documentData_updateDocumentPropertiesSerializer();

class _$Gupdate_documentDataSerializer
    implements StructuredSerializer<Gupdate_documentData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_documentData,
    _$Gupdate_documentData
  ];
  @override
  final String wireName = 'Gupdate_documentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_documentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateDocumentProperties',
      serializers.serialize(object.updateDocumentProperties,
          specifiedType:
              const FullType(Gupdate_documentData_updateDocumentProperties)),
    ];

    return result;
  }

  @override
  Gupdate_documentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_documentDataBuilder();

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
        case 'updateDocumentProperties':
          result.updateDocumentProperties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_documentData_updateDocumentProperties))!
              as Gupdate_documentData_updateDocumentProperties);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_documentData_updateDocumentPropertiesSerializer
    implements
        StructuredSerializer<Gupdate_documentData_updateDocumentProperties> {
  @override
  final Iterable<Type> types = const [
    Gupdate_documentData_updateDocumentProperties,
    _$Gupdate_documentData_updateDocumentProperties
  ];
  @override
  final String wireName = 'Gupdate_documentData_updateDocumentProperties';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_documentData_updateDocumentProperties object,
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
  Gupdate_documentData_updateDocumentProperties deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_documentData_updateDocumentPropertiesBuilder();

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

class _$Gupdate_documentData extends Gupdate_documentData {
  @override
  final String G__typename;
  @override
  final Gupdate_documentData_updateDocumentProperties updateDocumentProperties;

  factory _$Gupdate_documentData(
          [void Function(Gupdate_documentDataBuilder)? updates]) =>
      (new Gupdate_documentDataBuilder()..update(updates))._build();

  _$Gupdate_documentData._(
      {required this.G__typename, required this.updateDocumentProperties})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_documentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateDocumentProperties,
        r'Gupdate_documentData', 'updateDocumentProperties');
  }

  @override
  Gupdate_documentData rebuild(
          void Function(Gupdate_documentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_documentDataBuilder toBuilder() =>
      new Gupdate_documentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_documentData &&
        G__typename == other.G__typename &&
        updateDocumentProperties == other.updateDocumentProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateDocumentProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_documentData')
          ..add('G__typename', G__typename)
          ..add('updateDocumentProperties', updateDocumentProperties))
        .toString();
  }
}

class Gupdate_documentDataBuilder
    implements Builder<Gupdate_documentData, Gupdate_documentDataBuilder> {
  _$Gupdate_documentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_documentData_updateDocumentPropertiesBuilder?
      _updateDocumentProperties;
  Gupdate_documentData_updateDocumentPropertiesBuilder
      get updateDocumentProperties => _$this._updateDocumentProperties ??=
          new Gupdate_documentData_updateDocumentPropertiesBuilder();
  set updateDocumentProperties(
          Gupdate_documentData_updateDocumentPropertiesBuilder?
              updateDocumentProperties) =>
      _$this._updateDocumentProperties = updateDocumentProperties;

  Gupdate_documentDataBuilder() {
    Gupdate_documentData._initializeBuilder(this);
  }

  Gupdate_documentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateDocumentProperties = $v.updateDocumentProperties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_documentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_documentData;
  }

  @override
  void update(void Function(Gupdate_documentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_documentData build() => _build();

  _$Gupdate_documentData _build() {
    _$Gupdate_documentData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_documentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_documentData', 'G__typename'),
              updateDocumentProperties: updateDocumentProperties.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateDocumentProperties';
        updateDocumentProperties.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_documentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_documentData_updateDocumentProperties
    extends Gupdate_documentData_updateDocumentProperties {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_documentData_updateDocumentProperties(
          [void Function(Gupdate_documentData_updateDocumentPropertiesBuilder)?
              updates]) =>
      (new Gupdate_documentData_updateDocumentPropertiesBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_documentData_updateDocumentProperties._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_documentData_updateDocumentProperties', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_documentData_updateDocumentProperties', 'success');
  }

  @override
  Gupdate_documentData_updateDocumentProperties rebuild(
          void Function(Gupdate_documentData_updateDocumentPropertiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_documentData_updateDocumentPropertiesBuilder toBuilder() =>
      new Gupdate_documentData_updateDocumentPropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_documentData_updateDocumentProperties &&
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
            r'Gupdate_documentData_updateDocumentProperties')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_documentData_updateDocumentPropertiesBuilder
    implements
        Builder<Gupdate_documentData_updateDocumentProperties,
            Gupdate_documentData_updateDocumentPropertiesBuilder> {
  _$Gupdate_documentData_updateDocumentProperties? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_documentData_updateDocumentPropertiesBuilder() {
    Gupdate_documentData_updateDocumentProperties._initializeBuilder(this);
  }

  Gupdate_documentData_updateDocumentPropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_documentData_updateDocumentProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_documentData_updateDocumentProperties;
  }

  @override
  void update(
      void Function(Gupdate_documentData_updateDocumentPropertiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_documentData_updateDocumentProperties build() => _build();

  _$Gupdate_documentData_updateDocumentProperties _build() {
    final _$result = _$v ??
        new _$Gupdate_documentData_updateDocumentProperties._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_documentData_updateDocumentProperties',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gupdate_documentData_updateDocumentProperties', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
