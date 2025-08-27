// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_delete.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_entourage_contactVars>
    _$gdeleteEntourageContactVarsSerializer =
    new _$Gdelete_entourage_contactVarsSerializer();

class _$Gdelete_entourage_contactVarsSerializer
    implements StructuredSerializer<Gdelete_entourage_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_entourage_contactVars,
    _$Gdelete_entourage_contactVars
  ];
  @override
  final String wireName = 'Gdelete_entourage_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_entourage_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'contactId',
      serializers.serialize(object.contactId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_entourage_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_entourage_contactVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contactId':
          result.contactId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_entourage_contactVars extends Gdelete_entourage_contactVars {
  @override
  final String contactId;
  @override
  final String patientId;

  factory _$Gdelete_entourage_contactVars(
          [void Function(Gdelete_entourage_contactVarsBuilder)? updates]) =>
      (new Gdelete_entourage_contactVarsBuilder()..update(updates))._build();

  _$Gdelete_entourage_contactVars._(
      {required this.contactId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        contactId, r'Gdelete_entourage_contactVars', 'contactId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_entourage_contactVars', 'patientId');
  }

  @override
  Gdelete_entourage_contactVars rebuild(
          void Function(Gdelete_entourage_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_entourage_contactVarsBuilder toBuilder() =>
      new Gdelete_entourage_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_entourage_contactVars &&
        contactId == other.contactId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contactId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_entourage_contactVars')
          ..add('contactId', contactId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_entourage_contactVarsBuilder
    implements
        Builder<Gdelete_entourage_contactVars,
            Gdelete_entourage_contactVarsBuilder> {
  _$Gdelete_entourage_contactVars? _$v;

  String? _contactId;
  String? get contactId => _$this._contactId;
  set contactId(String? contactId) => _$this._contactId = contactId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_entourage_contactVarsBuilder();

  Gdelete_entourage_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contactId = $v.contactId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_entourage_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_entourage_contactVars;
  }

  @override
  void update(void Function(Gdelete_entourage_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_entourage_contactVars build() => _build();

  _$Gdelete_entourage_contactVars _build() {
    final _$result = _$v ??
        new _$Gdelete_entourage_contactVars._(
            contactId: BuiltValueNullFieldError.checkNotNull(
                contactId, r'Gdelete_entourage_contactVars', 'contactId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_entourage_contactVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
