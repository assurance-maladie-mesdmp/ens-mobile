// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_rappel.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_rappelVars> _$gupdateRappelVarsSerializer =
    new _$Gupdate_rappelVarsSerializer();

class _$Gupdate_rappelVarsSerializer
    implements StructuredSerializer<Gupdate_rappelVars> {
  @override
  final Iterable<Type> types = const [Gupdate_rappelVars, _$Gupdate_rappelVars];
  @override
  final String wireName = 'Gupdate_rappelVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_rappelVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rappel',
      serializers.serialize(object.rappel,
          specifiedType: const FullType(_i1.GReminderToUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_rappelVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rappelVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rappel':
          result.rappel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GReminderToUpdateInput))!
              as _i1.GReminderToUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_rappelVars extends Gupdate_rappelVars {
  @override
  final _i1.GReminderToUpdateInput rappel;

  factory _$Gupdate_rappelVars(
          [void Function(Gupdate_rappelVarsBuilder)? updates]) =>
      (new Gupdate_rappelVarsBuilder()..update(updates))._build();

  _$Gupdate_rappelVars._({required this.rappel}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rappel, r'Gupdate_rappelVars', 'rappel');
  }

  @override
  Gupdate_rappelVars rebuild(
          void Function(Gupdate_rappelVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rappelVarsBuilder toBuilder() =>
      new Gupdate_rappelVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rappelVars && rappel == other.rappel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rappel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_rappelVars')
          ..add('rappel', rappel))
        .toString();
  }
}

class Gupdate_rappelVarsBuilder
    implements Builder<Gupdate_rappelVars, Gupdate_rappelVarsBuilder> {
  _$Gupdate_rappelVars? _$v;

  _i1.GReminderToUpdateInputBuilder? _rappel;
  _i1.GReminderToUpdateInputBuilder get rappel =>
      _$this._rappel ??= new _i1.GReminderToUpdateInputBuilder();
  set rappel(_i1.GReminderToUpdateInputBuilder? rappel) =>
      _$this._rappel = rappel;

  Gupdate_rappelVarsBuilder();

  Gupdate_rappelVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rappel = $v.rappel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_rappelVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rappelVars;
  }

  @override
  void update(void Function(Gupdate_rappelVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rappelVars build() => _build();

  _$Gupdate_rappelVars _build() {
    _$Gupdate_rappelVars _$result;
    try {
      _$result = _$v ?? new _$Gupdate_rappelVars._(rappel: rappel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rappel';
        rappel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_rappelVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
