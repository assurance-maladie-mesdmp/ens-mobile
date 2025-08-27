// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_histoire_sante.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GepisodeBiologieReq> _$gepisodeBiologieReqSerializer =
    new _$GepisodeBiologieReqSerializer();
Serializer<GepisodeMedicamentReq> _$gepisodeMedicamentReqSerializer =
    new _$GepisodeMedicamentReqSerializer();
Serializer<GepisodeSoinDentaireReq> _$gepisodeSoinDentaireReqSerializer =
    new _$GepisodeSoinDentaireReqSerializer();
Serializer<GepisodeHospitalisationReq> _$gepisodeHospitalisationReqSerializer =
    new _$GepisodeHospitalisationReqSerializer();
Serializer<GepisodeRadiologieReq> _$gepisodeRadiologieReqSerializer =
    new _$GepisodeRadiologieReqSerializer();
Serializer<GepisodeDispositifMedicalReq>
    _$gepisodeDispositifMedicalReqSerializer =
    new _$GepisodeDispositifMedicalReqSerializer();
Serializer<GepisodeVaccinReq> _$gepisodeVaccinReqSerializer =
    new _$GepisodeVaccinReqSerializer();
Serializer<GepisodeVaccinationReq> _$gepisodeVaccinationReqSerializer =
    new _$GepisodeVaccinationReqSerializer();
Serializer<GepisodeMaladieReq> _$gepisodeMaladieReqSerializer =
    new _$GepisodeMaladieReqSerializer();

class _$GepisodeBiologieReqSerializer
    implements StructuredSerializer<GepisodeBiologieReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeBiologieReq,
    _$GepisodeBiologieReq
  ];
  @override
  final String wireName = 'GepisodeBiologieReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeBiologieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeBiologieVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeBiologieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeBiologieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeBiologieVars))!
              as _i3.GepisodeBiologieVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeMedicamentReqSerializer
    implements StructuredSerializer<GepisodeMedicamentReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeMedicamentReq,
    _$GepisodeMedicamentReq
  ];
  @override
  final String wireName = 'GepisodeMedicamentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeMedicamentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeMedicamentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeMedicamentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeMedicamentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeMedicamentVars))!
              as _i3.GepisodeMedicamentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeSoinDentaireReqSerializer
    implements StructuredSerializer<GepisodeSoinDentaireReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeSoinDentaireReq,
    _$GepisodeSoinDentaireReq
  ];
  @override
  final String wireName = 'GepisodeSoinDentaireReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeSoinDentaireReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeSoinDentaireVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeSoinDentaireReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeSoinDentaireReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeSoinDentaireVars))!
              as _i3.GepisodeSoinDentaireVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeHospitalisationReqSerializer
    implements StructuredSerializer<GepisodeHospitalisationReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeHospitalisationReq,
    _$GepisodeHospitalisationReq
  ];
  @override
  final String wireName = 'GepisodeHospitalisationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeHospitalisationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeHospitalisationVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeHospitalisationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeHospitalisationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GepisodeHospitalisationVars))!
              as _i3.GepisodeHospitalisationVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeRadiologieReqSerializer
    implements StructuredSerializer<GepisodeRadiologieReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeRadiologieReq,
    _$GepisodeRadiologieReq
  ];
  @override
  final String wireName = 'GepisodeRadiologieReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeRadiologieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeRadiologieVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeRadiologieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeRadiologieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeRadiologieVars))!
              as _i3.GepisodeRadiologieVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeDispositifMedicalReqSerializer
    implements StructuredSerializer<GepisodeDispositifMedicalReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeDispositifMedicalReq,
    _$GepisodeDispositifMedicalReq
  ];
  @override
  final String wireName = 'GepisodeDispositifMedicalReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeDispositifMedicalReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeDispositifMedicalVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeDispositifMedicalReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeDispositifMedicalReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GepisodeDispositifMedicalVars))!
              as _i3.GepisodeDispositifMedicalVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeVaccinReqSerializer
    implements StructuredSerializer<GepisodeVaccinReq> {
  @override
  final Iterable<Type> types = const [GepisodeVaccinReq, _$GepisodeVaccinReq];
  @override
  final String wireName = 'GepisodeVaccinReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GepisodeVaccinReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeVaccinVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeVaccinReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeVaccinReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeVaccinVars))!
              as _i3.GepisodeVaccinVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeVaccinationReqSerializer
    implements StructuredSerializer<GepisodeVaccinationReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeVaccinationReq,
    _$GepisodeVaccinationReq
  ];
  @override
  final String wireName = 'GepisodeVaccinationReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeVaccinationReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeVaccinationVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeVaccinationReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeVaccinationReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeVaccinationVars))!
              as _i3.GepisodeVaccinationVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeMaladieReqSerializer
    implements StructuredSerializer<GepisodeMaladieReq> {
  @override
  final Iterable<Type> types = const [GepisodeMaladieReq, _$GepisodeMaladieReq];
  @override
  final String wireName = 'GepisodeMaladieReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeMaladieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeMaladieVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeMaladieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeMaladieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeMaladieVars))!
              as _i3.GepisodeMaladieVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeBiologieReq extends GepisodeBiologieReq {
  @override
  final _i3.GepisodeBiologieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeBiologieReq(
          [void Function(GepisodeBiologieReqBuilder)? updates]) =>
      (new GepisodeBiologieReqBuilder()..update(updates))._build();

  _$GepisodeBiologieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GepisodeBiologieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeBiologieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeBiologieReq', 'idFields');
  }

  @override
  GepisodeBiologieReq rebuild(
          void Function(GepisodeBiologieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeBiologieReqBuilder toBuilder() =>
      new GepisodeBiologieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeBiologieReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeBiologieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeBiologieReqBuilder
    implements Builder<GepisodeBiologieReq, GepisodeBiologieReqBuilder> {
  _$GepisodeBiologieReq? _$v;

  _i3.GepisodeBiologieVarsBuilder? _vars;
  _i3.GepisodeBiologieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeBiologieVarsBuilder();
  set vars(_i3.GepisodeBiologieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeBiologieReqBuilder() {
    GepisodeBiologieReq._initializeBuilder(this);
  }

  GepisodeBiologieReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeBiologieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeBiologieReq;
  }

  @override
  void update(void Function(GepisodeBiologieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeBiologieReq build() => _build();

  _$GepisodeBiologieReq _build() {
    _$GepisodeBiologieReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeBiologieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeBiologieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeBiologieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeBiologieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeMedicamentReq extends GepisodeMedicamentReq {
  @override
  final _i3.GepisodeMedicamentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeMedicamentReq(
          [void Function(GepisodeMedicamentReqBuilder)? updates]) =>
      (new GepisodeMedicamentReqBuilder()..update(updates))._build();

  _$GepisodeMedicamentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeMedicamentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeMedicamentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeMedicamentReq', 'idFields');
  }

  @override
  GepisodeMedicamentReq rebuild(
          void Function(GepisodeMedicamentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeMedicamentReqBuilder toBuilder() =>
      new GepisodeMedicamentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeMedicamentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeMedicamentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeMedicamentReqBuilder
    implements Builder<GepisodeMedicamentReq, GepisodeMedicamentReqBuilder> {
  _$GepisodeMedicamentReq? _$v;

  _i3.GepisodeMedicamentVarsBuilder? _vars;
  _i3.GepisodeMedicamentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeMedicamentVarsBuilder();
  set vars(_i3.GepisodeMedicamentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeMedicamentReqBuilder() {
    GepisodeMedicamentReq._initializeBuilder(this);
  }

  GepisodeMedicamentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeMedicamentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeMedicamentReq;
  }

  @override
  void update(void Function(GepisodeMedicamentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeMedicamentReq build() => _build();

  _$GepisodeMedicamentReq _build() {
    _$GepisodeMedicamentReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeMedicamentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeMedicamentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeMedicamentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeMedicamentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeSoinDentaireReq extends GepisodeSoinDentaireReq {
  @override
  final _i3.GepisodeSoinDentaireVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeSoinDentaireReq(
          [void Function(GepisodeSoinDentaireReqBuilder)? updates]) =>
      (new GepisodeSoinDentaireReqBuilder()..update(updates))._build();

  _$GepisodeSoinDentaireReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeSoinDentaireReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeSoinDentaireReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeSoinDentaireReq', 'idFields');
  }

  @override
  GepisodeSoinDentaireReq rebuild(
          void Function(GepisodeSoinDentaireReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeSoinDentaireReqBuilder toBuilder() =>
      new GepisodeSoinDentaireReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeSoinDentaireReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeSoinDentaireReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeSoinDentaireReqBuilder
    implements
        Builder<GepisodeSoinDentaireReq, GepisodeSoinDentaireReqBuilder> {
  _$GepisodeSoinDentaireReq? _$v;

  _i3.GepisodeSoinDentaireVarsBuilder? _vars;
  _i3.GepisodeSoinDentaireVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeSoinDentaireVarsBuilder();
  set vars(_i3.GepisodeSoinDentaireVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeSoinDentaireReqBuilder() {
    GepisodeSoinDentaireReq._initializeBuilder(this);
  }

  GepisodeSoinDentaireReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeSoinDentaireReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeSoinDentaireReq;
  }

  @override
  void update(void Function(GepisodeSoinDentaireReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeSoinDentaireReq build() => _build();

  _$GepisodeSoinDentaireReq _build() {
    _$GepisodeSoinDentaireReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeSoinDentaireReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeSoinDentaireReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeSoinDentaireReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeSoinDentaireReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeHospitalisationReq extends GepisodeHospitalisationReq {
  @override
  final _i3.GepisodeHospitalisationVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeHospitalisationReq(
          [void Function(GepisodeHospitalisationReqBuilder)? updates]) =>
      (new GepisodeHospitalisationReqBuilder()..update(updates))._build();

  _$GepisodeHospitalisationReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeHospitalisationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeHospitalisationReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeHospitalisationReq', 'idFields');
  }

  @override
  GepisodeHospitalisationReq rebuild(
          void Function(GepisodeHospitalisationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeHospitalisationReqBuilder toBuilder() =>
      new GepisodeHospitalisationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeHospitalisationReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeHospitalisationReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeHospitalisationReqBuilder
    implements
        Builder<GepisodeHospitalisationReq, GepisodeHospitalisationReqBuilder> {
  _$GepisodeHospitalisationReq? _$v;

  _i3.GepisodeHospitalisationVarsBuilder? _vars;
  _i3.GepisodeHospitalisationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeHospitalisationVarsBuilder();
  set vars(_i3.GepisodeHospitalisationVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeHospitalisationReqBuilder() {
    GepisodeHospitalisationReq._initializeBuilder(this);
  }

  GepisodeHospitalisationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeHospitalisationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeHospitalisationReq;
  }

  @override
  void update(void Function(GepisodeHospitalisationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeHospitalisationReq build() => _build();

  _$GepisodeHospitalisationReq _build() {
    _$GepisodeHospitalisationReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeHospitalisationReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeHospitalisationReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeHospitalisationReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeHospitalisationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeRadiologieReq extends GepisodeRadiologieReq {
  @override
  final _i3.GepisodeRadiologieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeRadiologieReq(
          [void Function(GepisodeRadiologieReqBuilder)? updates]) =>
      (new GepisodeRadiologieReqBuilder()..update(updates))._build();

  _$GepisodeRadiologieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeRadiologieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeRadiologieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeRadiologieReq', 'idFields');
  }

  @override
  GepisodeRadiologieReq rebuild(
          void Function(GepisodeRadiologieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeRadiologieReqBuilder toBuilder() =>
      new GepisodeRadiologieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeRadiologieReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeRadiologieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeRadiologieReqBuilder
    implements Builder<GepisodeRadiologieReq, GepisodeRadiologieReqBuilder> {
  _$GepisodeRadiologieReq? _$v;

  _i3.GepisodeRadiologieVarsBuilder? _vars;
  _i3.GepisodeRadiologieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeRadiologieVarsBuilder();
  set vars(_i3.GepisodeRadiologieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeRadiologieReqBuilder() {
    GepisodeRadiologieReq._initializeBuilder(this);
  }

  GepisodeRadiologieReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeRadiologieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeRadiologieReq;
  }

  @override
  void update(void Function(GepisodeRadiologieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeRadiologieReq build() => _build();

  _$GepisodeRadiologieReq _build() {
    _$GepisodeRadiologieReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeRadiologieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeRadiologieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeRadiologieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeRadiologieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeDispositifMedicalReq extends GepisodeDispositifMedicalReq {
  @override
  final _i3.GepisodeDispositifMedicalVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeDispositifMedicalReq(
          [void Function(GepisodeDispositifMedicalReqBuilder)? updates]) =>
      (new GepisodeDispositifMedicalReqBuilder()..update(updates))._build();

  _$GepisodeDispositifMedicalReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeDispositifMedicalReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeDispositifMedicalReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeDispositifMedicalReq', 'idFields');
  }

  @override
  GepisodeDispositifMedicalReq rebuild(
          void Function(GepisodeDispositifMedicalReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeDispositifMedicalReqBuilder toBuilder() =>
      new GepisodeDispositifMedicalReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeDispositifMedicalReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeDispositifMedicalReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeDispositifMedicalReqBuilder
    implements
        Builder<GepisodeDispositifMedicalReq,
            GepisodeDispositifMedicalReqBuilder> {
  _$GepisodeDispositifMedicalReq? _$v;

  _i3.GepisodeDispositifMedicalVarsBuilder? _vars;
  _i3.GepisodeDispositifMedicalVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeDispositifMedicalVarsBuilder();
  set vars(_i3.GepisodeDispositifMedicalVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeDispositifMedicalReqBuilder() {
    GepisodeDispositifMedicalReq._initializeBuilder(this);
  }

  GepisodeDispositifMedicalReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeDispositifMedicalReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeDispositifMedicalReq;
  }

  @override
  void update(void Function(GepisodeDispositifMedicalReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeDispositifMedicalReq build() => _build();

  _$GepisodeDispositifMedicalReq _build() {
    _$GepisodeDispositifMedicalReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeDispositifMedicalReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeDispositifMedicalReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeDispositifMedicalReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeDispositifMedicalReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeVaccinReq extends GepisodeVaccinReq {
  @override
  final _i3.GepisodeVaccinVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeVaccinReq(
          [void Function(GepisodeVaccinReqBuilder)? updates]) =>
      (new GepisodeVaccinReqBuilder()..update(updates))._build();

  _$GepisodeVaccinReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GepisodeVaccinReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeVaccinReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeVaccinReq', 'idFields');
  }

  @override
  GepisodeVaccinReq rebuild(void Function(GepisodeVaccinReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeVaccinReqBuilder toBuilder() =>
      new GepisodeVaccinReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeVaccinReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeVaccinReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeVaccinReqBuilder
    implements Builder<GepisodeVaccinReq, GepisodeVaccinReqBuilder> {
  _$GepisodeVaccinReq? _$v;

  _i3.GepisodeVaccinVarsBuilder? _vars;
  _i3.GepisodeVaccinVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeVaccinVarsBuilder();
  set vars(_i3.GepisodeVaccinVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeVaccinReqBuilder() {
    GepisodeVaccinReq._initializeBuilder(this);
  }

  GepisodeVaccinReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeVaccinReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeVaccinReq;
  }

  @override
  void update(void Function(GepisodeVaccinReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeVaccinReq build() => _build();

  _$GepisodeVaccinReq _build() {
    _$GepisodeVaccinReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeVaccinReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeVaccinReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeVaccinReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeVaccinReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeVaccinationReq extends GepisodeVaccinationReq {
  @override
  final _i3.GepisodeVaccinationVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeVaccinationReq(
          [void Function(GepisodeVaccinationReqBuilder)? updates]) =>
      (new GepisodeVaccinationReqBuilder()..update(updates))._build();

  _$GepisodeVaccinationReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GepisodeVaccinationReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeVaccinationReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeVaccinationReq', 'idFields');
  }

  @override
  GepisodeVaccinationReq rebuild(
          void Function(GepisodeVaccinationReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeVaccinationReqBuilder toBuilder() =>
      new GepisodeVaccinationReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeVaccinationReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeVaccinationReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeVaccinationReqBuilder
    implements Builder<GepisodeVaccinationReq, GepisodeVaccinationReqBuilder> {
  _$GepisodeVaccinationReq? _$v;

  _i3.GepisodeVaccinationVarsBuilder? _vars;
  _i3.GepisodeVaccinationVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeVaccinationVarsBuilder();
  set vars(_i3.GepisodeVaccinationVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeVaccinationReqBuilder() {
    GepisodeVaccinationReq._initializeBuilder(this);
  }

  GepisodeVaccinationReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeVaccinationReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeVaccinationReq;
  }

  @override
  void update(void Function(GepisodeVaccinationReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeVaccinationReq build() => _build();

  _$GepisodeVaccinationReq _build() {
    _$GepisodeVaccinationReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeVaccinationReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeVaccinationReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeVaccinationReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeVaccinationReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeMaladieReq extends GepisodeMaladieReq {
  @override
  final _i3.GepisodeMaladieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeMaladieReq(
          [void Function(GepisodeMaladieReqBuilder)? updates]) =>
      (new GepisodeMaladieReqBuilder()..update(updates))._build();

  _$GepisodeMaladieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GepisodeMaladieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeMaladieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeMaladieReq', 'idFields');
  }

  @override
  GepisodeMaladieReq rebuild(
          void Function(GepisodeMaladieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeMaladieReqBuilder toBuilder() =>
      new GepisodeMaladieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeMaladieReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeMaladieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeMaladieReqBuilder
    implements Builder<GepisodeMaladieReq, GepisodeMaladieReqBuilder> {
  _$GepisodeMaladieReq? _$v;

  _i3.GepisodeMaladieVarsBuilder? _vars;
  _i3.GepisodeMaladieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeMaladieVarsBuilder();
  set vars(_i3.GepisodeMaladieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeMaladieReqBuilder() {
    GepisodeMaladieReq._initializeBuilder(this);
  }

  GepisodeMaladieReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeMaladieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeMaladieReq;
  }

  @override
  void update(void Function(GepisodeMaladieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeMaladieReq build() => _build();

  _$GepisodeMaladieReq _build() {
    _$GepisodeMaladieReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeMaladieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeMaladieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeMaladieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeMaladieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
