// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_fetch_last_reports_information.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gfetch_last_reports_informationVars>
    _$gfetchLastReportsInformationVarsSerializer =
    new _$Gfetch_last_reports_informationVarsSerializer();

class _$Gfetch_last_reports_informationVarsSerializer
    implements StructuredSerializer<Gfetch_last_reports_informationVars> {
  @override
  final Iterable<Type> types = const [
    Gfetch_last_reports_informationVars,
    _$Gfetch_last_reports_informationVars
  ];
  @override
  final String wireName = 'Gfetch_last_reports_informationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gfetch_last_reports_informationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.typeDemande;
    if (value != null) {
      result
        ..add('typeDemande')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GTypeDemande)));
    }
    value = object.idSignale;
    if (value != null) {
      result
        ..add('idSignale')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gfetch_last_reports_informationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gfetch_last_reports_informationVarsBuilder();

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
        case 'typeDemande':
          result.typeDemande = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTypeDemande))
              as _i1.GTypeDemande?;
          break;
        case 'idSignale':
          result.idSignale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_last_reports_informationVars
    extends Gfetch_last_reports_informationVars {
  @override
  final String patientId;
  @override
  final _i1.GTypeDemande? typeDemande;
  @override
  final String? idSignale;

  factory _$Gfetch_last_reports_informationVars(
          [void Function(Gfetch_last_reports_informationVarsBuilder)?
              updates]) =>
      (new Gfetch_last_reports_informationVarsBuilder()..update(updates))
          ._build();

  _$Gfetch_last_reports_informationVars._(
      {required this.patientId, this.typeDemande, this.idSignale})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gfetch_last_reports_informationVars', 'patientId');
  }

  @override
  Gfetch_last_reports_informationVars rebuild(
          void Function(Gfetch_last_reports_informationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_last_reports_informationVarsBuilder toBuilder() =>
      new Gfetch_last_reports_informationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gfetch_last_reports_informationVars &&
        patientId == other.patientId &&
        typeDemande == other.typeDemande &&
        idSignale == other.idSignale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, typeDemande.hashCode);
    _$hash = $jc(_$hash, idSignale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gfetch_last_reports_informationVars')
          ..add('patientId', patientId)
          ..add('typeDemande', typeDemande)
          ..add('idSignale', idSignale))
        .toString();
  }
}

class Gfetch_last_reports_informationVarsBuilder
    implements
        Builder<Gfetch_last_reports_informationVars,
            Gfetch_last_reports_informationVarsBuilder> {
  _$Gfetch_last_reports_informationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GTypeDemande? _typeDemande;
  _i1.GTypeDemande? get typeDemande => _$this._typeDemande;
  set typeDemande(_i1.GTypeDemande? typeDemande) =>
      _$this._typeDemande = typeDemande;

  String? _idSignale;
  String? get idSignale => _$this._idSignale;
  set idSignale(String? idSignale) => _$this._idSignale = idSignale;

  Gfetch_last_reports_informationVarsBuilder();

  Gfetch_last_reports_informationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _typeDemande = $v.typeDemande;
      _idSignale = $v.idSignale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gfetch_last_reports_informationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gfetch_last_reports_informationVars;
  }

  @override
  void update(
      void Function(Gfetch_last_reports_informationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_last_reports_informationVars build() => _build();

  _$Gfetch_last_reports_informationVars _build() {
    final _$result = _$v ??
        new _$Gfetch_last_reports_informationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gfetch_last_reports_informationVars', 'patientId'),
            typeDemande: typeDemande,
            idSignale: idSignale);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
