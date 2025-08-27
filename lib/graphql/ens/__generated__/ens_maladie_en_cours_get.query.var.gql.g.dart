// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladie_en_cours_get.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_maladies_in_progressVars>
    _$ggetMaladiesInProgressVarsSerializer =
    new _$Gget_maladies_in_progressVarsSerializer();

class _$Gget_maladies_in_progressVarsSerializer
    implements StructuredSerializer<Gget_maladies_in_progressVars> {
  @override
  final Iterable<Type> types = const [
    Gget_maladies_in_progressVars,
    _$Gget_maladies_in_progressVars
  ];
  @override
  final String wireName = 'Gget_maladies_in_progressVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_maladies_in_progressVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_maladies_in_progressVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladies_in_progressVarsBuilder();

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

class _$Gget_maladies_in_progressVars extends Gget_maladies_in_progressVars {
  @override
  final String patientId;

  factory _$Gget_maladies_in_progressVars(
          [void Function(Gget_maladies_in_progressVarsBuilder)? updates]) =>
      (new Gget_maladies_in_progressVarsBuilder()..update(updates))._build();

  _$Gget_maladies_in_progressVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_maladies_in_progressVars', 'patientId');
  }

  @override
  Gget_maladies_in_progressVars rebuild(
          void Function(Gget_maladies_in_progressVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladies_in_progressVarsBuilder toBuilder() =>
      new Gget_maladies_in_progressVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladies_in_progressVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_maladies_in_progressVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_maladies_in_progressVarsBuilder
    implements
        Builder<Gget_maladies_in_progressVars,
            Gget_maladies_in_progressVarsBuilder> {
  _$Gget_maladies_in_progressVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_maladies_in_progressVarsBuilder();

  Gget_maladies_in_progressVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_maladies_in_progressVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladies_in_progressVars;
  }

  @override
  void update(void Function(Gget_maladies_in_progressVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladies_in_progressVars build() => _build();

  _$Gget_maladies_in_progressVars _build() {
    final _$result = _$v ??
        new _$Gget_maladies_in_progressVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_maladies_in_progressVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
