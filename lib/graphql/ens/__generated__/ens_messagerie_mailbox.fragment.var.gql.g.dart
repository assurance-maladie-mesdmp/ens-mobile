// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_mailbox.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmailBoxVars> _$gmailBoxVarsSerializer =
    new _$GmailBoxVarsSerializer();

class _$GmailBoxVarsSerializer implements StructuredSerializer<GmailBoxVars> {
  @override
  final Iterable<Type> types = const [GmailBoxVars, _$GmailBoxVars];
  @override
  final String wireName = 'GmailBoxVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmailBoxVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmailBoxVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmailBoxVarsBuilder().build();
  }
}

class _$GmailBoxVars extends GmailBoxVars {
  factory _$GmailBoxVars([void Function(GmailBoxVarsBuilder)? updates]) =>
      (new GmailBoxVarsBuilder()..update(updates))._build();

  _$GmailBoxVars._() : super._();

  @override
  GmailBoxVars rebuild(void Function(GmailBoxVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmailBoxVarsBuilder toBuilder() => new GmailBoxVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmailBoxVars;
  }

  @override
  int get hashCode {
    return 815202285;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmailBoxVars').toString();
  }
}

class GmailBoxVarsBuilder
    implements Builder<GmailBoxVars, GmailBoxVarsBuilder> {
  _$GmailBoxVars? _$v;

  GmailBoxVarsBuilder();

  @override
  void replace(GmailBoxVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmailBoxVars;
  }

  @override
  void update(void Function(GmailBoxVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmailBoxVars build() => _build();

  _$GmailBoxVars _build() {
    final _$result = _$v ?? new _$GmailBoxVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
