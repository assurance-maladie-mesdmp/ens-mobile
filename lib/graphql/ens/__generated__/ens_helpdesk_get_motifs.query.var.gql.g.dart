// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_helpdesk_get_motifs.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_motifs_nouvelle_demandeVars>
    _$ggetMotifsNouvelleDemandeVarsSerializer =
    new _$Gget_motifs_nouvelle_demandeVarsSerializer();

class _$Gget_motifs_nouvelle_demandeVarsSerializer
    implements StructuredSerializer<Gget_motifs_nouvelle_demandeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_motifs_nouvelle_demandeVars,
    _$Gget_motifs_nouvelle_demandeVars
  ];
  @override
  final String wireName = 'Gget_motifs_nouvelle_demandeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_motifs_nouvelle_demandeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_motifs_nouvelle_demandeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_motifs_nouvelle_demandeVarsBuilder().build();
  }
}

class _$Gget_motifs_nouvelle_demandeVars
    extends Gget_motifs_nouvelle_demandeVars {
  factory _$Gget_motifs_nouvelle_demandeVars(
          [void Function(Gget_motifs_nouvelle_demandeVarsBuilder)? updates]) =>
      (new Gget_motifs_nouvelle_demandeVarsBuilder()..update(updates))._build();

  _$Gget_motifs_nouvelle_demandeVars._() : super._();

  @override
  Gget_motifs_nouvelle_demandeVars rebuild(
          void Function(Gget_motifs_nouvelle_demandeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_motifs_nouvelle_demandeVarsBuilder toBuilder() =>
      new Gget_motifs_nouvelle_demandeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_motifs_nouvelle_demandeVars;
  }

  @override
  int get hashCode {
    return 548421713;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_motifs_nouvelle_demandeVars')
        .toString();
  }
}

class Gget_motifs_nouvelle_demandeVarsBuilder
    implements
        Builder<Gget_motifs_nouvelle_demandeVars,
            Gget_motifs_nouvelle_demandeVarsBuilder> {
  _$Gget_motifs_nouvelle_demandeVars? _$v;

  Gget_motifs_nouvelle_demandeVarsBuilder();

  @override
  void replace(Gget_motifs_nouvelle_demandeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_motifs_nouvelle_demandeVars;
  }

  @override
  void update(void Function(Gget_motifs_nouvelle_demandeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_motifs_nouvelle_demandeVars build() => _build();

  _$Gget_motifs_nouvelle_demandeVars _build() {
    final _$result = _$v ?? new _$Gget_motifs_nouvelle_demandeVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
