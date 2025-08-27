// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_delete.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_hospitalisationVars> _$gdeleteHospitalisationVarsSerializer =
    new _$Gdelete_hospitalisationVarsSerializer();

class _$Gdelete_hospitalisationVarsSerializer
    implements StructuredSerializer<Gdelete_hospitalisationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_hospitalisationVars,
    _$Gdelete_hospitalisationVars
  ];
  @override
  final String wireName = 'Gdelete_hospitalisationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_hospitalisationVars object,
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
  Gdelete_hospitalisationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_hospitalisationVarsBuilder();

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

class _$Gdelete_hospitalisationVars extends Gdelete_hospitalisationVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_hospitalisationVars(
          [void Function(Gdelete_hospitalisationVarsBuilder)? updates]) =>
      (new Gdelete_hospitalisationVarsBuilder()..update(updates))._build();

  _$Gdelete_hospitalisationVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_hospitalisationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gdelete_hospitalisationVars', 'id');
  }

  @override
  Gdelete_hospitalisationVars rebuild(
          void Function(Gdelete_hospitalisationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_hospitalisationVarsBuilder toBuilder() =>
      new Gdelete_hospitalisationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_hospitalisationVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_hospitalisationVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_hospitalisationVarsBuilder
    implements
        Builder<Gdelete_hospitalisationVars,
            Gdelete_hospitalisationVarsBuilder> {
  _$Gdelete_hospitalisationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_hospitalisationVarsBuilder();

  Gdelete_hospitalisationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_hospitalisationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_hospitalisationVars;
  }

  @override
  void update(void Function(Gdelete_hospitalisationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_hospitalisationVars build() => _build();

  _$Gdelete_hospitalisationVars _build() {
    final _$result = _$v ??
        new _$Gdelete_hospitalisationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_hospitalisationVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_hospitalisationVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
