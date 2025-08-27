// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_habitudes_de_vieVars> _$ggetHabitudesDeVieVarsSerializer =
    new _$Gget_habitudes_de_vieVarsSerializer();

class _$Gget_habitudes_de_vieVarsSerializer
    implements StructuredSerializer<Gget_habitudes_de_vieVars> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieVars,
    _$Gget_habitudes_de_vieVars
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_habitudes_de_vieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_habitudes_de_vieVarsBuilder();

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

class _$Gget_habitudes_de_vieVars extends Gget_habitudes_de_vieVars {
  @override
  final String patientId;

  factory _$Gget_habitudes_de_vieVars(
          [void Function(Gget_habitudes_de_vieVarsBuilder)? updates]) =>
      (new Gget_habitudes_de_vieVarsBuilder()..update(updates))._build();

  _$Gget_habitudes_de_vieVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_habitudes_de_vieVars', 'patientId');
  }

  @override
  Gget_habitudes_de_vieVars rebuild(
          void Function(Gget_habitudes_de_vieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieVarsBuilder toBuilder() =>
      new Gget_habitudes_de_vieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vieVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_habitudes_de_vieVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_habitudes_de_vieVarsBuilder
    implements
        Builder<Gget_habitudes_de_vieVars, Gget_habitudes_de_vieVarsBuilder> {
  _$Gget_habitudes_de_vieVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_habitudes_de_vieVarsBuilder();

  Gget_habitudes_de_vieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieVars;
  }

  @override
  void update(void Function(Gget_habitudes_de_vieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieVars build() => _build();

  _$Gget_habitudes_de_vieVars _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vieVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_habitudes_de_vieVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
