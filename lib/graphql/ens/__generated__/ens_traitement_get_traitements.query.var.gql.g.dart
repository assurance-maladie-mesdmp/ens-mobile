// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_get_traitements.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_traitementsVars> _$ggetTraitementsVarsSerializer =
    new _$Gget_traitementsVarsSerializer();

class _$Gget_traitementsVarsSerializer
    implements StructuredSerializer<Gget_traitementsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsVars,
    _$Gget_traitementsVars
  ];
  @override
  final String wireName = 'Gget_traitementsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_traitementsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_traitementsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_traitementsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsVars extends Gget_traitementsVars {
  @override
  final String patientId;

  factory _$Gget_traitementsVars(
          [void Function(Gget_traitementsVarsBuilder)? updates]) =>
      (new Gget_traitementsVarsBuilder()..update(updates))._build();

  _$Gget_traitementsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_traitementsVars', 'patientId');
  }

  @override
  Gget_traitementsVars rebuild(
          void Function(Gget_traitementsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsVarsBuilder toBuilder() =>
      new Gget_traitementsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_traitementsVars && patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_traitementsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_traitementsVarsBuilder
    implements Builder<Gget_traitementsVars, Gget_traitementsVarsBuilder> {
  _$Gget_traitementsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_traitementsVarsBuilder();

  Gget_traitementsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_traitementsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsVars;
  }

  @override
  void update(void Function(Gget_traitementsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsVars build() => _build();

  _$Gget_traitementsVars _build() {
    final _$result = _$v ??
        new _$Gget_traitementsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_traitementsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
