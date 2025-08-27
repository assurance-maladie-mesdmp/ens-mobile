// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_update.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmodify_entourage_contactVars>
    _$gmodifyEntourageContactVarsSerializer =
    new _$Gmodify_entourage_contactVarsSerializer();

class _$Gmodify_entourage_contactVarsSerializer
    implements StructuredSerializer<Gmodify_entourage_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gmodify_entourage_contactVars,
    _$Gmodify_entourage_contactVars
  ];
  @override
  final String wireName = 'Gmodify_entourage_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmodify_entourage_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'contact',
      serializers.serialize(object.contact,
          specifiedType: const FullType(_i1.GContactUpdateInput)),
    ];

    return result;
  }

  @override
  Gmodify_entourage_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmodify_entourage_contactVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contact':
          result.contact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GContactUpdateInput))!
              as _i1.GContactUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmodify_entourage_contactVars extends Gmodify_entourage_contactVars {
  @override
  final _i1.GContactUpdateInput contact;

  factory _$Gmodify_entourage_contactVars(
          [void Function(Gmodify_entourage_contactVarsBuilder)? updates]) =>
      (new Gmodify_entourage_contactVarsBuilder()..update(updates))._build();

  _$Gmodify_entourage_contactVars._({required this.contact}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        contact, r'Gmodify_entourage_contactVars', 'contact');
  }

  @override
  Gmodify_entourage_contactVars rebuild(
          void Function(Gmodify_entourage_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmodify_entourage_contactVarsBuilder toBuilder() =>
      new Gmodify_entourage_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmodify_entourage_contactVars && contact == other.contact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmodify_entourage_contactVars')
          ..add('contact', contact))
        .toString();
  }
}

class Gmodify_entourage_contactVarsBuilder
    implements
        Builder<Gmodify_entourage_contactVars,
            Gmodify_entourage_contactVarsBuilder> {
  _$Gmodify_entourage_contactVars? _$v;

  _i1.GContactUpdateInputBuilder? _contact;
  _i1.GContactUpdateInputBuilder get contact =>
      _$this._contact ??= new _i1.GContactUpdateInputBuilder();
  set contact(_i1.GContactUpdateInputBuilder? contact) =>
      _$this._contact = contact;

  Gmodify_entourage_contactVarsBuilder();

  Gmodify_entourage_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contact = $v.contact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmodify_entourage_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmodify_entourage_contactVars;
  }

  @override
  void update(void Function(Gmodify_entourage_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmodify_entourage_contactVars build() => _build();

  _$Gmodify_entourage_contactVars _build() {
    _$Gmodify_entourage_contactVars _$result;
    try {
      _$result = _$v ??
          new _$Gmodify_entourage_contactVars._(contact: contact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contact';
        contact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmodify_entourage_contactVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
