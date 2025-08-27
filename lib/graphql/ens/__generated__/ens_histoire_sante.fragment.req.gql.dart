// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_histoire_sante.fragment.req.gql.g.dart';

abstract class GepisodeBiologieReq
    implements
        Built<GepisodeBiologieReq, GepisodeBiologieReqBuilder>,
        _i1
        .FragmentRequest<_i2.GepisodeBiologieData, _i3.GepisodeBiologieVars> {
  GepisodeBiologieReq._();

  factory GepisodeBiologieReq(
          [void Function(GepisodeBiologieReqBuilder b) updates]) =
      _$GepisodeBiologieReq;

  static void _initializeBuilder(GepisodeBiologieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeBiologie';

  @override
  _i3.GepisodeBiologieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeBiologieData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeBiologieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeBiologieData data) =>
      data.toJson();

  static Serializer<GepisodeBiologieReq> get serializer =>
      _$gepisodeBiologieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeBiologieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeBiologieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeBiologieReq.serializer,
        json,
      );
}

abstract class GepisodeMedicamentReq
    implements
        Built<GepisodeMedicamentReq, GepisodeMedicamentReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeMedicamentData,
            _i3.GepisodeMedicamentVars> {
  GepisodeMedicamentReq._();

  factory GepisodeMedicamentReq(
          [void Function(GepisodeMedicamentReqBuilder b) updates]) =
      _$GepisodeMedicamentReq;

  static void _initializeBuilder(GepisodeMedicamentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeMedicament';

  @override
  _i3.GepisodeMedicamentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeMedicamentData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeMedicamentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeMedicamentData data) =>
      data.toJson();

  static Serializer<GepisodeMedicamentReq> get serializer =>
      _$gepisodeMedicamentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeMedicamentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeMedicamentReq.serializer,
        json,
      );
}

abstract class GepisodeSoinDentaireReq
    implements
        Built<GepisodeSoinDentaireReq, GepisodeSoinDentaireReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeSoinDentaireData,
            _i3.GepisodeSoinDentaireVars> {
  GepisodeSoinDentaireReq._();

  factory GepisodeSoinDentaireReq(
          [void Function(GepisodeSoinDentaireReqBuilder b) updates]) =
      _$GepisodeSoinDentaireReq;

  static void _initializeBuilder(GepisodeSoinDentaireReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeSoinDentaire';

  @override
  _i3.GepisodeSoinDentaireVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeSoinDentaireData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeSoinDentaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeSoinDentaireData data) =>
      data.toJson();

  static Serializer<GepisodeSoinDentaireReq> get serializer =>
      _$gepisodeSoinDentaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeSoinDentaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeSoinDentaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeSoinDentaireReq.serializer,
        json,
      );
}

abstract class GepisodeHospitalisationReq
    implements
        Built<GepisodeHospitalisationReq, GepisodeHospitalisationReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeHospitalisationData,
            _i3.GepisodeHospitalisationVars> {
  GepisodeHospitalisationReq._();

  factory GepisodeHospitalisationReq(
          [void Function(GepisodeHospitalisationReqBuilder b) updates]) =
      _$GepisodeHospitalisationReq;

  static void _initializeBuilder(GepisodeHospitalisationReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeHospitalisation';

  @override
  _i3.GepisodeHospitalisationVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeHospitalisationData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeHospitalisationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeHospitalisationData data) =>
      data.toJson();

  static Serializer<GepisodeHospitalisationReq> get serializer =>
      _$gepisodeHospitalisationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeHospitalisationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeHospitalisationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeHospitalisationReq.serializer,
        json,
      );
}

abstract class GepisodeRadiologieReq
    implements
        Built<GepisodeRadiologieReq, GepisodeRadiologieReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeRadiologieData,
            _i3.GepisodeRadiologieVars> {
  GepisodeRadiologieReq._();

  factory GepisodeRadiologieReq(
          [void Function(GepisodeRadiologieReqBuilder b) updates]) =
      _$GepisodeRadiologieReq;

  static void _initializeBuilder(GepisodeRadiologieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeRadiologie';

  @override
  _i3.GepisodeRadiologieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeRadiologieData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeRadiologieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeRadiologieData data) =>
      data.toJson();

  static Serializer<GepisodeRadiologieReq> get serializer =>
      _$gepisodeRadiologieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeRadiologieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeRadiologieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeRadiologieReq.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedicalReq
    implements
        Built<GepisodeDispositifMedicalReq,
            GepisodeDispositifMedicalReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeDispositifMedicalData,
            _i3.GepisodeDispositifMedicalVars> {
  GepisodeDispositifMedicalReq._();

  factory GepisodeDispositifMedicalReq(
          [void Function(GepisodeDispositifMedicalReqBuilder b) updates]) =
      _$GepisodeDispositifMedicalReq;

  static void _initializeBuilder(GepisodeDispositifMedicalReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeDispositifMedical';

  @override
  _i3.GepisodeDispositifMedicalVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeDispositifMedicalData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeDispositifMedicalData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeDispositifMedicalData data) =>
      data.toJson();

  static Serializer<GepisodeDispositifMedicalReq> get serializer =>
      _$gepisodeDispositifMedicalReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeDispositifMedicalReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeDispositifMedicalReq.serializer,
        json,
      );
}

abstract class GepisodeVaccinReq
    implements
        Built<GepisodeVaccinReq, GepisodeVaccinReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeVaccinData, _i3.GepisodeVaccinVars> {
  GepisodeVaccinReq._();

  factory GepisodeVaccinReq(
          [void Function(GepisodeVaccinReqBuilder b) updates]) =
      _$GepisodeVaccinReq;

  static void _initializeBuilder(GepisodeVaccinReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeVaccin';

  @override
  _i3.GepisodeVaccinVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeVaccinData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeVaccinData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeVaccinData data) => data.toJson();

  static Serializer<GepisodeVaccinReq> get serializer =>
      _$gepisodeVaccinReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeVaccinReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeVaccinReq.serializer,
        json,
      );
}

abstract class GepisodeVaccinationReq
    implements
        Built<GepisodeVaccinationReq, GepisodeVaccinationReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeVaccinationData,
            _i3.GepisodeVaccinationVars> {
  GepisodeVaccinationReq._();

  factory GepisodeVaccinationReq(
          [void Function(GepisodeVaccinationReqBuilder b) updates]) =
      _$GepisodeVaccinationReq;

  static void _initializeBuilder(GepisodeVaccinationReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeVaccination';

  @override
  _i3.GepisodeVaccinationVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeVaccinationData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeVaccinationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeVaccinationData data) =>
      data.toJson();

  static Serializer<GepisodeVaccinationReq> get serializer =>
      _$gepisodeVaccinationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeVaccinationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeVaccinationReq.serializer,
        json,
      );
}

abstract class GepisodeMaladieReq
    implements
        Built<GepisodeMaladieReq, GepisodeMaladieReqBuilder>,
        _i1.FragmentRequest<_i2.GepisodeMaladieData, _i3.GepisodeMaladieVars> {
  GepisodeMaladieReq._();

  factory GepisodeMaladieReq(
          [void Function(GepisodeMaladieReqBuilder b) updates]) =
      _$GepisodeMaladieReq;

  static void _initializeBuilder(GepisodeMaladieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeMaladie';

  @override
  _i3.GepisodeMaladieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeMaladieData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeMaladieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeMaladieData data) =>
      data.toJson();

  static Serializer<GepisodeMaladieReq> get serializer =>
      _$gepisodeMaladieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeMaladieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMaladieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeMaladieReq.serializer,
        json,
      );
}
