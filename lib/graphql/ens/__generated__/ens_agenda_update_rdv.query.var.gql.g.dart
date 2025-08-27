// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_rdv.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_rdvVars> _$gupdateRdvVarsSerializer =
    new _$Gupdate_rdvVarsSerializer();

class _$Gupdate_rdvVarsSerializer
    implements StructuredSerializer<Gupdate_rdvVars> {
  @override
  final Iterable<Type> types = const [Gupdate_rdvVars, _$Gupdate_rdvVars];
  @override
  final String wireName = 'Gupdate_rdvVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gupdate_rdvVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rdv',
      serializers.serialize(object.rdv,
          specifiedType: const FullType(_i1.GAppointmentToUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_rdvVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rdvVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rdv':
          result.rdv.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAppointmentToUpdateInput))!
              as _i1.GAppointmentToUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_rdvVars extends Gupdate_rdvVars {
  @override
  final _i1.GAppointmentToUpdateInput rdv;

  factory _$Gupdate_rdvVars([void Function(Gupdate_rdvVarsBuilder)? updates]) =>
      (new Gupdate_rdvVarsBuilder()..update(updates))._build();

  _$Gupdate_rdvVars._({required this.rdv}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rdv, r'Gupdate_rdvVars', 'rdv');
  }

  @override
  Gupdate_rdvVars rebuild(void Function(Gupdate_rdvVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rdvVarsBuilder toBuilder() =>
      new Gupdate_rdvVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rdvVars && rdv == other.rdv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rdv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_rdvVars')..add('rdv', rdv))
        .toString();
  }
}

class Gupdate_rdvVarsBuilder
    implements Builder<Gupdate_rdvVars, Gupdate_rdvVarsBuilder> {
  _$Gupdate_rdvVars? _$v;

  _i1.GAppointmentToUpdateInputBuilder? _rdv;
  _i1.GAppointmentToUpdateInputBuilder get rdv =>
      _$this._rdv ??= new _i1.GAppointmentToUpdateInputBuilder();
  set rdv(_i1.GAppointmentToUpdateInputBuilder? rdv) => _$this._rdv = rdv;

  Gupdate_rdvVarsBuilder();

  Gupdate_rdvVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rdv = $v.rdv.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_rdvVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rdvVars;
  }

  @override
  void update(void Function(Gupdate_rdvVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rdvVars build() => _build();

  _$Gupdate_rdvVars _build() {
    _$Gupdate_rdvVars _$result;
    try {
      _$result = _$v ?? new _$Gupdate_rdvVars._(rdv: rdv.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rdv';
        rdv.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_rdvVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
