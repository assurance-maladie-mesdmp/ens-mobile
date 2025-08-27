// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_partage_profil_send_partage_profil_form.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_partage_profil_formVars>
    _$gsendPartageProfilFormVarsSerializer =
    new _$Gsend_partage_profil_formVarsSerializer();

class _$Gsend_partage_profil_formVarsSerializer
    implements StructuredSerializer<Gsend_partage_profil_formVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_partage_profil_formVars,
    _$Gsend_partage_profil_formVars
  ];
  @override
  final String wireName = 'Gsend_partage_profil_formVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_partage_profil_formVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'invitationSecondRLInput',
      serializers.serialize(object.invitationSecondRLInput,
          specifiedType: const FullType(_i1.GInvitationSecondRLInput)),
    ];

    return result;
  }

  @override
  Gsend_partage_profil_formVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_partage_profil_formVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'invitationSecondRLInput':
          result.invitationSecondRLInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GInvitationSecondRLInput))!
              as _i1.GInvitationSecondRLInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_partage_profil_formVars extends Gsend_partage_profil_formVars {
  @override
  final _i1.GInvitationSecondRLInput invitationSecondRLInput;

  factory _$Gsend_partage_profil_formVars(
          [void Function(Gsend_partage_profil_formVarsBuilder)? updates]) =>
      (new Gsend_partage_profil_formVarsBuilder()..update(updates))._build();

  _$Gsend_partage_profil_formVars._({required this.invitationSecondRLInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(invitationSecondRLInput,
        r'Gsend_partage_profil_formVars', 'invitationSecondRLInput');
  }

  @override
  Gsend_partage_profil_formVars rebuild(
          void Function(Gsend_partage_profil_formVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_partage_profil_formVarsBuilder toBuilder() =>
      new Gsend_partage_profil_formVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_partage_profil_formVars &&
        invitationSecondRLInput == other.invitationSecondRLInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, invitationSecondRLInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_partage_profil_formVars')
          ..add('invitationSecondRLInput', invitationSecondRLInput))
        .toString();
  }
}

class Gsend_partage_profil_formVarsBuilder
    implements
        Builder<Gsend_partage_profil_formVars,
            Gsend_partage_profil_formVarsBuilder> {
  _$Gsend_partage_profil_formVars? _$v;

  _i1.GInvitationSecondRLInputBuilder? _invitationSecondRLInput;
  _i1.GInvitationSecondRLInputBuilder get invitationSecondRLInput =>
      _$this._invitationSecondRLInput ??=
          new _i1.GInvitationSecondRLInputBuilder();
  set invitationSecondRLInput(
          _i1.GInvitationSecondRLInputBuilder? invitationSecondRLInput) =>
      _$this._invitationSecondRLInput = invitationSecondRLInput;

  Gsend_partage_profil_formVarsBuilder();

  Gsend_partage_profil_formVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invitationSecondRLInput = $v.invitationSecondRLInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_partage_profil_formVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_partage_profil_formVars;
  }

  @override
  void update(void Function(Gsend_partage_profil_formVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_partage_profil_formVars build() => _build();

  _$Gsend_partage_profil_formVars _build() {
    _$Gsend_partage_profil_formVars _$result;
    try {
      _$result = _$v ??
          new _$Gsend_partage_profil_formVars._(
              invitationSecondRLInput: invitationSecondRLInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invitationSecondRLInput';
        invitationSecondRLInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_partage_profil_formVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
