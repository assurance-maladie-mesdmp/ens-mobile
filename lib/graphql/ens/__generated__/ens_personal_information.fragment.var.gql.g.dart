// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_personal_information.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpersonalInformationVars> _$gpersonalInformationVarsSerializer =
    new _$GpersonalInformationVarsSerializer();

class _$GpersonalInformationVarsSerializer
    implements StructuredSerializer<GpersonalInformationVars> {
  @override
  final Iterable<Type> types = const [
    GpersonalInformationVars,
    _$GpersonalInformationVars
  ];
  @override
  final String wireName = 'GpersonalInformationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GpersonalInformationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GpersonalInformationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GpersonalInformationVarsBuilder().build();
  }
}

class _$GpersonalInformationVars extends GpersonalInformationVars {
  factory _$GpersonalInformationVars(
          [void Function(GpersonalInformationVarsBuilder)? updates]) =>
      (new GpersonalInformationVarsBuilder()..update(updates))._build();

  _$GpersonalInformationVars._() : super._();

  @override
  GpersonalInformationVars rebuild(
          void Function(GpersonalInformationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpersonalInformationVarsBuilder toBuilder() =>
      new GpersonalInformationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpersonalInformationVars;
  }

  @override
  int get hashCode {
    return 666453586;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GpersonalInformationVars').toString();
  }
}

class GpersonalInformationVarsBuilder
    implements
        Builder<GpersonalInformationVars, GpersonalInformationVarsBuilder> {
  _$GpersonalInformationVars? _$v;

  GpersonalInformationVarsBuilder();

  @override
  void replace(GpersonalInformationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpersonalInformationVars;
  }

  @override
  void update(void Function(GpersonalInformationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpersonalInformationVars build() => _build();

  _$GpersonalInformationVars _build() {
    final _$result = _$v ?? new _$GpersonalInformationVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
