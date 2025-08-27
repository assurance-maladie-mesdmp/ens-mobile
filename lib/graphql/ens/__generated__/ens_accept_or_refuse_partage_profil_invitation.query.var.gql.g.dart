// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_accept_or_refuse_partage_profil_invitation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_or_refuse_partage_profil_invitationVars>
    _$gacceptOrRefusePartageProfilInvitationVarsSerializer =
    new _$Gaccept_or_refuse_partage_profil_invitationVarsSerializer();

class _$Gaccept_or_refuse_partage_profil_invitationVarsSerializer
    implements
        StructuredSerializer<Gaccept_or_refuse_partage_profil_invitationVars> {
  @override
  final Iterable<Type> types = const [
    Gaccept_or_refuse_partage_profil_invitationVars,
    _$Gaccept_or_refuse_partage_profil_invitationVars
  ];
  @override
  final String wireName = 'Gaccept_or_refuse_partage_profil_invitationVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gaccept_or_refuse_partage_profil_invitationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessValidatedOrRejectedInput',
      serializers.serialize(object.accessValidatedOrRejectedInput,
          specifiedType: const FullType(_i1.GAccessValidatedOrRejectedInput)),
    ];

    return result;
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_or_refuse_partage_profil_invitationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessValidatedOrRejectedInput':
          result.accessValidatedOrRejectedInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GAccessValidatedOrRejectedInput))!
              as _i1.GAccessValidatedOrRejectedInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gaccept_or_refuse_partage_profil_invitationVars
    extends Gaccept_or_refuse_partage_profil_invitationVars {
  @override
  final _i1.GAccessValidatedOrRejectedInput accessValidatedOrRejectedInput;

  factory _$Gaccept_or_refuse_partage_profil_invitationVars(
          [void Function(
                  Gaccept_or_refuse_partage_profil_invitationVarsBuilder)?
              updates]) =>
      (new Gaccept_or_refuse_partage_profil_invitationVarsBuilder()
            ..update(updates))
          ._build();

  _$Gaccept_or_refuse_partage_profil_invitationVars._(
      {required this.accessValidatedOrRejectedInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessValidatedOrRejectedInput,
        r'Gaccept_or_refuse_partage_profil_invitationVars',
        'accessValidatedOrRejectedInput');
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationVars rebuild(
          void Function(Gaccept_or_refuse_partage_profil_invitationVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_or_refuse_partage_profil_invitationVarsBuilder toBuilder() =>
      new Gaccept_or_refuse_partage_profil_invitationVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_or_refuse_partage_profil_invitationVars &&
        accessValidatedOrRejectedInput == other.accessValidatedOrRejectedInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessValidatedOrRejectedInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gaccept_or_refuse_partage_profil_invitationVars')
          ..add(
              'accessValidatedOrRejectedInput', accessValidatedOrRejectedInput))
        .toString();
  }
}

class Gaccept_or_refuse_partage_profil_invitationVarsBuilder
    implements
        Builder<Gaccept_or_refuse_partage_profil_invitationVars,
            Gaccept_or_refuse_partage_profil_invitationVarsBuilder> {
  _$Gaccept_or_refuse_partage_profil_invitationVars? _$v;

  _i1.GAccessValidatedOrRejectedInputBuilder? _accessValidatedOrRejectedInput;
  _i1.GAccessValidatedOrRejectedInputBuilder
      get accessValidatedOrRejectedInput =>
          _$this._accessValidatedOrRejectedInput ??=
              new _i1.GAccessValidatedOrRejectedInputBuilder();
  set accessValidatedOrRejectedInput(
          _i1.GAccessValidatedOrRejectedInputBuilder?
              accessValidatedOrRejectedInput) =>
      _$this._accessValidatedOrRejectedInput = accessValidatedOrRejectedInput;

  Gaccept_or_refuse_partage_profil_invitationVarsBuilder();

  Gaccept_or_refuse_partage_profil_invitationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessValidatedOrRejectedInput =
          $v.accessValidatedOrRejectedInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_or_refuse_partage_profil_invitationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_or_refuse_partage_profil_invitationVars;
  }

  @override
  void update(
      void Function(Gaccept_or_refuse_partage_profil_invitationVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationVars build() => _build();

  _$Gaccept_or_refuse_partage_profil_invitationVars _build() {
    _$Gaccept_or_refuse_partage_profil_invitationVars _$result;
    try {
      _$result = _$v ??
          new _$Gaccept_or_refuse_partage_profil_invitationVars._(
              accessValidatedOrRejectedInput:
                  accessValidatedOrRejectedInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessValidatedOrRejectedInput';
        accessValidatedOrRejectedInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gaccept_or_refuse_partage_profil_invitationVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
