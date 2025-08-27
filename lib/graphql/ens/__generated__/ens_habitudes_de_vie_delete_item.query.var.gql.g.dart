// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_delete_item.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_habitudes_de_vie_itemVars>
    _$gdeleteHabitudesDeVieItemVarsSerializer =
    new _$Gdelete_habitudes_de_vie_itemVarsSerializer();

class _$Gdelete_habitudes_de_vie_itemVarsSerializer
    implements StructuredSerializer<Gdelete_habitudes_de_vie_itemVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_habitudes_de_vie_itemVars,
    _$Gdelete_habitudes_de_vie_itemVars
  ];
  @override
  final String wireName = 'Gdelete_habitudes_de_vie_itemVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_habitudes_de_vie_itemVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'lifestyleItemId',
      serializers.serialize(object.lifestyleItemId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_habitudes_de_vie_itemVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_habitudes_de_vie_itemVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lifestyleItemId':
          result.lifestyleItemId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_habitudes_de_vie_itemVars
    extends Gdelete_habitudes_de_vie_itemVars {
  @override
  final String patientId;
  @override
  final String lifestyleItemId;

  factory _$Gdelete_habitudes_de_vie_itemVars(
          [void Function(Gdelete_habitudes_de_vie_itemVarsBuilder)? updates]) =>
      (new Gdelete_habitudes_de_vie_itemVarsBuilder()..update(updates))
          ._build();

  _$Gdelete_habitudes_de_vie_itemVars._(
      {required this.patientId, required this.lifestyleItemId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_habitudes_de_vie_itemVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(lifestyleItemId,
        r'Gdelete_habitudes_de_vie_itemVars', 'lifestyleItemId');
  }

  @override
  Gdelete_habitudes_de_vie_itemVars rebuild(
          void Function(Gdelete_habitudes_de_vie_itemVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_habitudes_de_vie_itemVarsBuilder toBuilder() =>
      new Gdelete_habitudes_de_vie_itemVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_habitudes_de_vie_itemVars &&
        patientId == other.patientId &&
        lifestyleItemId == other.lifestyleItemId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, lifestyleItemId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_habitudes_de_vie_itemVars')
          ..add('patientId', patientId)
          ..add('lifestyleItemId', lifestyleItemId))
        .toString();
  }
}

class Gdelete_habitudes_de_vie_itemVarsBuilder
    implements
        Builder<Gdelete_habitudes_de_vie_itemVars,
            Gdelete_habitudes_de_vie_itemVarsBuilder> {
  _$Gdelete_habitudes_de_vie_itemVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _lifestyleItemId;
  String? get lifestyleItemId => _$this._lifestyleItemId;
  set lifestyleItemId(String? lifestyleItemId) =>
      _$this._lifestyleItemId = lifestyleItemId;

  Gdelete_habitudes_de_vie_itemVarsBuilder();

  Gdelete_habitudes_de_vie_itemVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _lifestyleItemId = $v.lifestyleItemId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_habitudes_de_vie_itemVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_habitudes_de_vie_itemVars;
  }

  @override
  void update(
      void Function(Gdelete_habitudes_de_vie_itemVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_habitudes_de_vie_itemVars build() => _build();

  _$Gdelete_habitudes_de_vie_itemVars _build() {
    final _$result = _$v ??
        new _$Gdelete_habitudes_de_vie_itemVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_habitudes_de_vie_itemVars', 'patientId'),
            lifestyleItemId: BuiltValueNullFieldError.checkNotNull(
                lifestyleItemId,
                r'Gdelete_habitudes_de_vie_itemVars',
                'lifestyleItemId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
