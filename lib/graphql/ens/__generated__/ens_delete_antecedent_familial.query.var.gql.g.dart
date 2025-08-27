// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_antecedent_familial.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_antecedent_familialVars>
    _$gdeleteAntecedentFamilialVarsSerializer =
    new _$Gdelete_antecedent_familialVarsSerializer();

class _$Gdelete_antecedent_familialVarsSerializer
    implements StructuredSerializer<Gdelete_antecedent_familialVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_antecedent_familialVars,
    _$Gdelete_antecedent_familialVars
  ];
  @override
  final String wireName = 'Gdelete_antecedent_familialVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_antecedent_familialVars object,
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
  Gdelete_antecedent_familialVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_antecedent_familialVarsBuilder();

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

class _$Gdelete_antecedent_familialVars
    extends Gdelete_antecedent_familialVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_antecedent_familialVars(
          [void Function(Gdelete_antecedent_familialVarsBuilder)? updates]) =>
      (new Gdelete_antecedent_familialVarsBuilder()..update(updates))._build();

  _$Gdelete_antecedent_familialVars._(
      {required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_antecedent_familialVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gdelete_antecedent_familialVars', 'id');
  }

  @override
  Gdelete_antecedent_familialVars rebuild(
          void Function(Gdelete_antecedent_familialVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_antecedent_familialVarsBuilder toBuilder() =>
      new Gdelete_antecedent_familialVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_antecedent_familialVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_antecedent_familialVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_antecedent_familialVarsBuilder
    implements
        Builder<Gdelete_antecedent_familialVars,
            Gdelete_antecedent_familialVarsBuilder> {
  _$Gdelete_antecedent_familialVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_antecedent_familialVarsBuilder();

  Gdelete_antecedent_familialVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_antecedent_familialVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_antecedent_familialVars;
  }

  @override
  void update(void Function(Gdelete_antecedent_familialVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_antecedent_familialVars build() => _build();

  _$Gdelete_antecedent_familialVars _build() {
    final _$result = _$v ??
        new _$Gdelete_antecedent_familialVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_antecedent_familialVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_antecedent_familialVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
