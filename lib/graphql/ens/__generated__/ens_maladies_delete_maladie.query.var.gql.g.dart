// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_delete_maladie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_maladieVars> _$gdeleteMaladieVarsSerializer =
    new _$Gdelete_maladieVarsSerializer();

class _$Gdelete_maladieVarsSerializer
    implements StructuredSerializer<Gdelete_maladieVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_maladieVars,
    _$Gdelete_maladieVars
  ];
  @override
  final String wireName = 'Gdelete_maladieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_maladieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_maladieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_maladieVarsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_maladieVars extends Gdelete_maladieVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_maladieVars(
          [void Function(Gdelete_maladieVarsBuilder)? updates]) =>
      (new Gdelete_maladieVarsBuilder()..update(updates))._build();

  _$Gdelete_maladieVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_maladieVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(id, r'Gdelete_maladieVars', 'id');
  }

  @override
  Gdelete_maladieVars rebuild(
          void Function(Gdelete_maladieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_maladieVarsBuilder toBuilder() =>
      new Gdelete_maladieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_maladieVars &&
        patientId == other.patientId &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_maladieVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_maladieVarsBuilder
    implements Builder<Gdelete_maladieVars, Gdelete_maladieVarsBuilder> {
  _$Gdelete_maladieVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_maladieVarsBuilder();

  Gdelete_maladieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_maladieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_maladieVars;
  }

  @override
  void update(void Function(Gdelete_maladieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_maladieVars build() => _build();

  _$Gdelete_maladieVars _build() {
    final _$result = _$v ??
        new _$Gdelete_maladieVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_maladieVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_maladieVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
