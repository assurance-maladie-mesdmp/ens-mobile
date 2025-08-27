// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_update_item.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_habitudes_de_vie_itemData>
    _$gupdateHabitudesDeVieItemDataSerializer =
    new _$Gupdate_habitudes_de_vie_itemDataSerializer();
Serializer<Gupdate_habitudes_de_vie_itemData_updateLifestyleItem>
    _$gupdateHabitudesDeVieItemDataUpdateLifestyleItemSerializer =
    new _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItemSerializer();

class _$Gupdate_habitudes_de_vie_itemDataSerializer
    implements StructuredSerializer<Gupdate_habitudes_de_vie_itemData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_habitudes_de_vie_itemData,
    _$Gupdate_habitudes_de_vie_itemData
  ];
  @override
  final String wireName = 'Gupdate_habitudes_de_vie_itemData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_habitudes_de_vie_itemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateLifestyleItem',
      serializers.serialize(object.updateLifestyleItem,
          specifiedType: const FullType(
              Gupdate_habitudes_de_vie_itemData_updateLifestyleItem)),
    ];

    return result;
  }

  @override
  Gupdate_habitudes_de_vie_itemData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_habitudes_de_vie_itemDataBuilder();

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
        case 'updateLifestyleItem':
          result.updateLifestyleItem.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_habitudes_de_vie_itemData_updateLifestyleItem))!
              as Gupdate_habitudes_de_vie_itemData_updateLifestyleItem);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItemSerializer
    implements
        StructuredSerializer<
            Gupdate_habitudes_de_vie_itemData_updateLifestyleItem> {
  @override
  final Iterable<Type> types = const [
    Gupdate_habitudes_de_vie_itemData_updateLifestyleItem,
    _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem
  ];
  @override
  final String wireName =
      'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_habitudes_de_vie_itemData_updateLifestyleItem object,
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
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder();

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

class _$Gupdate_habitudes_de_vie_itemData
    extends Gupdate_habitudes_de_vie_itemData {
  @override
  final String G__typename;
  @override
  final Gupdate_habitudes_de_vie_itemData_updateLifestyleItem
      updateLifestyleItem;

  factory _$Gupdate_habitudes_de_vie_itemData(
          [void Function(Gupdate_habitudes_de_vie_itemDataBuilder)? updates]) =>
      (new Gupdate_habitudes_de_vie_itemDataBuilder()..update(updates))
          ._build();

  _$Gupdate_habitudes_de_vie_itemData._(
      {required this.G__typename, required this.updateLifestyleItem})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_habitudes_de_vie_itemData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateLifestyleItem,
        r'Gupdate_habitudes_de_vie_itemData', 'updateLifestyleItem');
  }

  @override
  Gupdate_habitudes_de_vie_itemData rebuild(
          void Function(Gupdate_habitudes_de_vie_itemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_habitudes_de_vie_itemDataBuilder toBuilder() =>
      new Gupdate_habitudes_de_vie_itemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_habitudes_de_vie_itemData &&
        G__typename == other.G__typename &&
        updateLifestyleItem == other.updateLifestyleItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateLifestyleItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_habitudes_de_vie_itemData')
          ..add('G__typename', G__typename)
          ..add('updateLifestyleItem', updateLifestyleItem))
        .toString();
  }
}

class Gupdate_habitudes_de_vie_itemDataBuilder
    implements
        Builder<Gupdate_habitudes_de_vie_itemData,
            Gupdate_habitudes_de_vie_itemDataBuilder> {
  _$Gupdate_habitudes_de_vie_itemData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder?
      _updateLifestyleItem;
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder
      get updateLifestyleItem => _$this._updateLifestyleItem ??=
          new Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder();
  set updateLifestyleItem(
          Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder?
              updateLifestyleItem) =>
      _$this._updateLifestyleItem = updateLifestyleItem;

  Gupdate_habitudes_de_vie_itemDataBuilder() {
    Gupdate_habitudes_de_vie_itemData._initializeBuilder(this);
  }

  Gupdate_habitudes_de_vie_itemDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateLifestyleItem = $v.updateLifestyleItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_habitudes_de_vie_itemData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_habitudes_de_vie_itemData;
  }

  @override
  void update(
      void Function(Gupdate_habitudes_de_vie_itemDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_habitudes_de_vie_itemData build() => _build();

  _$Gupdate_habitudes_de_vie_itemData _build() {
    _$Gupdate_habitudes_de_vie_itemData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_habitudes_de_vie_itemData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_habitudes_de_vie_itemData', 'G__typename'),
              updateLifestyleItem: updateLifestyleItem.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateLifestyleItem';
        updateLifestyleItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_habitudes_de_vie_itemData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem
    extends Gupdate_habitudes_de_vie_itemData_updateLifestyleItem {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem(
          [void Function(
                  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder)?
              updates]) =>
      (new Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem', 'success');
  }

  @override
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItem rebuild(
          void Function(
                  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder toBuilder() =>
      new Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_habitudes_de_vie_itemData_updateLifestyleItem &&
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
            r'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder
    implements
        Builder<Gupdate_habitudes_de_vie_itemData_updateLifestyleItem,
            Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder> {
  _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder() {
    Gupdate_habitudes_de_vie_itemData_updateLifestyleItem._initializeBuilder(
        this);
  }

  Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_habitudes_de_vie_itemData_updateLifestyleItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem;
  }

  @override
  void update(
      void Function(
              Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItem build() => _build();

  _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem _build() {
    final _$result = _$v ??
        new _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_habitudes_de_vie_itemData_updateLifestyleItem',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
