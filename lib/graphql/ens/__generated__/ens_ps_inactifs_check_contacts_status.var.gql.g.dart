// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_inactifs_check_contacts_status.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcheck_inactifs_ps_contacts_statusVars>
    _$gcheckInactifsPsContactsStatusVarsSerializer =
    new _$Gcheck_inactifs_ps_contacts_statusVarsSerializer();

class _$Gcheck_inactifs_ps_contacts_statusVarsSerializer
    implements StructuredSerializer<Gcheck_inactifs_ps_contacts_statusVars> {
  @override
  final Iterable<Type> types = const [
    Gcheck_inactifs_ps_contacts_statusVars,
    _$Gcheck_inactifs_ps_contacts_statusVars
  ];
  @override
  final String wireName = 'Gcheck_inactifs_ps_contacts_statusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcheck_inactifs_ps_contacts_statusVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'contactDetailsInput',
      serializers.serialize(object.contactDetailsInput,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GContactDetailsInput)])),
    ];

    return result;
  }

  @override
  Gcheck_inactifs_ps_contacts_statusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcheck_inactifs_ps_contacts_statusVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contactDetailsInput':
          result.contactDetailsInput.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GContactDetailsInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcheck_inactifs_ps_contacts_statusVars
    extends Gcheck_inactifs_ps_contacts_statusVars {
  @override
  final BuiltList<_i1.GContactDetailsInput> contactDetailsInput;

  factory _$Gcheck_inactifs_ps_contacts_statusVars(
          [void Function(Gcheck_inactifs_ps_contacts_statusVarsBuilder)?
              updates]) =>
      (new Gcheck_inactifs_ps_contacts_statusVarsBuilder()..update(updates))
          ._build();

  _$Gcheck_inactifs_ps_contacts_statusVars._(
      {required this.contactDetailsInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(contactDetailsInput,
        r'Gcheck_inactifs_ps_contacts_statusVars', 'contactDetailsInput');
  }

  @override
  Gcheck_inactifs_ps_contacts_statusVars rebuild(
          void Function(Gcheck_inactifs_ps_contacts_statusVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcheck_inactifs_ps_contacts_statusVarsBuilder toBuilder() =>
      new Gcheck_inactifs_ps_contacts_statusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcheck_inactifs_ps_contacts_statusVars &&
        contactDetailsInput == other.contactDetailsInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contactDetailsInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcheck_inactifs_ps_contacts_statusVars')
          ..add('contactDetailsInput', contactDetailsInput))
        .toString();
  }
}

class Gcheck_inactifs_ps_contacts_statusVarsBuilder
    implements
        Builder<Gcheck_inactifs_ps_contacts_statusVars,
            Gcheck_inactifs_ps_contacts_statusVarsBuilder> {
  _$Gcheck_inactifs_ps_contacts_statusVars? _$v;

  ListBuilder<_i1.GContactDetailsInput>? _contactDetailsInput;
  ListBuilder<_i1.GContactDetailsInput> get contactDetailsInput =>
      _$this._contactDetailsInput ??=
          new ListBuilder<_i1.GContactDetailsInput>();
  set contactDetailsInput(
          ListBuilder<_i1.GContactDetailsInput>? contactDetailsInput) =>
      _$this._contactDetailsInput = contactDetailsInput;

  Gcheck_inactifs_ps_contacts_statusVarsBuilder();

  Gcheck_inactifs_ps_contacts_statusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contactDetailsInput = $v.contactDetailsInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcheck_inactifs_ps_contacts_statusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcheck_inactifs_ps_contacts_statusVars;
  }

  @override
  void update(
      void Function(Gcheck_inactifs_ps_contacts_statusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcheck_inactifs_ps_contacts_statusVars build() => _build();

  _$Gcheck_inactifs_ps_contacts_statusVars _build() {
    _$Gcheck_inactifs_ps_contacts_statusVars _$result;
    try {
      _$result = _$v ??
          new _$Gcheck_inactifs_ps_contacts_statusVars._(
              contactDetailsInput: contactDetailsInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contactDetailsInput';
        contactDetailsInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcheck_inactifs_ps_contacts_statusVars',
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
