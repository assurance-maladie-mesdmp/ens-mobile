// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_delete_item.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_habitudes_de_vie_itemData>
    _$gdeleteHabitudesDeVieItemDataSerializer =
    new _$Gdelete_habitudes_de_vie_itemDataSerializer();
Serializer<Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem>
    _$gdeleteHabitudesDeVieItemDataDeleteLifestyleItemSerializer =
    new _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemSerializer();

class _$Gdelete_habitudes_de_vie_itemDataSerializer
    implements StructuredSerializer<Gdelete_habitudes_de_vie_itemData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_habitudes_de_vie_itemData,
    _$Gdelete_habitudes_de_vie_itemData
  ];
  @override
  final String wireName = 'Gdelete_habitudes_de_vie_itemData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_habitudes_de_vie_itemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteLifestyleItem',
      serializers.serialize(object.deleteLifestyleItem,
          specifiedType: const FullType(
              Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem)),
    ];

    return result;
  }

  @override
  Gdelete_habitudes_de_vie_itemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_habitudes_de_vie_itemDataBuilder();

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
        case 'deleteLifestyleItem':
          result.deleteLifestyleItem.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem))!
              as Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemSerializer
    implements
        StructuredSerializer<
            Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem> {
  @override
  final Iterable<Type> types = const [
    Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem,
    _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem
  ];
  @override
  final String wireName =
      'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem object,
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
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder();

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

class _$Gdelete_habitudes_de_vie_itemData
    extends Gdelete_habitudes_de_vie_itemData {
  @override
  final String G__typename;
  @override
  final Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem
      deleteLifestyleItem;

  factory _$Gdelete_habitudes_de_vie_itemData(
          [void Function(Gdelete_habitudes_de_vie_itemDataBuilder)? updates]) =>
      (new Gdelete_habitudes_de_vie_itemDataBuilder()..update(updates))
          ._build();

  _$Gdelete_habitudes_de_vie_itemData._(
      {required this.G__typename, required this.deleteLifestyleItem})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_habitudes_de_vie_itemData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteLifestyleItem,
        r'Gdelete_habitudes_de_vie_itemData', 'deleteLifestyleItem');
  }

  @override
  Gdelete_habitudes_de_vie_itemData rebuild(
          void Function(Gdelete_habitudes_de_vie_itemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_habitudes_de_vie_itemDataBuilder toBuilder() =>
      new Gdelete_habitudes_de_vie_itemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_habitudes_de_vie_itemData &&
        G__typename == other.G__typename &&
        deleteLifestyleItem == other.deleteLifestyleItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteLifestyleItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_habitudes_de_vie_itemData')
          ..add('G__typename', G__typename)
          ..add('deleteLifestyleItem', deleteLifestyleItem))
        .toString();
  }
}

class Gdelete_habitudes_de_vie_itemDataBuilder
    implements
        Builder<Gdelete_habitudes_de_vie_itemData,
            Gdelete_habitudes_de_vie_itemDataBuilder> {
  _$Gdelete_habitudes_de_vie_itemData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder?
      _deleteLifestyleItem;
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder
      get deleteLifestyleItem => _$this._deleteLifestyleItem ??=
          new Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder();
  set deleteLifestyleItem(
          Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder?
              deleteLifestyleItem) =>
      _$this._deleteLifestyleItem = deleteLifestyleItem;

  Gdelete_habitudes_de_vie_itemDataBuilder() {
    Gdelete_habitudes_de_vie_itemData._initializeBuilder(this);
  }

  Gdelete_habitudes_de_vie_itemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteLifestyleItem = $v.deleteLifestyleItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_habitudes_de_vie_itemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_habitudes_de_vie_itemData;
  }

  @override
  void update(
      void Function(Gdelete_habitudes_de_vie_itemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_habitudes_de_vie_itemData build() => _build();

  _$Gdelete_habitudes_de_vie_itemData _build() {
    _$Gdelete_habitudes_de_vie_itemData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_habitudes_de_vie_itemData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_habitudes_de_vie_itemData', 'G__typename'),
              deleteLifestyleItem: deleteLifestyleItem.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteLifestyleItem';
        deleteLifestyleItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_habitudes_de_vie_itemData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem
    extends Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem(
          [void Function(
                  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder)?
              updates]) =>
      (new Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem', 'success');
  }

  @override
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem rebuild(
          void Function(
                  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder toBuilder() =>
      new Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem &&
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
            r'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder
    implements
        Builder<Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem,
            Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder> {
  _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder() {
    Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem._initializeBuilder(
        this);
  }

  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem;
  }

  @override
  void update(
      void Function(
              Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem build() => _build();

  _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem _build() {
    final _$result = _$v ??
        new _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
