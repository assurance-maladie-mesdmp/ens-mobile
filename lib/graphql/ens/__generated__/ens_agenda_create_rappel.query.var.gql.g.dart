// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_create_rappel.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_rappelVars> _$gcreateRappelVarsSerializer =
    new _$Gcreate_rappelVarsSerializer();

class _$Gcreate_rappelVarsSerializer
    implements StructuredSerializer<Gcreate_rappelVars> {
  @override
  final Iterable<Type> types = const [Gcreate_rappelVars, _$Gcreate_rappelVars];
  @override
  final String wireName = 'Gcreate_rappelVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rappelVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rappel',
      serializers.serialize(object.rappel,
          specifiedType: const FullType(_i1.GReminderToCreateInput)),
    ];

    return result;
  }

  @override
  Gcreate_rappelVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rappelVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rappel':
          result.rappel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GReminderToCreateInput))!
              as _i1.GReminderToCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_rappelVars extends Gcreate_rappelVars {
  @override
  final _i1.GReminderToCreateInput rappel;

  factory _$Gcreate_rappelVars(
          [void Function(Gcreate_rappelVarsBuilder)? updates]) =>
      (new Gcreate_rappelVarsBuilder()..update(updates))._build();

  _$Gcreate_rappelVars._({required this.rappel}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rappel, r'Gcreate_rappelVars', 'rappel');
  }

  @override
  Gcreate_rappelVars rebuild(
          void Function(Gcreate_rappelVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rappelVarsBuilder toBuilder() =>
      new Gcreate_rappelVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rappelVars && rappel == other.rappel;
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
    return (newBuiltValueToStringHelper(r'Gcreate_rappelVars')
          ..add('rappel', rappel))
        .toString();
  }
}

class Gcreate_rappelVarsBuilder
    implements Builder<Gcreate_rappelVars, Gcreate_rappelVarsBuilder> {
  _$Gcreate_rappelVars? _$v;

  _i1.GReminderToCreateInputBuilder? _rappel;
  _i1.GReminderToCreateInputBuilder get rappel =>
      _$this._rappel ??= new _i1.GReminderToCreateInputBuilder();
  set rappel(_i1.GReminderToCreateInputBuilder? rappel) =>
      _$this._rappel = rappel;

  Gcreate_rappelVarsBuilder();

  Gcreate_rappelVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rappel = $v.rappel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_rappelVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rappelVars;
  }

  @override
  void update(void Function(Gcreate_rappelVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rappelVars build() => _build();

  _$Gcreate_rappelVars _build() {
    _$Gcreate_rappelVars _$result;
    try {
      _$result = _$v ?? new _$Gcreate_rappelVars._(rappel: rappel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rappel';
        rappel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_rappelVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
