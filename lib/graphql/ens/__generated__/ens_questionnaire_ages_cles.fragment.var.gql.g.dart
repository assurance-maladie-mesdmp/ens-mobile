// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_ages_cles.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GstartQuestionnaireVars> _$gstartQuestionnaireVarsSerializer =
    new _$GstartQuestionnaireVarsSerializer();
Serializer<GendQuestionnaireVars> _$gendQuestionnaireVarsSerializer =
    new _$GendQuestionnaireVarsSerializer();
Serializer<GquestionVars> _$gquestionVarsSerializer =
    new _$GquestionVarsSerializer();
Serializer<GchoiceQuestionVars> _$gchoiceQuestionVarsSerializer =
    new _$GchoiceQuestionVarsSerializer();
Serializer<GconstraintsQuestionVars> _$gconstraintsQuestionVarsSerializer =
    new _$GconstraintsQuestionVarsSerializer();

class _$GstartQuestionnaireVarsSerializer
    implements StructuredSerializer<GstartQuestionnaireVars> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireVars,
    _$GstartQuestionnaireVars
  ];
  @override
  final String wireName = 'GstartQuestionnaireVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GstartQuestionnaireVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GstartQuestionnaireVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GstartQuestionnaireVarsBuilder().build();
  }
}

class _$GendQuestionnaireVarsSerializer
    implements StructuredSerializer<GendQuestionnaireVars> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireVars,
    _$GendQuestionnaireVars
  ];
  @override
  final String wireName = 'GendQuestionnaireVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GendQuestionnaireVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GendQuestionnaireVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GendQuestionnaireVarsBuilder().build();
  }
}

class _$GquestionVarsSerializer implements StructuredSerializer<GquestionVars> {
  @override
  final Iterable<Type> types = const [GquestionVars, _$GquestionVars];
  @override
  final String wireName = 'GquestionVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GquestionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GquestionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GquestionVarsBuilder().build();
  }
}

class _$GchoiceQuestionVarsSerializer
    implements StructuredSerializer<GchoiceQuestionVars> {
  @override
  final Iterable<Type> types = const [
    GchoiceQuestionVars,
    _$GchoiceQuestionVars
  ];
  @override
  final String wireName = 'GchoiceQuestionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchoiceQuestionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GchoiceQuestionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GchoiceQuestionVarsBuilder().build();
  }
}

class _$GconstraintsQuestionVarsSerializer
    implements StructuredSerializer<GconstraintsQuestionVars> {
  @override
  final Iterable<Type> types = const [
    GconstraintsQuestionVars,
    _$GconstraintsQuestionVars
  ];
  @override
  final String wireName = 'GconstraintsQuestionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconstraintsQuestionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GconstraintsQuestionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GconstraintsQuestionVarsBuilder().build();
  }
}

class _$GstartQuestionnaireVars extends GstartQuestionnaireVars {
  factory _$GstartQuestionnaireVars(
          [void Function(GstartQuestionnaireVarsBuilder)? updates]) =>
      (new GstartQuestionnaireVarsBuilder()..update(updates))._build();

  _$GstartQuestionnaireVars._() : super._();

  @override
  GstartQuestionnaireVars rebuild(
          void Function(GstartQuestionnaireVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireVarsBuilder toBuilder() =>
      new GstartQuestionnaireVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireVars;
  }

  @override
  int get hashCode {
    return 483289254;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GstartQuestionnaireVars').toString();
  }
}

class GstartQuestionnaireVarsBuilder
    implements
        Builder<GstartQuestionnaireVars, GstartQuestionnaireVarsBuilder> {
  _$GstartQuestionnaireVars? _$v;

  GstartQuestionnaireVarsBuilder();

  @override
  void replace(GstartQuestionnaireVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireVars;
  }

  @override
  void update(void Function(GstartQuestionnaireVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireVars build() => _build();

  _$GstartQuestionnaireVars _build() {
    final _$result = _$v ?? new _$GstartQuestionnaireVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireVars extends GendQuestionnaireVars {
  factory _$GendQuestionnaireVars(
          [void Function(GendQuestionnaireVarsBuilder)? updates]) =>
      (new GendQuestionnaireVarsBuilder()..update(updates))._build();

  _$GendQuestionnaireVars._() : super._();

  @override
  GendQuestionnaireVars rebuild(
          void Function(GendQuestionnaireVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireVarsBuilder toBuilder() =>
      new GendQuestionnaireVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireVars;
  }

  @override
  int get hashCode {
    return 182715554;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GendQuestionnaireVars').toString();
  }
}

class GendQuestionnaireVarsBuilder
    implements Builder<GendQuestionnaireVars, GendQuestionnaireVarsBuilder> {
  _$GendQuestionnaireVars? _$v;

  GendQuestionnaireVarsBuilder();

  @override
  void replace(GendQuestionnaireVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireVars;
  }

  @override
  void update(void Function(GendQuestionnaireVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireVars build() => _build();

  _$GendQuestionnaireVars _build() {
    final _$result = _$v ?? new _$GendQuestionnaireVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GquestionVars extends GquestionVars {
  factory _$GquestionVars([void Function(GquestionVarsBuilder)? updates]) =>
      (new GquestionVarsBuilder()..update(updates))._build();

  _$GquestionVars._() : super._();

  @override
  GquestionVars rebuild(void Function(GquestionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionVarsBuilder toBuilder() => new GquestionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionVars;
  }

  @override
  int get hashCode {
    return 846757680;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GquestionVars').toString();
  }
}

class GquestionVarsBuilder
    implements Builder<GquestionVars, GquestionVarsBuilder> {
  _$GquestionVars? _$v;

  GquestionVarsBuilder();

  @override
  void replace(GquestionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionVars;
  }

  @override
  void update(void Function(GquestionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionVars build() => _build();

  _$GquestionVars _build() {
    final _$result = _$v ?? new _$GquestionVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GchoiceQuestionVars extends GchoiceQuestionVars {
  factory _$GchoiceQuestionVars(
          [void Function(GchoiceQuestionVarsBuilder)? updates]) =>
      (new GchoiceQuestionVarsBuilder()..update(updates))._build();

  _$GchoiceQuestionVars._() : super._();

  @override
  GchoiceQuestionVars rebuild(
          void Function(GchoiceQuestionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchoiceQuestionVarsBuilder toBuilder() =>
      new GchoiceQuestionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchoiceQuestionVars;
  }

  @override
  int get hashCode {
    return 53477495;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GchoiceQuestionVars').toString();
  }
}

class GchoiceQuestionVarsBuilder
    implements Builder<GchoiceQuestionVars, GchoiceQuestionVarsBuilder> {
  _$GchoiceQuestionVars? _$v;

  GchoiceQuestionVarsBuilder();

  @override
  void replace(GchoiceQuestionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchoiceQuestionVars;
  }

  @override
  void update(void Function(GchoiceQuestionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchoiceQuestionVars build() => _build();

  _$GchoiceQuestionVars _build() {
    final _$result = _$v ?? new _$GchoiceQuestionVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GconstraintsQuestionVars extends GconstraintsQuestionVars {
  factory _$GconstraintsQuestionVars(
          [void Function(GconstraintsQuestionVarsBuilder)? updates]) =>
      (new GconstraintsQuestionVarsBuilder()..update(updates))._build();

  _$GconstraintsQuestionVars._() : super._();

  @override
  GconstraintsQuestionVars rebuild(
          void Function(GconstraintsQuestionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconstraintsQuestionVarsBuilder toBuilder() =>
      new GconstraintsQuestionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconstraintsQuestionVars;
  }

  @override
  int get hashCode {
    return 118474205;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GconstraintsQuestionVars').toString();
  }
}

class GconstraintsQuestionVarsBuilder
    implements
        Builder<GconstraintsQuestionVars, GconstraintsQuestionVarsBuilder> {
  _$GconstraintsQuestionVars? _$v;

  GconstraintsQuestionVarsBuilder();

  @override
  void replace(GconstraintsQuestionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconstraintsQuestionVars;
  }

  @override
  void update(void Function(GconstraintsQuestionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconstraintsQuestionVars build() => _build();

  _$GconstraintsQuestionVars _build() {
    final _$result = _$v ?? new _$GconstraintsQuestionVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
