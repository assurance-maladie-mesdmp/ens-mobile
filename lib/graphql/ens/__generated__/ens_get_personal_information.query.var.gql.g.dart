// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_personal_information.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_personal_informationVars>
    _$ggetPersonalInformationVarsSerializer =
    new _$Gget_personal_informationVarsSerializer();

class _$Gget_personal_informationVarsSerializer
    implements StructuredSerializer<Gget_personal_informationVars> {
  @override
  final Iterable<Type> types = const [
    Gget_personal_informationVars,
    _$Gget_personal_informationVars
  ];
  @override
  final String wireName = 'Gget_personal_informationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_personal_informationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_personal_informationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_personal_informationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_personal_informationVars extends Gget_personal_informationVars {
  @override
  final String patientId;

  factory _$Gget_personal_informationVars(
          [void Function(Gget_personal_informationVarsBuilder)? updates]) =>
      (new Gget_personal_informationVarsBuilder()..update(updates))._build();

  _$Gget_personal_informationVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_personal_informationVars', 'patientId');
  }

  @override
  Gget_personal_informationVars rebuild(
          void Function(Gget_personal_informationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_personal_informationVarsBuilder toBuilder() =>
      new Gget_personal_informationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_personal_informationVars &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_personal_informationVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_personal_informationVarsBuilder
    implements
        Builder<Gget_personal_informationVars,
            Gget_personal_informationVarsBuilder> {
  _$Gget_personal_informationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_personal_informationVarsBuilder();

  Gget_personal_informationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_personal_informationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_personal_informationVars;
  }

  @override
  void update(void Function(Gget_personal_informationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_personal_informationVars build() => _build();

  _$Gget_personal_informationVars _build() {
    final _$result = _$v ??
        new _$Gget_personal_informationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_personal_informationVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
