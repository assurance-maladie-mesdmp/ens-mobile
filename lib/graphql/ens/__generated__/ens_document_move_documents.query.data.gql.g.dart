// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_move_documents.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmove_documentsData> _$gmoveDocumentsDataSerializer =
    new _$Gmove_documentsDataSerializer();
Serializer<Gmove_documentsData_moveDocumentsV2>
    _$gmoveDocumentsDataMoveDocumentsV2Serializer =
    new _$Gmove_documentsData_moveDocumentsV2Serializer();

class _$Gmove_documentsDataSerializer
    implements StructuredSerializer<Gmove_documentsData> {
  @override
  final Iterable<Type> types = const [
    Gmove_documentsData,
    _$Gmove_documentsData
  ];
  @override
  final String wireName = 'Gmove_documentsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmove_documentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'moveDocumentsV2',
      serializers.serialize(object.moveDocumentsV2,
          specifiedType: const FullType(Gmove_documentsData_moveDocumentsV2)),
    ];

    return result;
  }

  @override
  Gmove_documentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmove_documentsDataBuilder();

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
        case 'moveDocumentsV2':
          result.moveDocumentsV2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gmove_documentsData_moveDocumentsV2))!
              as Gmove_documentsData_moveDocumentsV2);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmove_documentsData_moveDocumentsV2Serializer
    implements StructuredSerializer<Gmove_documentsData_moveDocumentsV2> {
  @override
  final Iterable<Type> types = const [
    Gmove_documentsData_moveDocumentsV2,
    _$Gmove_documentsData_moveDocumentsV2
  ];
  @override
  final String wireName = 'Gmove_documentsData_moveDocumentsV2';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmove_documentsData_moveDocumentsV2 object,
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
  Gmove_documentsData_moveDocumentsV2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmove_documentsData_moveDocumentsV2Builder();

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

class _$Gmove_documentsData extends Gmove_documentsData {
  @override
  final String G__typename;
  @override
  final Gmove_documentsData_moveDocumentsV2 moveDocumentsV2;

  factory _$Gmove_documentsData(
          [void Function(Gmove_documentsDataBuilder)? updates]) =>
      (new Gmove_documentsDataBuilder()..update(updates))._build();

  _$Gmove_documentsData._(
      {required this.G__typename, required this.moveDocumentsV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmove_documentsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        moveDocumentsV2, r'Gmove_documentsData', 'moveDocumentsV2');
  }

  @override
  Gmove_documentsData rebuild(
          void Function(Gmove_documentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmove_documentsDataBuilder toBuilder() =>
      new Gmove_documentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmove_documentsData &&
        G__typename == other.G__typename &&
        moveDocumentsV2 == other.moveDocumentsV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, moveDocumentsV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmove_documentsData')
          ..add('G__typename', G__typename)
          ..add('moveDocumentsV2', moveDocumentsV2))
        .toString();
  }
}

class Gmove_documentsDataBuilder
    implements Builder<Gmove_documentsData, Gmove_documentsDataBuilder> {
  _$Gmove_documentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmove_documentsData_moveDocumentsV2Builder? _moveDocumentsV2;
  Gmove_documentsData_moveDocumentsV2Builder get moveDocumentsV2 =>
      _$this._moveDocumentsV2 ??=
          new Gmove_documentsData_moveDocumentsV2Builder();
  set moveDocumentsV2(
          Gmove_documentsData_moveDocumentsV2Builder? moveDocumentsV2) =>
      _$this._moveDocumentsV2 = moveDocumentsV2;

  Gmove_documentsDataBuilder() {
    Gmove_documentsData._initializeBuilder(this);
  }

  Gmove_documentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _moveDocumentsV2 = $v.moveDocumentsV2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmove_documentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmove_documentsData;
  }

  @override
  void update(void Function(Gmove_documentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmove_documentsData build() => _build();

  _$Gmove_documentsData _build() {
    _$Gmove_documentsData _$result;
    try {
      _$result = _$v ??
          new _$Gmove_documentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gmove_documentsData', 'G__typename'),
              moveDocumentsV2: moveDocumentsV2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moveDocumentsV2';
        moveDocumentsV2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmove_documentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmove_documentsData_moveDocumentsV2
    extends Gmove_documentsData_moveDocumentsV2 {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gmove_documentsData_moveDocumentsV2(
          [void Function(Gmove_documentsData_moveDocumentsV2Builder)?
              updates]) =>
      (new Gmove_documentsData_moveDocumentsV2Builder()..update(updates))
          ._build();

  _$Gmove_documentsData_moveDocumentsV2._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmove_documentsData_moveDocumentsV2', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gmove_documentsData_moveDocumentsV2', 'success');
  }

  @override
  Gmove_documentsData_moveDocumentsV2 rebuild(
          void Function(Gmove_documentsData_moveDocumentsV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmove_documentsData_moveDocumentsV2Builder toBuilder() =>
      new Gmove_documentsData_moveDocumentsV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmove_documentsData_moveDocumentsV2 &&
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
    return (newBuiltValueToStringHelper(r'Gmove_documentsData_moveDocumentsV2')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gmove_documentsData_moveDocumentsV2Builder
    implements
        Builder<Gmove_documentsData_moveDocumentsV2,
            Gmove_documentsData_moveDocumentsV2Builder> {
  _$Gmove_documentsData_moveDocumentsV2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gmove_documentsData_moveDocumentsV2Builder() {
    Gmove_documentsData_moveDocumentsV2._initializeBuilder(this);
  }

  Gmove_documentsData_moveDocumentsV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmove_documentsData_moveDocumentsV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmove_documentsData_moveDocumentsV2;
  }

  @override
  void update(
      void Function(Gmove_documentsData_moveDocumentsV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmove_documentsData_moveDocumentsV2 build() => _build();

  _$Gmove_documentsData_moveDocumentsV2 _build() {
    final _$result = _$v ??
        new _$Gmove_documentsData_moveDocumentsV2._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gmove_documentsData_moveDocumentsV2', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gmove_documentsData_moveDocumentsV2', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
