// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_create_rdv.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_rdvVars> _$gcreateRdvVarsSerializer =
    new _$Gcreate_rdvVarsSerializer();

class _$Gcreate_rdvVarsSerializer
    implements StructuredSerializer<Gcreate_rdvVars> {
  @override
  final Iterable<Type> types = const [Gcreate_rdvVars, _$Gcreate_rdvVars];
  @override
  final String wireName = 'Gcreate_rdvVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_rdvVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rdv',
      serializers.serialize(object.rdv,
          specifiedType: const FullType(_i1.GAppointmentToCreateInput)),
    ];

    return result;
  }

  @override
  Gcreate_rdvVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rdvVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rdv':
          result.rdv.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAppointmentToCreateInput))!
              as _i1.GAppointmentToCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_rdvVars extends Gcreate_rdvVars {
  @override
  final _i1.GAppointmentToCreateInput rdv;

  factory _$Gcreate_rdvVars([void Function(Gcreate_rdvVarsBuilder)? updates]) =>
      (new Gcreate_rdvVarsBuilder()..update(updates))._build();

  _$Gcreate_rdvVars._({required this.rdv}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rdv, r'Gcreate_rdvVars', 'rdv');
  }

  @override
  Gcreate_rdvVars rebuild(void Function(Gcreate_rdvVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rdvVarsBuilder toBuilder() =>
      new Gcreate_rdvVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rdvVars && rdv == other.rdv;
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
    return (newBuiltValueToStringHelper(r'Gcreate_rdvVars')..add('rdv', rdv))
        .toString();
  }
}

class Gcreate_rdvVarsBuilder
    implements Builder<Gcreate_rdvVars, Gcreate_rdvVarsBuilder> {
  _$Gcreate_rdvVars? _$v;

  _i1.GAppointmentToCreateInputBuilder? _rdv;
  _i1.GAppointmentToCreateInputBuilder get rdv =>
      _$this._rdv ??= new _i1.GAppointmentToCreateInputBuilder();
  set rdv(_i1.GAppointmentToCreateInputBuilder? rdv) => _$this._rdv = rdv;

  Gcreate_rdvVarsBuilder();

  Gcreate_rdvVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rdv = $v.rdv.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_rdvVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rdvVars;
  }

  @override
  void update(void Function(Gcreate_rdvVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rdvVars build() => _build();

  _$Gcreate_rdvVars _build() {
    _$Gcreate_rdvVars _$result;
    try {
      _$result = _$v ?? new _$Gcreate_rdvVars._(rdv: rdv.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rdv';
        rdv.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_rdvVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
