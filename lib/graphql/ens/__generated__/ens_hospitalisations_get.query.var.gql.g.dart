// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_get.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_hospitalisationsVars> _$ggetHospitalisationsVarsSerializer =
    new _$Gget_hospitalisationsVarsSerializer();

class _$Gget_hospitalisationsVarsSerializer
    implements StructuredSerializer<Gget_hospitalisationsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_hospitalisationsVars,
    _$Gget_hospitalisationsVars
  ];
  @override
  final String wireName = 'Gget_hospitalisationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_hospitalisationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_hospitalisationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_hospitalisationsVarsBuilder();

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

class _$Gget_hospitalisationsVars extends Gget_hospitalisationsVars {
  @override
  final String patientId;

  factory _$Gget_hospitalisationsVars(
          [void Function(Gget_hospitalisationsVarsBuilder)? updates]) =>
      (new Gget_hospitalisationsVarsBuilder()..update(updates))._build();

  _$Gget_hospitalisationsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_hospitalisationsVars', 'patientId');
  }

  @override
  Gget_hospitalisationsVars rebuild(
          void Function(Gget_hospitalisationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_hospitalisationsVarsBuilder toBuilder() =>
      new Gget_hospitalisationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_hospitalisationsVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_hospitalisationsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_hospitalisationsVarsBuilder
    implements
        Builder<Gget_hospitalisationsVars, Gget_hospitalisationsVarsBuilder> {
  _$Gget_hospitalisationsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_hospitalisationsVarsBuilder();

  Gget_hospitalisationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_hospitalisationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_hospitalisationsVars;
  }

  @override
  void update(void Function(Gget_hospitalisationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_hospitalisationsVars build() => _build();

  _$Gget_hospitalisationsVars _build() {
    final _$result = _$v ??
        new _$Gget_hospitalisationsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_hospitalisationsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
