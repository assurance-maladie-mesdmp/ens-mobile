// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_services_without_synchro.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_services_without_synchroVars>
    _$ggetServicesWithoutSynchroVarsSerializer =
    new _$Gget_services_without_synchroVarsSerializer();

class _$Gget_services_without_synchroVarsSerializer
    implements StructuredSerializer<Gget_services_without_synchroVars> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroVars,
    _$Gget_services_without_synchroVars
  ];
  @override
  final String wireName = 'Gget_services_without_synchroVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_services_without_synchroVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_services_without_synchroVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_services_without_synchroVarsBuilder().build();
  }
}

class _$Gget_services_without_synchroVars
    extends Gget_services_without_synchroVars {
  factory _$Gget_services_without_synchroVars(
          [void Function(Gget_services_without_synchroVarsBuilder)? updates]) =>
      (new Gget_services_without_synchroVarsBuilder()..update(updates))
          ._build();

  _$Gget_services_without_synchroVars._() : super._();

  @override
  Gget_services_without_synchroVars rebuild(
          void Function(Gget_services_without_synchroVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroVarsBuilder toBuilder() =>
      new Gget_services_without_synchroVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_services_without_synchroVars;
  }

  @override
  int get hashCode {
    return 234269308;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_services_without_synchroVars')
        .toString();
  }
}

class Gget_services_without_synchroVarsBuilder
    implements
        Builder<Gget_services_without_synchroVars,
            Gget_services_without_synchroVarsBuilder> {
  _$Gget_services_without_synchroVars? _$v;

  Gget_services_without_synchroVarsBuilder();

  @override
  void replace(Gget_services_without_synchroVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_services_without_synchroVars;
  }

  @override
  void update(
      void Function(Gget_services_without_synchroVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroVars build() => _build();

  _$Gget_services_without_synchroVars _build() {
    final _$result = _$v ?? new _$Gget_services_without_synchroVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
