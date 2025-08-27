// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_pml_professionnels_santeVars>
    _$ggetPmlProfessionnelsSanteVarsSerializer =
    new _$Gget_pml_professionnels_santeVarsSerializer();

class _$Gget_pml_professionnels_santeVarsSerializer
    implements StructuredSerializer<Gget_pml_professionnels_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_santeVars,
    _$Gget_pml_professionnels_santeVars
  ];
  @override
  final String wireName = 'Gget_pml_professionnels_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_pml_professionnels_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_pml_professionnels_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_pml_professionnels_santeVarsBuilder();

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

class _$Gget_pml_professionnels_santeVars
    extends Gget_pml_professionnels_santeVars {
  @override
  final String patientId;

  factory _$Gget_pml_professionnels_santeVars(
          [void Function(Gget_pml_professionnels_santeVarsBuilder)? updates]) =>
      (new Gget_pml_professionnels_santeVarsBuilder()..update(updates))
          ._build();

  _$Gget_pml_professionnels_santeVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_pml_professionnels_santeVars', 'patientId');
  }

  @override
  Gget_pml_professionnels_santeVars rebuild(
          void Function(Gget_pml_professionnels_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_santeVarsBuilder toBuilder() =>
      new Gget_pml_professionnels_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_pml_professionnels_santeVars &&
        patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_pml_professionnels_santeVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_pml_professionnels_santeVarsBuilder
    implements
        Builder<Gget_pml_professionnels_santeVars,
            Gget_pml_professionnels_santeVarsBuilder> {
  _$Gget_pml_professionnels_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_pml_professionnels_santeVarsBuilder();

  Gget_pml_professionnels_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_pml_professionnels_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_pml_professionnels_santeVars;
  }

  @override
  void update(
      void Function(Gget_pml_professionnels_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_santeVars build() => _build();

  _$Gget_pml_professionnels_santeVars _build() {
    final _$result = _$v ??
        new _$Gget_pml_professionnels_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_pml_professionnels_santeVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
