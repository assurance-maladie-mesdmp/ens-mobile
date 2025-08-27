// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_services.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_servicesVars> _$ggetServicesVarsSerializer =
    new _$Gget_servicesVarsSerializer();

class _$Gget_servicesVarsSerializer
    implements StructuredSerializer<Gget_servicesVars> {
  @override
  final Iterable<Type> types = const [Gget_servicesVars, _$Gget_servicesVars];
  @override
  final String wireName = 'Gget_servicesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_servicesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_servicesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_servicesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_servicesVars extends Gget_servicesVars {
  @override
  final String? patientId;

  factory _$Gget_servicesVars(
          [void Function(Gget_servicesVarsBuilder)? updates]) =>
      (new Gget_servicesVarsBuilder()..update(updates))._build();

  _$Gget_servicesVars._({this.patientId}) : super._();

  @override
  Gget_servicesVars rebuild(void Function(Gget_servicesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesVarsBuilder toBuilder() =>
      new Gget_servicesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_servicesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_servicesVarsBuilder
    implements Builder<Gget_servicesVars, Gget_servicesVarsBuilder> {
  _$Gget_servicesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_servicesVarsBuilder();

  Gget_servicesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_servicesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesVars;
  }

  @override
  void update(void Function(Gget_servicesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesVars build() => _build();

  _$Gget_servicesVars _build() {
    final _$result = _$v ?? new _$Gget_servicesVars._(patientId: patientId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
