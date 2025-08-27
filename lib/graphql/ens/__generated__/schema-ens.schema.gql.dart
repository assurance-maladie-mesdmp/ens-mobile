// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    as _i1;

part 'schema-ens.schema.gql.g.dart';

class GEpisodeCategory extends EnumClass {
  const GEpisodeCategory._(String name) : super(name);

  static const GEpisodeCategory ALL = _$gEpisodeCategoryALL;

  static const GEpisodeCategory DISEASE = _$gEpisodeCategoryDISEASE;

  static const GEpisodeCategory BIOLOGY = _$gEpisodeCategoryBIOLOGY;

  static const GEpisodeCategory MEDICINE = _$gEpisodeCategoryMEDICINE;

  static const GEpisodeCategory MEDICAL_DENTAL_CARE =
      _$gEpisodeCategoryMEDICAL_DENTAL_CARE;

  static const GEpisodeCategory HOSPITALIZATION =
      _$gEpisodeCategoryHOSPITALIZATION;

  static const GEpisodeCategory RADIOLOGY = _$gEpisodeCategoryRADIOLOGY;

  static const GEpisodeCategory MEDICAL_DEVICE =
      _$gEpisodeCategoryMEDICAL_DEVICE;

  static const GEpisodeCategory VACCINE = _$gEpisodeCategoryVACCINE;

  static const GEpisodeCategory CVA_VACCINE = _$gEpisodeCategoryCVA_VACCINE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GEpisodeCategory gUnknownEnumValue =
      _$gEpisodeCategorygUnknownEnumValue;

  static Serializer<GEpisodeCategory> get serializer =>
      _$gEpisodeCategorySerializer;

  static BuiltSet<GEpisodeCategory> get values => _$gEpisodeCategoryValues;

  static GEpisodeCategory valueOf(String name) =>
      _$gEpisodeCategoryValueOf(name);
}

class GPreferenceNotificationEnum extends EnumClass {
  const GPreferenceNotificationEnum._(String name) : super(name);

  static const GPreferenceNotificationEnum NOTIF_MESSAGE =
      _$gPreferenceNotificationEnumNOTIF_MESSAGE;

  static const GPreferenceNotificationEnum NOTIF_DOCUMENT =
      _$gPreferenceNotificationEnumNOTIF_DOCUMENT;

  static const GPreferenceNotificationEnum NOTIF_APPOINTMENT =
      _$gPreferenceNotificationEnumNOTIF_APPOINTMENT;

  static const GPreferenceNotificationEnum NOTIF_SYNCHRONIZED_SERVICE =
      _$gPreferenceNotificationEnumNOTIF_SYNCHRONIZED_SERVICE;

  static const GPreferenceNotificationEnum NOTIF_DEPISTAGE =
      _$gPreferenceNotificationEnumNOTIF_DEPISTAGE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GPreferenceNotificationEnum gUnknownEnumValue =
      _$gPreferenceNotificationEnumgUnknownEnumValue;

  static Serializer<GPreferenceNotificationEnum> get serializer =>
      _$gPreferenceNotificationEnumSerializer;

  static BuiltSet<GPreferenceNotificationEnum> get values =>
      _$gPreferenceNotificationEnumValues;

  static GPreferenceNotificationEnum valueOf(String name) =>
      _$gPreferenceNotificationEnumValueOf(name);
}

class GDemandeAccesStatutEnum extends EnumClass {
  const GDemandeAccesStatutEnum._(String name) : super(name);

  static const GDemandeAccesStatutEnum WAITING =
      _$gDemandeAccesStatutEnumWAITING;

  static const GDemandeAccesStatutEnum VALIDATED =
      _$gDemandeAccesStatutEnumVALIDATED;

  static const GDemandeAccesStatutEnum REFUSED =
      _$gDemandeAccesStatutEnumREFUSED;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDemandeAccesStatutEnum gUnknownEnumValue =
      _$gDemandeAccesStatutEnumgUnknownEnumValue;

  static Serializer<GDemandeAccesStatutEnum> get serializer =>
      _$gDemandeAccesStatutEnumSerializer;

  static BuiltSet<GDemandeAccesStatutEnum> get values =>
      _$gDemandeAccesStatutEnumValues;

  static GDemandeAccesStatutEnum valueOf(String name) =>
      _$gDemandeAccesStatutEnumValueOf(name);
}

class GHealthProfessionalEnum extends EnumClass {
  const GHealthProfessionalEnum._(String name) : super(name);

  static const GHealthProfessionalEnum GENERAL_PRACTITIONER =
      _$gHealthProfessionalEnumGENERAL_PRACTITIONER;

  static const GHealthProfessionalEnum ALLERGIST =
      _$gHealthProfessionalEnumALLERGIST;

  static const GHealthProfessionalEnum CARDIOLOGIST =
      _$gHealthProfessionalEnumCARDIOLOGIST;

  static const GHealthProfessionalEnum DENTIST =
      _$gHealthProfessionalEnumDENTIST;

  static const GHealthProfessionalEnum DERMATOLOGIST =
      _$gHealthProfessionalEnumDERMATOLOGIST;

  static const GHealthProfessionalEnum ENDOCRINOLOGIST =
      _$gHealthProfessionalEnumENDOCRINOLOGIST;

  static const GHealthProfessionalEnum GASTROENTEROLOGIST =
      _$gHealthProfessionalEnumGASTROENTEROLOGIST;

  static const GHealthProfessionalEnum GERIATRICIAN =
      _$gHealthProfessionalEnumGERIATRICIAN;

  static const GHealthProfessionalEnum GYNECOLOGIST =
      _$gHealthProfessionalEnumGYNECOLOGIST;

  static const GHealthProfessionalEnum INFECTOLOGIST =
      _$gHealthProfessionalEnumINFECTOLOGIST;

  static const GHealthProfessionalEnum NURSE = _$gHealthProfessionalEnumNURSE;

  static const GHealthProfessionalEnum PHYSIOTHERAPIST =
      _$gHealthProfessionalEnumPHYSIOTHERAPIST;

  static const GHealthProfessionalEnum NEUROLOGIST =
      _$gHealthProfessionalEnumNEUROLOGIST;

  static const GHealthProfessionalEnum ONCOLOGIST =
      _$gHealthProfessionalEnumONCOLOGIST;

  static const GHealthProfessionalEnum OPHTHALMOLOGIST =
      _$gHealthProfessionalEnumOPHTHALMOLOGIST;

  static const GHealthProfessionalEnum ORTHOPEDIST =
      _$gHealthProfessionalEnumORTHOPEDIST;

  static const GHealthProfessionalEnum SPEECH_THERAPIST =
      _$gHealthProfessionalEnumSPEECH_THERAPIST;

  static const GHealthProfessionalEnum ORTHOPTIST =
      _$gHealthProfessionalEnumORTHOPTIST;

  static const GHealthProfessionalEnum ENT_SPECIALIST =
      _$gHealthProfessionalEnumENT_SPECIALIST;

  static const GHealthProfessionalEnum PEDIATRICIAN =
      _$gHealthProfessionalEnumPEDIATRICIAN;

  static const GHealthProfessionalEnum PHARMACIST =
      _$gHealthProfessionalEnumPHARMACIST;

  static const GHealthProfessionalEnum PODIATRIST =
      _$gHealthProfessionalEnumPODIATRIST;

  static const GHealthProfessionalEnum PULMONOLOGIST =
      _$gHealthProfessionalEnumPULMONOLOGIST;

  static const GHealthProfessionalEnum PSYCHIATRIST =
      _$gHealthProfessionalEnumPSYCHIATRIST;

  static const GHealthProfessionalEnum RHEUMATOLOGIST =
      _$gHealthProfessionalEnumRHEUMATOLOGIST;

  static const GHealthProfessionalEnum MIDWIFE =
      _$gHealthProfessionalEnumMIDWIFE;

  static const GHealthProfessionalEnum UROLOGIST =
      _$gHealthProfessionalEnumUROLOGIST;

  static const GHealthProfessionalEnum OTHER = _$gHealthProfessionalEnumOTHER;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GHealthProfessionalEnum gUnknownEnumValue =
      _$gHealthProfessionalEnumgUnknownEnumValue;

  static Serializer<GHealthProfessionalEnum> get serializer =>
      _$gHealthProfessionalEnumSerializer;

  static BuiltSet<GHealthProfessionalEnum> get values =>
      _$gHealthProfessionalEnumValues;

  static GHealthProfessionalEnum valueOf(String name) =>
      _$gHealthProfessionalEnumValueOf(name);
}

class GHealthProfessionalRoleEnum extends EnumClass {
  const GHealthProfessionalRoleEnum._(String name) : super(name);

  static const GHealthProfessionalRoleEnum SAGE_FEMME_REFERENTE =
      _$gHealthProfessionalRoleEnumSAGE_FEMME_REFERENTE;

  static const GHealthProfessionalRoleEnum PHARMACIEN_CORRESPONDANT =
      _$gHealthProfessionalRoleEnumPHARMACIEN_CORRESPONDANT;

  static const GHealthProfessionalRoleEnum MEDECIN_TRAITANT =
      _$gHealthProfessionalRoleEnumMEDECIN_TRAITANT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GHealthProfessionalRoleEnum gUnknownEnumValue =
      _$gHealthProfessionalRoleEnumgUnknownEnumValue;

  static Serializer<GHealthProfessionalRoleEnum> get serializer =>
      _$gHealthProfessionalRoleEnumSerializer;

  static BuiltSet<GHealthProfessionalRoleEnum> get values =>
      _$gHealthProfessionalRoleEnumValues;

  static GHealthProfessionalRoleEnum valueOf(String name) =>
      _$gHealthProfessionalRoleEnumValueOf(name);
}

class GReplyTypeEnum extends EnumClass {
  const GReplyTypeEnum._(String name) : super(name);

  static const GReplyTypeEnum REPLY = _$gReplyTypeEnumREPLY;

  static const GReplyTypeEnum REPLY_TO_ALL = _$gReplyTypeEnumREPLY_TO_ALL;

  static const GReplyTypeEnum REPLY_BLOCKED = _$gReplyTypeEnumREPLY_BLOCKED;

  static const GReplyTypeEnum NO_REPLY = _$gReplyTypeEnumNO_REPLY;

  static const GReplyTypeEnum NEW_MESSAGE = _$gReplyTypeEnumNEW_MESSAGE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GReplyTypeEnum gUnknownEnumValue =
      _$gReplyTypeEnumgUnknownEnumValue;

  static Serializer<GReplyTypeEnum> get serializer =>
      _$gReplyTypeEnumSerializer;

  static BuiltSet<GReplyTypeEnum> get values => _$gReplyTypeEnumValues;

  static GReplyTypeEnum valueOf(String name) => _$gReplyTypeEnumValueOf(name);
}

class GAgendaAuthorTypeEnum extends EnumClass {
  const GAgendaAuthorTypeEnum._(String name) : super(name);

  static const GAgendaAuthorTypeEnum PATIENT = _$gAgendaAuthorTypeEnumPATIENT;

  static const GAgendaAuthorTypeEnum EDITOR_SOLUTION =
      _$gAgendaAuthorTypeEnumEDITOR_SOLUTION;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GAgendaAuthorTypeEnum gUnknownEnumValue =
      _$gAgendaAuthorTypeEnumgUnknownEnumValue;

  static Serializer<GAgendaAuthorTypeEnum> get serializer =>
      _$gAgendaAuthorTypeEnumSerializer;

  static BuiltSet<GAgendaAuthorTypeEnum> get values =>
      _$gAgendaAuthorTypeEnumValues;

  static GAgendaAuthorTypeEnum valueOf(String name) =>
      _$gAgendaAuthorTypeEnumValueOf(name);
}

class GAppointmentType extends EnumClass {
  const GAppointmentType._(String name) : super(name);

  static const GAppointmentType PRACTITIONER = _$gAppointmentTypePRACTITIONER;

  static const GAppointmentType HEALTHCARE_SERVICE =
      _$gAppointmentTypeHEALTHCARE_SERVICE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GAppointmentType gUnknownEnumValue =
      _$gAppointmentTypegUnknownEnumValue;

  static Serializer<GAppointmentType> get serializer =>
      _$gAppointmentTypeSerializer;

  static BuiltSet<GAppointmentType> get values => _$gAppointmentTypeValues;

  static GAppointmentType valueOf(String name) =>
      _$gAppointmentTypeValueOf(name);
}

class GPreventionTypeEnum extends EnumClass {
  const GPreventionTypeEnum._(String name) : super(name);

  static const GPreventionTypeEnum TO_PLAN = _$gPreventionTypeEnumTO_PLAN;

  static const GPreventionTypeEnum NOT_SPECIFIED =
      _$gPreventionTypeEnumNOT_SPECIFIED;

  static const GPreventionTypeEnum DONE = _$gPreventionTypeEnumDONE;

  static const GPreventionTypeEnum NOT_DONE = _$gPreventionTypeEnumNOT_DONE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GPreventionTypeEnum gUnknownEnumValue =
      _$gPreventionTypeEnumgUnknownEnumValue;

  static Serializer<GPreventionTypeEnum> get serializer =>
      _$gPreventionTypeEnumSerializer;

  static BuiltSet<GPreventionTypeEnum> get values =>
      _$gPreventionTypeEnumValues;

  static GPreventionTypeEnum valueOf(String name) =>
      _$gPreventionTypeEnumValueOf(name);
}

class GSourceAuthor extends EnumClass {
  const GSourceAuthor._(String name) : super(name);

  static const GSourceAuthor PRACTITIONER = _$gSourceAuthorPRACTITIONER;

  static const GSourceAuthor PATIENT = _$gSourceAuthorPATIENT;

  static const GSourceAuthor DISPOSITIF = _$gSourceAuthorDISPOSITIF;

  static const GSourceAuthor ORGANISATION = _$gSourceAuthorORGANISATION;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GSourceAuthor gUnknownEnumValue =
      _$gSourceAuthorgUnknownEnumValue;

  static Serializer<GSourceAuthor> get serializer => _$gSourceAuthorSerializer;

  static BuiltSet<GSourceAuthor> get values => _$gSourceAuthorValues;

  static GSourceAuthor valueOf(String name) => _$gSourceAuthorValueOf(name);
}

class GCategory extends EnumClass {
  const GCategory._(String name) : super(name);

  static const GCategory SYNTHESE = _$gCategorySYNTHESE;

  static const GCategory ORD_SOIN = _$gCategoryORD_SOIN;

  static const GCategory RADIO_SC = _$gCategoryRADIO_SC;

  static const GCategory BIOLOGIE = _$gCategoryBIOLOGIE;

  static const GCategory CPT_REND = _$gCategoryCPT_REND;

  static const GCategory DEPISTAG = _$gCategoryDEPISTAG;

  static const GCategory CERT_MED = _$gCategoryCERT_MED;

  static const GCategory AUTR_DOC = _$gCategoryAUTR_DOC;

  static const GCategory DOC_ADM = _$gCategoryDOC_ADM;

  static const GCategory SYNTH_PML = _$gCategorySYNTH_PML;

  static const GCategory DIR_ANT = _$gCategoryDIR_ANT;

  static const GCategory CAR_VAC = _$gCategoryCAR_VAC;

  static const GCategory VDP = _$gCategoryVDP;

  static const GCategory REMB = _$gCategoryREMB;

  static const GCategory QUEST_SANTE = _$gCategoryQUEST_SANTE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GCategory gUnknownEnumValue = _$gCategorygUnknownEnumValue;

  static Serializer<GCategory> get serializer => _$gCategorySerializer;

  static BuiltSet<GCategory> get values => _$gCategoryValues;

  static GCategory valueOf(String name) => _$gCategoryValueOf(name);
}

class GConfidentiality extends EnumClass {
  const GConfidentiality._(String name) : super(name);

  static const GConfidentiality MASQUE_PS = _$gConfidentialityMASQUE_PS;

  static const GConfidentiality N = _$gConfidentialityN;

  static const GConfidentiality INVISIBLE_REPRESENTANTS_LEGAUX =
      _$gConfidentialityINVISIBLE_REPRESENTANTS_LEGAUX;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GConfidentiality gUnknownEnumValue =
      _$gConfidentialitygUnknownEnumValue;

  static Serializer<GConfidentiality> get serializer =>
      _$gConfidentialitySerializer;

  static BuiltSet<GConfidentiality> get values => _$gConfidentialityValues;

  static GConfidentiality valueOf(String name) =>
      _$gConfidentialityValueOf(name);
}

class GContactType extends EnumClass {
  const GContactType._(String name) : super(name);

  static const GContactType EMERGENCY_CONTACT = _$gContactTypeEMERGENCY_CONTACT;

  static const GContactType TRUSTED_CONTACT = _$gContactTypeTRUSTED_CONTACT;

  static const GContactType CAREGIVER_CONTACT = _$gContactTypeCAREGIVER_CONTACT;

  static const GContactType HELP_CONTACT = _$gContactTypeHELP_CONTACT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GContactType gUnknownEnumValue = _$gContactTypegUnknownEnumValue;

  static Serializer<GContactType> get serializer => _$gContactTypeSerializer;

  static BuiltSet<GContactType> get values => _$gContactTypeValues;

  static GContactType valueOf(String name) => _$gContactTypeValueOf(name);
}

class GEntourageRelation extends EnumClass {
  const GEntourageRelation._(String name) : super(name);

  static const GEntourageRelation MOTHER = _$gEntourageRelationMOTHER;

  static const GEntourageRelation FATHER = _$gEntourageRelationFATHER;

  static const GEntourageRelation CHILD = _$gEntourageRelationCHILD;

  static const GEntourageRelation SPOUSE = _$gEntourageRelationSPOUSE;

  static const GEntourageRelation TUTEUR = _$gEntourageRelationTUTEUR;

  static const GEntourageRelation OTHER = _$gEntourageRelationOTHER;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GEntourageRelation gUnknownEnumValue =
      _$gEntourageRelationgUnknownEnumValue;

  static Serializer<GEntourageRelation> get serializer =>
      _$gEntourageRelationSerializer;

  static BuiltSet<GEntourageRelation> get values => _$gEntourageRelationValues;

  static GEntourageRelation valueOf(String name) =>
      _$gEntourageRelationValueOf(name);
}

class GLinkType extends EnumClass {
  const GLinkType._(String name) : super(name);

  static const GLinkType DOCUMENT = _$gLinkTypeDOCUMENT;

  static const GLinkType DISEASE = _$gLinkTypeDISEASE;

  static const GLinkType HOSPITALIZATION = _$gLinkTypeHOSPITALIZATION;

  static const GLinkType FOLDER = _$gLinkTypeFOLDER;

  static const GLinkType TREATMENT = _$gLinkTypeTREATMENT;

  static const GLinkType MEASURE = _$gLinkTypeMEASURE;

  static const GLinkType ALLERGY = _$gLinkTypeALLERGY;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GLinkType gUnknownEnumValue = _$gLinkTypegUnknownEnumValue;

  static Serializer<GLinkType> get serializer => _$gLinkTypeSerializer;

  static BuiltSet<GLinkType> get values => _$gLinkTypeValues;

  static GLinkType valueOf(String name) => _$gLinkTypeValueOf(name);
}

class GServiceStatusEnum extends EnumClass {
  const GServiceStatusEnum._(String name) : super(name);

  static const GServiceStatusEnum EN_LIGNE = _$gServiceStatusEnumEN_LIGNE;

  static const GServiceStatusEnum HORS_LIGNE = _$gServiceStatusEnumHORS_LIGNE;

  static const GServiceStatusEnum DEREFERENCEE =
      _$gServiceStatusEnumDEREFERENCEE;

  static const GServiceStatusEnum PRESERIE = _$gServiceStatusEnumPRESERIE;

  static const GServiceStatusEnum SUSPENDUE = _$gServiceStatusEnumSUSPENDUE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GServiceStatusEnum gUnknownEnumValue =
      _$gServiceStatusEnumgUnknownEnumValue;

  static Serializer<GServiceStatusEnum> get serializer =>
      _$gServiceStatusEnumSerializer;

  static BuiltSet<GServiceStatusEnum> get values => _$gServiceStatusEnumValues;

  static GServiceStatusEnum valueOf(String name) =>
      _$gServiceStatusEnumValueOf(name);
}

class GDisabilitiesTypesEnum extends EnumClass {
  const GDisabilitiesTypesEnum._(String name) : super(name);

  static const GDisabilitiesTypesEnum SENSORY = _$gDisabilitiesTypesEnumSENSORY;

  static const GDisabilitiesTypesEnum NEURO_DEVELOPMENTAL_DISORDER =
      _$gDisabilitiesTypesEnumNEURO_DEVELOPMENTAL_DISORDER;

  static const GDisabilitiesTypesEnum PSYCHIC = _$gDisabilitiesTypesEnumPSYCHIC;

  static const GDisabilitiesTypesEnum ENGINE = _$gDisabilitiesTypesEnumENGINE;

  static const GDisabilitiesTypesEnum POLY_DISABILITY =
      _$gDisabilitiesTypesEnumPOLY_DISABILITY;

  static const GDisabilitiesTypesEnum DISABLING_DISEASES =
      _$gDisabilitiesTypesEnumDISABLING_DISEASES;

  static const GDisabilitiesTypesEnum OTHERS = _$gDisabilitiesTypesEnumOTHERS;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDisabilitiesTypesEnum gUnknownEnumValue =
      _$gDisabilitiesTypesEnumgUnknownEnumValue;

  static Serializer<GDisabilitiesTypesEnum> get serializer =>
      _$gDisabilitiesTypesEnumSerializer;

  static BuiltSet<GDisabilitiesTypesEnum> get values =>
      _$gDisabilitiesTypesEnumValues;

  static GDisabilitiesTypesEnum valueOf(String name) =>
      _$gDisabilitiesTypesEnumValueOf(name);
}

class GDisabilityRateEnum extends EnumClass {
  const GDisabilityRateEnum._(String name) : super(name);

  static const GDisabilityRateEnum LESS_THAN_50 =
      _$gDisabilityRateEnumLESS_THAN_50;

  static const GDisabilityRateEnum BETWEEN_50_AND_79 =
      _$gDisabilityRateEnumBETWEEN_50_AND_79;

  static const GDisabilityRateEnum BIGGER_THAN_80_OR_EQUAL =
      _$gDisabilityRateEnumBIGGER_THAN_80_OR_EQUAL;

  static const GDisabilityRateEnum UNKNOWN = _$gDisabilityRateEnumUNKNOWN;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDisabilityRateEnum gUnknownEnumValue =
      _$gDisabilityRateEnumgUnknownEnumValue;

  static Serializer<GDisabilityRateEnum> get serializer =>
      _$gDisabilityRateEnumSerializer;

  static BuiltSet<GDisabilityRateEnum> get values =>
      _$gDisabilityRateEnumValues;

  static GDisabilityRateEnum valueOf(String name) =>
      _$gDisabilityRateEnumValueOf(name);
}

class GHumanHelpEnum extends EnumClass {
  const GHumanHelpEnum._(String name) : super(name);

  static const GHumanHelpEnum YES = _$gHumanHelpEnumYES;

  static const GHumanHelpEnum NO = _$gHumanHelpEnumNO;

  static const GHumanHelpEnum NONE = _$gHumanHelpEnumNONE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GHumanHelpEnum gUnknownEnumValue =
      _$gHumanHelpEnumgUnknownEnumValue;

  static Serializer<GHumanHelpEnum> get serializer =>
      _$gHumanHelpEnumSerializer;

  static BuiltSet<GHumanHelpEnum> get values => _$gHumanHelpEnumValues;

  static GHumanHelpEnum valueOf(String name) => _$gHumanHelpEnumValueOf(name);
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i1.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

class GFamilyRelationshipEnum extends EnumClass {
  const GFamilyRelationshipEnum._(String name) : super(name);

  static const GFamilyRelationshipEnum MOTHER = _$gFamilyRelationshipEnumMOTHER;

  static const GFamilyRelationshipEnum FATHER = _$gFamilyRelationshipEnumFATHER;

  static const GFamilyRelationshipEnum GRANDMOTHER =
      _$gFamilyRelationshipEnumGRANDMOTHER;

  static const GFamilyRelationshipEnum GRANDFATHER =
      _$gFamilyRelationshipEnumGRANDFATHER;

  static const GFamilyRelationshipEnum SISTER = _$gFamilyRelationshipEnumSISTER;

  static const GFamilyRelationshipEnum BROTHER =
      _$gFamilyRelationshipEnumBROTHER;

  static const GFamilyRelationshipEnum GREAT_GRANDMOTHER =
      _$gFamilyRelationshipEnumGREAT_GRANDMOTHER;

  static const GFamilyRelationshipEnum GREAT_GRANDFATHER =
      _$gFamilyRelationshipEnumGREAT_GRANDFATHER;

  static const GFamilyRelationshipEnum AUNT = _$gFamilyRelationshipEnumAUNT;

  static const GFamilyRelationshipEnum UNCLE = _$gFamilyRelationshipEnumUNCLE;

  static const GFamilyRelationshipEnum OTHER = _$gFamilyRelationshipEnumOTHER;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GFamilyRelationshipEnum gUnknownEnumValue =
      _$gFamilyRelationshipEnumgUnknownEnumValue;

  static Serializer<GFamilyRelationshipEnum> get serializer =>
      _$gFamilyRelationshipEnumSerializer;

  static BuiltSet<GFamilyRelationshipEnum> get values =>
      _$gFamilyRelationshipEnumValues;

  static GFamilyRelationshipEnum valueOf(String name) =>
      _$gFamilyRelationshipEnumValueOf(name);
}

class GDiseaseEpisodeType extends EnumClass {
  const GDiseaseEpisodeType._(String name) : super(name);

  static const GDiseaseEpisodeType START = _$gDiseaseEpisodeTypeSTART;

  static const GDiseaseEpisodeType END = _$gDiseaseEpisodeTypeEND;

  static const GDiseaseEpisodeType FULL = _$gDiseaseEpisodeTypeFULL;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDiseaseEpisodeType gUnknownEnumValue =
      _$gDiseaseEpisodeTypegUnknownEnumValue;

  static Serializer<GDiseaseEpisodeType> get serializer =>
      _$gDiseaseEpisodeTypeSerializer;

  static BuiltSet<GDiseaseEpisodeType> get values =>
      _$gDiseaseEpisodeTypeValues;

  static GDiseaseEpisodeType valueOf(String name) =>
      _$gDiseaseEpisodeTypeValueOf(name);
}

class GVaccineTypeOfAdministrationEnum extends EnumClass {
  const GVaccineTypeOfAdministrationEnum._(String name) : super(name);

  static const GVaccineTypeOfAdministrationEnum INITIMMUNIZ =
      _$gVaccineTypeOfAdministrationEnumINITIMMUNIZ;

  static const GVaccineTypeOfAdministrationEnum BOOSTER =
      _$gVaccineTypeOfAdministrationEnumBOOSTER;

  static const GVaccineTypeOfAdministrationEnum IMMUNIZ =
      _$gVaccineTypeOfAdministrationEnumIMMUNIZ;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GVaccineTypeOfAdministrationEnum gUnknownEnumValue =
      _$gVaccineTypeOfAdministrationEnumgUnknownEnumValue;

  static Serializer<GVaccineTypeOfAdministrationEnum> get serializer =>
      _$gVaccineTypeOfAdministrationEnumSerializer;

  static BuiltSet<GVaccineTypeOfAdministrationEnum> get values =>
      _$gVaccineTypeOfAdministrationEnumValues;

  static GVaccineTypeOfAdministrationEnum valueOf(String name) =>
      _$gVaccineTypeOfAdministrationEnumValueOf(name);
}

class GMeasureCode extends EnumClass {
  const GMeasureCode._(String name) : super(name);

  static const GMeasureCode WEIGHT = _$gMeasureCodeWEIGHT;

  static const GMeasureCode HEIGHT = _$gMeasureCodeHEIGHT;

  static const GMeasureCode WAIST_CIRCUMFERENCE =
      _$gMeasureCodeWAIST_CIRCUMFERENCE;

  static const GMeasureCode BODY_TEMPERATURE = _$gMeasureCodeBODY_TEMPERATURE;

  static const GMeasureCode GLUCOSE = _$gMeasureCodeGLUCOSE;

  static const GMeasureCode SYSTOLIC_BLOOD_PRESSURE =
      _$gMeasureCodeSYSTOLIC_BLOOD_PRESSURE;

  static const GMeasureCode DIASTOLIC_BLOOD_PRESSURE =
      _$gMeasureCodeDIASTOLIC_BLOOD_PRESSURE;

  static const GMeasureCode BLOOD_PRESSURE = _$gMeasureCodeBLOOD_PRESSURE;

  static const GMeasureCode BODY_MASS_INDEX = _$gMeasureCodeBODY_MASS_INDEX;

  static const GMeasureCode PAIN_SEVERITY = _$gMeasureCodePAIN_SEVERITY;

  static const GMeasureCode HEART_RATE = _$gMeasureCodeHEART_RATE;

  static const GMeasureCode HEAD_CIRCUMFERENCE =
      _$gMeasureCodeHEAD_CIRCUMFERENCE;

  static const GMeasureCode STEPS_BY_DAY = _$gMeasureCodeSTEPS_BY_DAY;

  static const GMeasureCode INTERSTITIAL_GLUCOSE =
      _$gMeasureCodeINTERSTITIAL_GLUCOSE;

  static const GMeasureCode GLYCATED_HEMOGLOBIN =
      _$gMeasureCodeGLYCATED_HEMOGLOBIN;

  static const GMeasureCode HEMOGLOBIN_GLYCATION_INDEX =
      _$gMeasureCodeHEMOGLOBIN_GLYCATION_INDEX;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GMeasureCode gUnknownEnumValue = _$gMeasureCodegUnknownEnumValue;

  static Serializer<GMeasureCode> get serializer => _$gMeasureCodeSerializer;

  static BuiltSet<GMeasureCode> get values => _$gMeasureCodeValues;

  static GMeasureCode valueOf(String name) => _$gMeasureCodeValueOf(name);
}

class GMeasureCategory extends EnumClass {
  const GMeasureCategory._(String name) : super(name);

  static const GMeasureCategory BMI16 = _$gMeasureCategoryBMI16;

  static const GMeasureCategory BMI17 = _$gMeasureCategoryBMI17;

  static const GMeasureCategory BMI18_5 = _$gMeasureCategoryBMI18_5;

  static const GMeasureCategory BMI23 = _$gMeasureCategoryBMI23;

  static const GMeasureCategory BMI25 = _$gMeasureCategoryBMI25;

  static const GMeasureCategory BMI27 = _$gMeasureCategoryBMI27;

  static const GMeasureCategory BMI30 = _$gMeasureCategoryBMI30;

  static const GMeasureCategory BMI35 = _$gMeasureCategoryBMI35;

  static const GMeasureCategory SDMED = _$gMeasureCategorySDMED;

  static const GMeasureCategory SDNEG1 = _$gMeasureCategorySDNEG1;

  static const GMeasureCategory SDNEG2 = _$gMeasureCategorySDNEG2;

  static const GMeasureCategory SDNEG3 = _$gMeasureCategorySDNEG3;

  static const GMeasureCategory SDPOS1 = _$gMeasureCategorySDPOS1;

  static const GMeasureCategory SDPOS2 = _$gMeasureCategorySDPOS2;

  static const GMeasureCategory SDPOS3 = _$gMeasureCategorySDPOS3;

  static const GMeasureCategory C1 = _$gMeasureCategoryC1;

  static const GMeasureCategory C3 = _$gMeasureCategoryC3;

  static const GMeasureCategory C10 = _$gMeasureCategoryC10;

  static const GMeasureCategory C25 = _$gMeasureCategoryC25;

  static const GMeasureCategory C50 = _$gMeasureCategoryC50;

  static const GMeasureCategory C75 = _$gMeasureCategoryC75;

  static const GMeasureCategory C90 = _$gMeasureCategoryC90;

  static const GMeasureCategory C97 = _$gMeasureCategoryC97;

  static const GMeasureCategory C99 = _$gMeasureCategoryC99;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GMeasureCategory gUnknownEnumValue =
      _$gMeasureCategorygUnknownEnumValue;

  static Serializer<GMeasureCategory> get serializer =>
      _$gMeasureCategorySerializer;

  static BuiltSet<GMeasureCategory> get values => _$gMeasureCategoryValues;

  static GMeasureCategory valueOf(String name) =>
      _$gMeasureCategoryValueOf(name);
}

class GMeasureGender extends EnumClass {
  const GMeasureGender._(String name) : super(name);

  static const GMeasureGender MALE = _$gMeasureGenderMALE;

  static const GMeasureGender FEMALE = _$gMeasureGenderFEMALE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GMeasureGender gUnknownEnumValue =
      _$gMeasureGendergUnknownEnumValue;

  static Serializer<GMeasureGender> get serializer =>
      _$gMeasureGenderSerializer;

  static BuiltSet<GMeasureGender> get values => _$gMeasureGenderValues;

  static GMeasureGender valueOf(String name) => _$gMeasureGenderValueOf(name);
}

class GAuthorType extends EnumClass {
  const GAuthorType._(String name) : super(name);

  static const GAuthorType PATIENT = _$gAuthorTypePATIENT;

  static const GAuthorType EDITOR_SOLUTION = _$gAuthorTypeEDITOR_SOLUTION;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GAuthorType gUnknownEnumValue = _$gAuthorTypegUnknownEnumValue;

  static Serializer<GAuthorType> get serializer => _$gAuthorTypeSerializer;

  static BuiltSet<GAuthorType> get values => _$gAuthorTypeValues;

  static GAuthorType valueOf(String name) => _$gAuthorTypeValueOf(name);
}

class GLifestyleItemDisplayEnum extends EnumClass {
  const GLifestyleItemDisplayEnum._(String name) : super(name);

  static const GLifestyleItemDisplayEnum RADIO =
      _$gLifestyleItemDisplayEnumRADIO;

  static const GLifestyleItemDisplayEnum TEXT = _$gLifestyleItemDisplayEnumTEXT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GLifestyleItemDisplayEnum gUnknownEnumValue =
      _$gLifestyleItemDisplayEnumgUnknownEnumValue;

  static Serializer<GLifestyleItemDisplayEnum> get serializer =>
      _$gLifestyleItemDisplayEnumSerializer;

  static BuiltSet<GLifestyleItemDisplayEnum> get values =>
      _$gLifestyleItemDisplayEnumValues;

  static GLifestyleItemDisplayEnum valueOf(String name) =>
      _$gLifestyleItemDisplayEnumValueOf(name);
}

class GLifestyleSectionEnum extends EnumClass {
  const GLifestyleSectionEnum._(String name) : super(name);

  static const GLifestyleSectionEnum FOOD = _$gLifestyleSectionEnumFOOD;

  static const GLifestyleSectionEnum PHYSICAL_ACTIVITY =
      _$gLifestyleSectionEnumPHYSICAL_ACTIVITY;

  static const GLifestyleSectionEnum SLEEP = _$gLifestyleSectionEnumSLEEP;

  static const GLifestyleSectionEnum SCREEN = _$gLifestyleSectionEnumSCREEN;

  static const GLifestyleSectionEnum ALCOHOL = _$gLifestyleSectionEnumALCOHOL;

  static const GLifestyleSectionEnum TOBACCO = _$gLifestyleSectionEnumTOBACCO;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GLifestyleSectionEnum gUnknownEnumValue =
      _$gLifestyleSectionEnumgUnknownEnumValue;

  static Serializer<GLifestyleSectionEnum> get serializer =>
      _$gLifestyleSectionEnumSerializer;

  static BuiltSet<GLifestyleSectionEnum> get values =>
      _$gLifestyleSectionEnumValues;

  static GLifestyleSectionEnum valueOf(String name) =>
      _$gLifestyleSectionEnumValueOf(name);
}

class GLifestyleCreationTypeEnum extends EnumClass {
  const GLifestyleCreationTypeEnum._(String name) : super(name);

  static const GLifestyleCreationTypeEnum PATIENT =
      _$gLifestyleCreationTypeEnumPATIENT;

  static const GLifestyleCreationTypeEnum QUIZ =
      _$gLifestyleCreationTypeEnumQUIZ;

  static const GLifestyleCreationTypeEnum MIGRATION =
      _$gLifestyleCreationTypeEnumMIGRATION;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GLifestyleCreationTypeEnum gUnknownEnumValue =
      _$gLifestyleCreationTypeEnumgUnknownEnumValue;

  static Serializer<GLifestyleCreationTypeEnum> get serializer =>
      _$gLifestyleCreationTypeEnumSerializer;

  static BuiltSet<GLifestyleCreationTypeEnum> get values =>
      _$gLifestyleCreationTypeEnumValues;

  static GLifestyleCreationTypeEnum valueOf(String name) =>
      _$gLifestyleCreationTypeEnumValueOf(name);
}

class GProfileType extends EnumClass {
  const GProfileType._(String name) : super(name);

  static const GProfileType OuvrantDroit = _$gProfileTypeOuvrantDroit;

  static const GProfileType AyantDroit = _$gProfileTypeAyantDroit;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GProfileType gUnknownEnumValue = _$gProfileTypegUnknownEnumValue;

  static Serializer<GProfileType> get serializer => _$gProfileTypeSerializer;

  static BuiltSet<GProfileType> get values => _$gProfileTypeValues;

  static GProfileType valueOf(String name) => _$gProfileTypeValueOf(name);
}

class GActorType extends EnumClass {
  const GActorType._(String name) : super(name);

  static const GActorType PS = _$gActorTypePS;

  static const GActorType ES = _$gActorTypeES;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GActorType gUnknownEnumValue = _$gActorTypegUnknownEnumValue;

  static Serializer<GActorType> get serializer => _$gActorTypeSerializer;

  static BuiltSet<GActorType> get values => _$gActorTypeValues;

  static GActorType valueOf(String name) => _$gActorTypeValueOf(name);
}

class GResourceType extends EnumClass {
  const GResourceType._(String name) : super(name);

  static const GResourceType DOCUMENT = _$gResourceTypeDOCUMENT;

  static const GResourceType MESSAGERIE = _$gResourceTypeMESSAGERIE;

  static const GResourceType PML_CVA = _$gResourceTypePML_CVA;

  static const GResourceType PML_DA = _$gResourceTypePML_DA;

  static const GResourceType PML_VDP = _$gResourceTypePML_VDP;

  static const GResourceType AGENDA = _$gResourceTypeAGENDA;

  static const GResourceType COPIE_DOC_AJOUT_GLYCEMIE =
      _$gResourceTypeCOPIE_DOC_AJOUT_GLYCEMIE;

  static const GResourceType RAPPEL_RDV_PREV = _$gResourceTypeRAPPEL_RDV_PREV;

  static const GResourceType PML_MESURE = _$gResourceTypePML_MESURE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GResourceType gUnknownEnumValue =
      _$gResourceTypegUnknownEnumValue;

  static Serializer<GResourceType> get serializer => _$gResourceTypeSerializer;

  static BuiltSet<GResourceType> get values => _$gResourceTypeValues;

  static GResourceType valueOf(String name) => _$gResourceTypeValueOf(name);
}

class GGender extends EnumClass {
  const GGender._(String name) : super(name);

  static const GGender MALE = _$gGenderMALE;

  static const GGender FEMALE = _$gGenderFEMALE;

  static const GGender UNKNOWN = _$gGenderUNKNOWN;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GGender gUnknownEnumValue = _$gGendergUnknownEnumValue;

  static Serializer<GGender> get serializer => _$gGenderSerializer;

  static BuiltSet<GGender> get values => _$gGenderValues;

  static GGender valueOf(String name) => _$gGenderValueOf(name);
}

class GDelegationInvitationStatus extends EnumClass {
  const GDelegationInvitationStatus._(String name) : super(name);

  static const GDelegationInvitationStatus PENDING =
      _$gDelegationInvitationStatusPENDING;

  static const GDelegationInvitationStatus ACCEPTED =
      _$gDelegationInvitationStatusACCEPTED;

  static const GDelegationInvitationStatus REFUSED =
      _$gDelegationInvitationStatusREFUSED;

  static const GDelegationInvitationStatus EXPIRED =
      _$gDelegationInvitationStatusEXPIRED;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDelegationInvitationStatus gUnknownEnumValue =
      _$gDelegationInvitationStatusgUnknownEnumValue;

  static Serializer<GDelegationInvitationStatus> get serializer =>
      _$gDelegationInvitationStatusSerializer;

  static BuiltSet<GDelegationInvitationStatus> get values =>
      _$gDelegationInvitationStatusValues;

  static GDelegationInvitationStatus valueOf(String name) =>
      _$gDelegationInvitationStatusValueOf(name);
}

class GDelegationType extends EnumClass {
  const GDelegationType._(String name) : super(name);

  static const GDelegationType LEGAL_REPRESENTATION =
      _$gDelegationTypeLEGAL_REPRESENTATION;

  static const GDelegationType CAREGIVING = _$gDelegationTypeCAREGIVING;

  static const GDelegationType HEALTHCARE_PROFESSIONAL =
      _$gDelegationTypeHEALTHCARE_PROFESSIONAL;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDelegationType gUnknownEnumValue =
      _$gDelegationTypegUnknownEnumValue;

  static Serializer<GDelegationType> get serializer =>
      _$gDelegationTypeSerializer;

  static BuiltSet<GDelegationType> get values => _$gDelegationTypeValues;

  static GDelegationType valueOf(String name) => _$gDelegationTypeValueOf(name);
}

class GDelegationDirection extends EnumClass {
  const GDelegationDirection._(String name) : super(name);

  static const GDelegationDirection INCOMING = _$gDelegationDirectionINCOMING;

  static const GDelegationDirection OUTGOING = _$gDelegationDirectionOUTGOING;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDelegationDirection gUnknownEnumValue =
      _$gDelegationDirectiongUnknownEnumValue;

  static Serializer<GDelegationDirection> get serializer =>
      _$gDelegationDirectionSerializer;

  static BuiltSet<GDelegationDirection> get values =>
      _$gDelegationDirectionValues;

  static GDelegationDirection valueOf(String name) =>
      _$gDelegationDirectionValueOf(name);
}

class GActivityActorType extends EnumClass {
  const GActivityActorType._(String name) : super(name);

  static const GActivityActorType HEALTHCARE_PROFESSIONAL =
      _$gActivityActorTypeHEALTHCARE_PROFESSIONAL;

  static const GActivityActorType HEALTHCARE_FACILITY =
      _$gActivityActorTypeHEALTHCARE_FACILITY;

  static const GActivityActorType SUPPORT = _$gActivityActorTypeSUPPORT;

  static const GActivityActorType PATIENT = _$gActivityActorTypePATIENT;

  static const GActivityActorType SERVICE_TIERS =
      _$gActivityActorTypeSERVICE_TIERS;

  static const GActivityActorType SYSTEM = _$gActivityActorTypeSYSTEM;

  static const GActivityActorType ENROLMENT = _$gActivityActorTypeENROLMENT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GActivityActorType gUnknownEnumValue =
      _$gActivityActorTypegUnknownEnumValue;

  static Serializer<GActivityActorType> get serializer =>
      _$gActivityActorTypeSerializer;

  static BuiltSet<GActivityActorType> get values => _$gActivityActorTypeValues;

  static GActivityActorType valueOf(String name) =>
      _$gActivityActorTypeValueOf(name);
}

class GChoiceQuestionType extends EnumClass {
  const GChoiceQuestionType._(String name) : super(name);

  static const GChoiceQuestionType RADIO = _$gChoiceQuestionTypeRADIO;

  static const GChoiceQuestionType DROP_DOWN = _$gChoiceQuestionTypeDROP_DOWN;

  static const GChoiceQuestionType CHECKBOX = _$gChoiceQuestionTypeCHECKBOX;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GChoiceQuestionType gUnknownEnumValue =
      _$gChoiceQuestionTypegUnknownEnumValue;

  static Serializer<GChoiceQuestionType> get serializer =>
      _$gChoiceQuestionTypeSerializer;

  static BuiltSet<GChoiceQuestionType> get values =>
      _$gChoiceQuestionTypeValues;

  static GChoiceQuestionType valueOf(String name) =>
      _$gChoiceQuestionTypeValueOf(name);
}

class GHealthQuizCompletionStatus extends EnumClass {
  const GHealthQuizCompletionStatus._(String name) : super(name);

  static const GHealthQuizCompletionStatus DRAFT =
      _$gHealthQuizCompletionStatusDRAFT;

  static const GHealthQuizCompletionStatus FINAL =
      _$gHealthQuizCompletionStatusFINAL;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GHealthQuizCompletionStatus gUnknownEnumValue =
      _$gHealthQuizCompletionStatusgUnknownEnumValue;

  static Serializer<GHealthQuizCompletionStatus> get serializer =>
      _$gHealthQuizCompletionStatusSerializer;

  static BuiltSet<GHealthQuizCompletionStatus> get values =>
      _$gHealthQuizCompletionStatusValues;

  static GHealthQuizCompletionStatus valueOf(String name) =>
      _$gHealthQuizCompletionStatusValueOf(name);
}

class GRecommendationCode extends EnumClass {
  const GRecommendationCode._(String name) : super(name);

  static const GRecommendationCode INCITER_MES_ENFANT =
      _$gRecommendationCodeINCITER_MES_ENFANT;

  static const GRecommendationCode DECOUVERTE_MES_ENFANT =
      _$gRecommendationCodeDECOUVERTE_MES_ENFANT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GRecommendationCode gUnknownEnumValue =
      _$gRecommendationCodegUnknownEnumValue;

  static Serializer<GRecommendationCode> get serializer =>
      _$gRecommendationCodeSerializer;

  static BuiltSet<GRecommendationCode> get values =>
      _$gRecommendationCodeValues;

  static GRecommendationCode valueOf(String name) =>
      _$gRecommendationCodeValueOf(name);
}

class GDurationUnitEnum extends EnumClass {
  const GDurationUnitEnum._(String name) : super(name);

  static const GDurationUnitEnum DAY = _$gDurationUnitEnumDAY;

  static const GDurationUnitEnum WEEK = _$gDurationUnitEnumWEEK;

  static const GDurationUnitEnum MONTH = _$gDurationUnitEnumMONTH;

  static const GDurationUnitEnum YEAR = _$gDurationUnitEnumYEAR;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDurationUnitEnum gUnknownEnumValue =
      _$gDurationUnitEnumgUnknownEnumValue;

  static Serializer<GDurationUnitEnum> get serializer =>
      _$gDurationUnitEnumSerializer;

  static BuiltSet<GDurationUnitEnum> get values => _$gDurationUnitEnumValues;

  static GDurationUnitEnum valueOf(String name) =>
      _$gDurationUnitEnumValueOf(name);
}

class GBloodGroupEnum extends EnumClass {
  const GBloodGroupEnum._(String name) : super(name);

  static const GBloodGroupEnum APOS = _$gBloodGroupEnumAPOS;

  static const GBloodGroupEnum ANEG = _$gBloodGroupEnumANEG;

  static const GBloodGroupEnum ABPOS = _$gBloodGroupEnumABPOS;

  static const GBloodGroupEnum ABNEG = _$gBloodGroupEnumABNEG;

  static const GBloodGroupEnum BPOS = _$gBloodGroupEnumBPOS;

  static const GBloodGroupEnum BNEG = _$gBloodGroupEnumBNEG;

  static const GBloodGroupEnum OPOS = _$gBloodGroupEnumOPOS;

  static const GBloodGroupEnum ONEG = _$gBloodGroupEnumONEG;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GBloodGroupEnum gUnknownEnumValue =
      _$gBloodGroupEnumgUnknownEnumValue;

  static Serializer<GBloodGroupEnum> get serializer =>
      _$gBloodGroupEnumSerializer;

  static BuiltSet<GBloodGroupEnum> get values => _$gBloodGroupEnumValues;

  static GBloodGroupEnum valueOf(String name) => _$gBloodGroupEnumValueOf(name);
}

abstract class GOtpForResetPasswordInput
    implements
        Built<GOtpForResetPasswordInput, GOtpForResetPasswordInputBuilder> {
  GOtpForResetPasswordInput._();

  factory GOtpForResetPasswordInput(
          [void Function(GOtpForResetPasswordInputBuilder b) updates]) =
      _$GOtpForResetPasswordInput;

  String get nir;
  String get vitalCardNumber;
  String get dateOfBirth;
  GCanalType get canalType;
  static Serializer<GOtpForResetPasswordInput> get serializer =>
      _$gOtpForResetPasswordInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GOtpForResetPasswordInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOtpForResetPasswordInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GOtpForResetPasswordInput.serializer,
        json,
      );
}

class GCanalType extends EnumClass {
  const GCanalType._(String name) : super(name);

  static const GCanalType mail = _$gCanalTypemail;

  static const GCanalType sms = _$gCanalTypesms;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GCanalType gUnknownEnumValue = _$gCanalTypegUnknownEnumValue;

  static Serializer<GCanalType> get serializer => _$gCanalTypeSerializer;

  static BuiltSet<GCanalType> get values => _$gCanalTypeValues;

  static GCanalType valueOf(String name) => _$gCanalTypeValueOf(name);
}

abstract class GSendLoginInput
    implements Built<GSendLoginInput, GSendLoginInputBuilder> {
  GSendLoginInput._();

  factory GSendLoginInput([void Function(GSendLoginInputBuilder b) updates]) =
      _$GSendLoginInput;

  String get nir;
  String get dateOfBirth;
  GCanalType get canalType;
  static Serializer<GSendLoginInput> get serializer =>
      _$gSendLoginInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSendLoginInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendLoginInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSendLoginInput.serializer,
        json,
      );
}

abstract class GGetPersonalInformationInput
    implements
        Built<GGetPersonalInformationInput,
            GGetPersonalInformationInputBuilder> {
  GGetPersonalInformationInput._();

  factory GGetPersonalInformationInput(
          [void Function(GGetPersonalInformationInputBuilder b) updates]) =
      _$GGetPersonalInformationInput;

  String get patientId;
  static Serializer<GGetPersonalInformationInput> get serializer =>
      _$gGetPersonalInformationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetPersonalInformationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPersonalInformationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetPersonalInformationInput.serializer,
        json,
      );
}

abstract class GGetCompteInformationInput
    implements
        Built<GGetCompteInformationInput, GGetCompteInformationInputBuilder> {
  GGetCompteInformationInput._();

  factory GGetCompteInformationInput(
          [void Function(GGetCompteInformationInputBuilder b) updates]) =
      _$GGetCompteInformationInput;

  String get loggedInUserId;
  static Serializer<GGetCompteInformationInput> get serializer =>
      _$gGetCompteInformationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetCompteInformationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCompteInformationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetCompteInformationInput.serializer,
        json,
      );
}

abstract class GGetAyantsDroitsInput
    implements Built<GGetAyantsDroitsInput, GGetAyantsDroitsInputBuilder> {
  GGetAyantsDroitsInput._();

  factory GGetAyantsDroitsInput(
          [void Function(GGetAyantsDroitsInputBuilder b) updates]) =
      _$GGetAyantsDroitsInput;

  String get patientId;
  static Serializer<GGetAyantsDroitsInput> get serializer =>
      _$gGetAyantsDroitsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetAyantsDroitsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAyantsDroitsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetAyantsDroitsInput.serializer,
        json,
      );
}

abstract class GEnsHistoryInput
    implements Built<GEnsHistoryInput, GEnsHistoryInputBuilder> {
  GEnsHistoryInput._();

  factory GEnsHistoryInput([void Function(GEnsHistoryInputBuilder b) updates]) =
      _$GEnsHistoryInput;

  String get patientId;
  static Serializer<GEnsHistoryInput> get serializer =>
      _$gEnsHistoryInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEnsHistoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnsHistoryInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEnsHistoryInput.serializer,
        json,
      );
}

abstract class GSynchronizedServicesHistoryInput
    implements
        Built<GSynchronizedServicesHistoryInput,
            GSynchronizedServicesHistoryInputBuilder> {
  GSynchronizedServicesHistoryInput._();

  factory GSynchronizedServicesHistoryInput(
          [void Function(GSynchronizedServicesHistoryInputBuilder b) updates]) =
      _$GSynchronizedServicesHistoryInput;

  String get patientId;
  static Serializer<GSynchronizedServicesHistoryInput> get serializer =>
      _$gSynchronizedServicesHistoryInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSynchronizedServicesHistoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSynchronizedServicesHistoryInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSynchronizedServicesHistoryInput.serializer,
        json,
      );
}

abstract class GTraceDocumentHistoryInput
    implements
        Built<GTraceDocumentHistoryInput, GTraceDocumentHistoryInputBuilder> {
  GTraceDocumentHistoryInput._();

  factory GTraceDocumentHistoryInput(
          [void Function(GTraceDocumentHistoryInputBuilder b) updates]) =
      _$GTraceDocumentHistoryInput;

  String get patientId;
  static Serializer<GTraceDocumentHistoryInput> get serializer =>
      _$gTraceDocumentHistoryInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTraceDocumentHistoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTraceDocumentHistoryInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTraceDocumentHistoryInput.serializer,
        json,
      );
}

abstract class GGetDmpConsentementInput
    implements
        Built<GGetDmpConsentementInput, GGetDmpConsentementInputBuilder> {
  GGetDmpConsentementInput._();

  factory GGetDmpConsentementInput(
          [void Function(GGetDmpConsentementInputBuilder b) updates]) =
      _$GGetDmpConsentementInput;

  String get patientId;
  static Serializer<GGetDmpConsentementInput> get serializer =>
      _$gGetDmpConsentementInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetDmpConsentementInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetDmpConsentementInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetDmpConsentementInput.serializer,
        json,
      );
}

abstract class GGetLegalRepresentativesInput
    implements
        Built<GGetLegalRepresentativesInput,
            GGetLegalRepresentativesInputBuilder> {
  GGetLegalRepresentativesInput._();

  factory GGetLegalRepresentativesInput(
          [void Function(GGetLegalRepresentativesInputBuilder b) updates]) =
      _$GGetLegalRepresentativesInput;

  String get patientId;
  GDelegationTypeEnum get type;
  static Serializer<GGetLegalRepresentativesInput> get serializer =>
      _$gGetLegalRepresentativesInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetLegalRepresentativesInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLegalRepresentativesInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetLegalRepresentativesInput.serializer,
        json,
      );
}

class GDelegationTypeEnum extends EnumClass {
  const GDelegationTypeEnum._(String name) : super(name);

  static const GDelegationTypeEnum LEGAL_REPRESENTATIVE =
      _$gDelegationTypeEnumLEGAL_REPRESENTATIVE;

  static const GDelegationTypeEnum HEALTH_CARE =
      _$gDelegationTypeEnumHEALTH_CARE;

  static const GDelegationTypeEnum AIDANT_AIDE =
      _$gDelegationTypeEnumAIDANT_AIDE;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDelegationTypeEnum gUnknownEnumValue =
      _$gDelegationTypeEnumgUnknownEnumValue;

  static Serializer<GDelegationTypeEnum> get serializer =>
      _$gDelegationTypeEnumSerializer;

  static BuiltSet<GDelegationTypeEnum> get values =>
      _$gDelegationTypeEnumValues;

  static GDelegationTypeEnum valueOf(String name) =>
      _$gDelegationTypeEnumValueOf(name);
}

abstract class GAccountGetAccountFamilyInput
    implements
        Built<GAccountGetAccountFamilyInput,
            GAccountGetAccountFamilyInputBuilder> {
  GAccountGetAccountFamilyInput._();

  factory GAccountGetAccountFamilyInput(
          [void Function(GAccountGetAccountFamilyInputBuilder b) updates]) =
      _$GAccountGetAccountFamilyInput;

  String get patientId;
  BuiltList<int>? get profilsListIndex;
  static Serializer<GAccountGetAccountFamilyInput> get serializer =>
      _$gAccountGetAccountFamilyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAccountGetAccountFamilyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAccountGetAccountFamilyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAccountGetAccountFamilyInput.serializer,
        json,
      );
}

abstract class GGetPendingInvitationInput
    implements
        Built<GGetPendingInvitationInput, GGetPendingInvitationInputBuilder> {
  GGetPendingInvitationInput._();

  factory GGetPendingInvitationInput(
          [void Function(GGetPendingInvitationInputBuilder b) updates]) =
      _$GGetPendingInvitationInput;

  String get idEnsOD;
  GDelegationTypeEnum get type;
  static Serializer<GGetPendingInvitationInput> get serializer =>
      _$gGetPendingInvitationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetPendingInvitationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPendingInvitationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetPendingInvitationInput.serializer,
        json,
      );
}

abstract class GDownloadRematInProgressInput
    implements
        Built<GDownloadRematInProgressInput,
            GDownloadRematInProgressInputBuilder> {
  GDownloadRematInProgressInput._();

  factory GDownloadRematInProgressInput(
          [void Function(GDownloadRematInProgressInputBuilder b) updates]) =
      _$GDownloadRematInProgressInput;

  String get patientId;
  String get loggedInUserId;
  static Serializer<GDownloadRematInProgressInput> get serializer =>
      _$gDownloadRematInProgressInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDownloadRematInProgressInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDownloadRematInProgressInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDownloadRematInProgressInput.serializer,
        json,
      );
}

abstract class GResearchPsInput
    implements Built<GResearchPsInput, GResearchPsInputBuilder> {
  GResearchPsInput._();

  factory GResearchPsInput([void Function(GResearchPsInputBuilder b) updates]) =
      _$GResearchPsInput;

  String? get lastName;
  String? get firstName;
  String? get cityCode;
  String? get zipCode;
  String? get departmentCode;
  String? get professionCode;
  String? get experticeCode;
  static Serializer<GResearchPsInput> get serializer =>
      _$gResearchPsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GResearchPsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResearchPsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GResearchPsInput.serializer,
        json,
      );
}

abstract class GGetCityInput
    implements Built<GGetCityInput, GGetCityInputBuilder> {
  GGetCityInput._();

  factory GGetCityInput([void Function(GGetCityInputBuilder b) updates]) =
      _$GGetCityInput;

  String? get cityName;
  String? get zipCode;
  String get matchingRule;
  static Serializer<GGetCityInput> get serializer => _$gGetCityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetCityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetCityInput.serializer,
        json,
      );
}

class GSectionToDownload extends EnumClass {
  const GSectionToDownload._(String name) : super(name);

  static const GSectionToDownload VACCINES = _$gSectionToDownloadVACCINES;

  static const GSectionToDownload ALLERGIES = _$gSectionToDownloadALLERGIES;

  static const GSectionToDownload DISEASES = _$gSectionToDownloadDISEASES;

  static const GSectionToDownload TREATMENTS = _$gSectionToDownloadTREATMENTS;

  static const GSectionToDownload MEASURES = _$gSectionToDownloadMEASURES;

  static const GSectionToDownload HOSPITALIZATIONS =
      _$gSectionToDownloadHOSPITALIZATIONS;

  static const GSectionToDownload FAMILY_HISTORY =
      _$gSectionToDownloadFAMILY_HISTORY;

  static const GSectionToDownload LIFESTYLES = _$gSectionToDownloadLIFESTYLES;

  static const GSectionToDownload ENTOURAGE_CONTACT =
      _$gSectionToDownloadENTOURAGE_CONTACT;

  static const GSectionToDownload WISHES = _$gSectionToDownloadWISHES;

  static const GSectionToDownload HEALTH_PROFESSIONALS =
      _$gSectionToDownloadHEALTH_PROFESSIONALS;

  static const GSectionToDownload ADMINISTRATIVE_DOCUMENTS =
      _$gSectionToDownloadADMINISTRATIVE_DOCUMENTS;

  static const GSectionToDownload DISABILITIES =
      _$gSectionToDownloadDISABILITIES;

  static const GSectionToDownload BLOOD_GROUP = _$gSectionToDownloadBLOOD_GROUP;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GSectionToDownload gUnknownEnumValue =
      _$gSectionToDownloadgUnknownEnumValue;

  static Serializer<GSectionToDownload> get serializer =>
      _$gSectionToDownloadSerializer;

  static BuiltSet<GSectionToDownload> get values => _$gSectionToDownloadValues;

  static GSectionToDownload valueOf(String name) =>
      _$gSectionToDownloadValueOf(name);
}

abstract class GAdvanceDirectivesFormEndOfLifeInput
    implements
        Built<GAdvanceDirectivesFormEndOfLifeInput,
            GAdvanceDirectivesFormEndOfLifeInputBuilder> {
  GAdvanceDirectivesFormEndOfLifeInput._();

  factory GAdvanceDirectivesFormEndOfLifeInput(
      [void Function(GAdvanceDirectivesFormEndOfLifeInputBuilder b)
          updates]) = _$GAdvanceDirectivesFormEndOfLifeInput;

  String get contexte;
  String get maintientArtificiel;
  String get sedation;
  GActsAndTreatmentsInput get actesEtTraitementsEntrepris;
  GActsAndTreatmentsInput get actesEtTraitementsArretes;
  GActsAndTreatmentsInput get actesEtTraitementsSpecifiques;
  static Serializer<GAdvanceDirectivesFormEndOfLifeInput> get serializer =>
      _$gAdvanceDirectivesFormEndOfLifeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAdvanceDirectivesFormEndOfLifeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAdvanceDirectivesFormEndOfLifeInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAdvanceDirectivesFormEndOfLifeInput.serializer,
        json,
      );
}

abstract class GActsAndTreatmentsInput
    implements Built<GActsAndTreatmentsInput, GActsAndTreatmentsInputBuilder> {
  GActsAndTreatmentsInput._();

  factory GActsAndTreatmentsInput(
          [void Function(GActsAndTreatmentsInputBuilder b) updates]) =
      _$GActsAndTreatmentsInput;

  String? get reanimationCardiaque;
  String? get branchement;
  String? get interventionChirurgicale;
  String? get autres;
  static Serializer<GActsAndTreatmentsInput> get serializer =>
      _$gActsAndTreatmentsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GActsAndTreatmentsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActsAndTreatmentsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GActsAndTreatmentsInput.serializer,
        json,
      );
}

abstract class GAdvanceDirectivesFormGoodHealthInput
    implements
        Built<GAdvanceDirectivesFormGoodHealthInput,
            GAdvanceDirectivesFormGoodHealthInputBuilder> {
  GAdvanceDirectivesFormGoodHealthInput._();

  factory GAdvanceDirectivesFormGoodHealthInput(
      [void Function(GAdvanceDirectivesFormGoodHealthInputBuilder b)
          updates]) = _$GAdvanceDirectivesFormGoodHealthInput;

  String get contexte;
  String get maintientArtificiel;
  String get sedation;
  String get actesEtTraitements;
  static Serializer<GAdvanceDirectivesFormGoodHealthInput> get serializer =>
      _$gAdvanceDirectivesFormGoodHealthInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAdvanceDirectivesFormGoodHealthInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAdvanceDirectivesFormGoodHealthInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAdvanceDirectivesFormGoodHealthInput.serializer,
        json,
      );
}

abstract class GEpisodeInputWithCount
    implements Built<GEpisodeInputWithCount, GEpisodeInputWithCountBuilder> {
  GEpisodeInputWithCount._();

  factory GEpisodeInputWithCount(
          [void Function(GEpisodeInputWithCountBuilder b) updates]) =
      _$GEpisodeInputWithCount;

  String get patientId;
  GEpisodeCategory? get category;
  double? get count;
  static Serializer<GEpisodeInputWithCount> get serializer =>
      _$gEpisodeInputWithCountSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEpisodeInputWithCount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEpisodeInputWithCount? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEpisodeInputWithCount.serializer,
        json,
      );
}

abstract class GEpisodeInput
    implements Built<GEpisodeInput, GEpisodeInputBuilder> {
  GEpisodeInput._();

  factory GEpisodeInput([void Function(GEpisodeInputBuilder b) updates]) =
      _$GEpisodeInput;

  String get patientId;
  GEpisodeCategory? get category;
  static Serializer<GEpisodeInput> get serializer => _$gEpisodeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEpisodeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEpisodeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEpisodeInput.serializer,
        json,
      );
}

abstract class GEpisodeInputWithPagination
    implements
        Built<GEpisodeInputWithPagination, GEpisodeInputWithPaginationBuilder> {
  GEpisodeInputWithPagination._();

  factory GEpisodeInputWithPagination(
          [void Function(GEpisodeInputWithPaginationBuilder b) updates]) =
      _$GEpisodeInputWithPagination;

  String get patientId;
  GEpisodeCategory? get category;
  double? get currentPage;
  double? get episodesPerPage;
  static Serializer<GEpisodeInputWithPagination> get serializer =>
      _$gEpisodeInputWithPaginationSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEpisodeInputWithPagination.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEpisodeInputWithPagination? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEpisodeInputWithPagination.serializer,
        json,
      );
}

abstract class GMessagingPageableInput
    implements Built<GMessagingPageableInput, GMessagingPageableInputBuilder> {
  GMessagingPageableInput._();

  factory GMessagingPageableInput(
          [void Function(GMessagingPageableInputBuilder b) updates]) =
      _$GMessagingPageableInput;

  GPageableInput get pageable;
  String get patientId;
  GFiltersInput? get filters;
  static Serializer<GMessagingPageableInput> get serializer =>
      _$gMessagingPageableInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMessagingPageableInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessagingPageableInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMessagingPageableInput.serializer,
        json,
      );
}

abstract class GPageableInput
    implements Built<GPageableInput, GPageableInputBuilder> {
  GPageableInput._();

  factory GPageableInput([void Function(GPageableInputBuilder b) updates]) =
      _$GPageableInput;

  int? get itemsPerPage;
  int? get page;
  static Serializer<GPageableInput> get serializer =>
      _$gPageableInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPageableInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageableInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPageableInput.serializer,
        json,
      );
}

abstract class GFiltersInput
    implements Built<GFiltersInput, GFiltersInputBuilder> {
  GFiltersInput._();

  factory GFiltersInput([void Function(GFiltersInputBuilder b) updates]) =
      _$GFiltersInput;

  bool? get withNewMessage;
  static Serializer<GFiltersInput> get serializer => _$gFiltersInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFiltersInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFiltersInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFiltersInput.serializer,
        json,
      );
}

abstract class GMessageInput
    implements Built<GMessageInput, GMessageInputBuilder> {
  GMessageInput._();

  factory GMessageInput([void Function(GMessageInputBuilder b) updates]) =
      _$GMessageInput;

  String get patientId;
  String get messageId;
  static Serializer<GMessageInput> get serializer => _$gMessageInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMessageInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMessageInput.serializer,
        json,
      );
}

abstract class GMessagingInput
    implements Built<GMessagingInput, GMessagingInputBuilder> {
  GMessagingInput._();

  factory GMessagingInput([void Function(GMessagingInputBuilder b) updates]) =
      _$GMessagingInput;

  String get patientId;
  String get conversationId;
  static Serializer<GMessagingInput> get serializer =>
      _$gMessagingInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMessagingInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessagingInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMessagingInput.serializer,
        json,
      );
}

abstract class GHealthProfessionalEmailsInput
    implements
        Built<GHealthProfessionalEmailsInput,
            GHealthProfessionalEmailsInputBuilder> {
  GHealthProfessionalEmailsInput._();

  factory GHealthProfessionalEmailsInput(
          [void Function(GHealthProfessionalEmailsInputBuilder b) updates]) =
      _$GHealthProfessionalEmailsInput;

  BuiltList<String>? get emails;
  static Serializer<GHealthProfessionalEmailsInput> get serializer =>
      _$gHealthProfessionalEmailsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHealthProfessionalEmailsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHealthProfessionalEmailsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHealthProfessionalEmailsInput.serializer,
        json,
      );
}

abstract class GContactDetailsInput
    implements Built<GContactDetailsInput, GContactDetailsInputBuilder> {
  GContactDetailsInput._();

  factory GContactDetailsInput(
          [void Function(GContactDetailsInputBuilder b) updates]) =
      _$GContactDetailsInput;

  String get name;
  String get type;
  String get idNat;
  String get typeBal;
  static Serializer<GContactDetailsInput> get serializer =>
      _$gContactDetailsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactDetailsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactDetailsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactDetailsInput.serializer,
        json,
      );
}

class GTypeDemande extends EnumClass {
  const GTypeDemande._(String name) : super(name);

  static const GTypeDemande SIGNALEMENT_DOC = _$gTypeDemandeSIGNALEMENT_DOC;

  static const GTypeDemande SIGNALEMENT_SNR = _$gTypeDemandeSIGNALEMENT_SNR;

  static const GTypeDemande SIGNALEMENT_PS = _$gTypeDemandeSIGNALEMENT_PS;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GTypeDemande gUnknownEnumValue = _$gTypeDemandegUnknownEnumValue;

  static Serializer<GTypeDemande> get serializer => _$gTypeDemandeSerializer;

  static BuiltSet<GTypeDemande> get values => _$gTypeDemandeValues;

  static GTypeDemande valueOf(String name) => _$gTypeDemandeValueOf(name);
}

abstract class GMeasureGrowthMetricsParams
    implements
        Built<GMeasureGrowthMetricsParams, GMeasureGrowthMetricsParamsBuilder> {
  GMeasureGrowthMetricsParams._();

  factory GMeasureGrowthMetricsParams(
          [void Function(GMeasureGrowthMetricsParamsBuilder b) updates]) =
      _$GMeasureGrowthMetricsParams;

  GMeasureCode get code;
  GMeasureGender get gender;
  String get birthdate;
  BuiltList<GMeasureCategory>? get categories;
  String get startPeriod;
  String get endPeriod;
  bool? get isReducedDataForChart;
  static Serializer<GMeasureGrowthMetricsParams> get serializer =>
      _$gMeasureGrowthMetricsParamsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMeasureGrowthMetricsParams.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMeasureGrowthMetricsParams? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMeasureGrowthMetricsParams.serializer,
        json,
      );
}

abstract class GMeasurePageableInput
    implements Built<GMeasurePageableInput, GMeasurePageableInputBuilder> {
  GMeasurePageableInput._();

  factory GMeasurePageableInput(
          [void Function(GMeasurePageableInputBuilder b) updates]) =
      _$GMeasurePageableInput;

  GPageableInput get pageable;
  GMeasureCode get code;
  String get patientId;
  String? get startPeriod;
  String? get endPeriod;
  static Serializer<GMeasurePageableInput> get serializer =>
      _$gMeasurePageableInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMeasurePageableInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMeasurePageableInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMeasurePageableInput.serializer,
        json,
      );
}

abstract class GHealthProfessionalTraceInput
    implements
        Built<GHealthProfessionalTraceInput,
            GHealthProfessionalTraceInputBuilder> {
  GHealthProfessionalTraceInput._();

  factory GHealthProfessionalTraceInput(
          [void Function(GHealthProfessionalTraceInputBuilder b) updates]) =
      _$GHealthProfessionalTraceInput;

  String get patientId;
  String get rppsId;
  static Serializer<GHealthProfessionalTraceInput> get serializer =>
      _$gHealthProfessionalTraceInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHealthProfessionalTraceInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHealthProfessionalTraceInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHealthProfessionalTraceInput.serializer,
        json,
      );
}

class GSectionUriEnum extends EnumClass {
  const GSectionUriEnum._(String name) : super(name);

  static const GSectionUriEnum ALLERGIES = _$gSectionUriEnumALLERGIES;

  static const GSectionUriEnum TREATMENTS = _$gSectionUriEnumTREATMENTS;

  static const GSectionUriEnum FAMILY_HISTORIES =
      _$gSectionUriEnumFAMILY_HISTORIES;

  static const GSectionUriEnum HOSPITALIZATIONS =
      _$gSectionUriEnumHOSPITALIZATIONS;

  static const GSectionUriEnum DISEASES = _$gSectionUriEnumDISEASES;

  static const GSectionUriEnum DISABILITIES = _$gSectionUriEnumDISABILITIES;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GSectionUriEnum gUnknownEnumValue =
      _$gSectionUriEnumgUnknownEnumValue;

  static Serializer<GSectionUriEnum> get serializer =>
      _$gSectionUriEnumSerializer;

  static BuiltSet<GSectionUriEnum> get values => _$gSectionUriEnumValues;

  static GSectionUriEnum valueOf(String name) => _$gSectionUriEnumValueOf(name);
}

abstract class GSearchStructureInputModel
    implements
        Built<GSearchStructureInputModel, GSearchStructureInputModelBuilder> {
  GSearchStructureInputModel._();

  factory GSearchStructureInputModel(
          [void Function(GSearchStructureInputModelBuilder b) updates]) =
      _$GSearchStructureInputModel;

  String? get type;
  String? get name;
  String? get codeCommune;
  String? get codeDepartement;
  String? get codePostal;
  static Serializer<GSearchStructureInputModel> get serializer =>
      _$gSearchStructureInputModelSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchStructureInputModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchStructureInputModel? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchStructureInputModel.serializer,
        json,
      );
}

class GTypeSuggestion extends EnumClass {
  const GTypeSuggestion._(String name) : super(name);

  static const GTypeSuggestion PHARMACIE = _$gTypeSuggestionPHARMACIE;

  static const GTypeSuggestion AS = _$gTypeSuggestionAS;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GTypeSuggestion gUnknownEnumValue =
      _$gTypeSuggestiongUnknownEnumValue;

  static Serializer<GTypeSuggestion> get serializer =>
      _$gTypeSuggestionSerializer;

  static BuiltSet<GTypeSuggestion> get values => _$gTypeSuggestionValues;

  static GTypeSuggestion valueOf(String name) => _$gTypeSuggestionValueOf(name);
}

abstract class GFileGetInput
    implements Built<GFileGetInput, GFileGetInputBuilder> {
  GFileGetInput._();

  factory GFileGetInput([void Function(GFileGetInputBuilder b) updates]) =
      _$GFileGetInput;

  String get patientId;
  String get fileId;
  static Serializer<GFileGetInput> get serializer => _$gFileGetInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFileGetInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFileGetInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFileGetInput.serializer,
        json,
      );
}

abstract class GDelegationInvitationFilter
    implements
        Built<GDelegationInvitationFilter, GDelegationInvitationFilterBuilder> {
  GDelegationInvitationFilter._();

  factory GDelegationInvitationFilter(
          [void Function(GDelegationInvitationFilterBuilder b) updates]) =
      _$GDelegationInvitationFilter;

  GDelegationInvitationStatus? get status;
  GDelegationType? get type;
  GDelegationDirection? get direction;
  static Serializer<GDelegationInvitationFilter> get serializer =>
      _$gDelegationInvitationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationInvitationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationInvitationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationInvitationFilter.serializer,
        json,
      );
}

abstract class GDelegationFilter
    implements Built<GDelegationFilter, GDelegationFilterBuilder> {
  GDelegationFilter._();

  factory GDelegationFilter(
          [void Function(GDelegationFilterBuilder b) updates]) =
      _$GDelegationFilter;

  bool? get onlyActive;
  bool? get withDetails;
  GDelegationType? get type;
  GDelegationDirection? get direction;
  static Serializer<GDelegationFilter> get serializer =>
      _$gDelegationFilterSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationFilter.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationFilter? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationFilter.serializer,
        json,
      );
}

class GActivityTraceGroup extends EnumClass {
  const GActivityTraceGroup._(String name) : super(name);

  static const GActivityTraceGroup GENERAL = _$gActivityTraceGroupGENERAL;

  static const GActivityTraceGroup SERVICE_TIERS =
      _$gActivityTraceGroupSERVICE_TIERS;

  static const GActivityTraceGroup MEDICAL_DOCUMENT =
      _$gActivityTraceGroupMEDICAL_DOCUMENT;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GActivityTraceGroup gUnknownEnumValue =
      _$gActivityTraceGroupgUnknownEnumValue;

  static Serializer<GActivityTraceGroup> get serializer =>
      _$gActivityTraceGroupSerializer;

  static BuiltSet<GActivityTraceGroup> get values =>
      _$gActivityTraceGroupValues;

  static GActivityTraceGroup valueOf(String name) =>
      _$gActivityTraceGroupValueOf(name);
}

class GActivityTraceSort extends EnumClass {
  const GActivityTraceSort._(String name) : super(name);

  static const GActivityTraceSort ACTION_DATE_ASC =
      _$gActivityTraceSortACTION_DATE_ASC;

  static const GActivityTraceSort ACTION_DATE_DESC =
      _$gActivityTraceSortACTION_DATE_DESC;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GActivityTraceSort gUnknownEnumValue =
      _$gActivityTraceSortgUnknownEnumValue;

  static Serializer<GActivityTraceSort> get serializer =>
      _$gActivityTraceSortSerializer;

  static BuiltSet<GActivityTraceSort> get values => _$gActivityTraceSortValues;

  static GActivityTraceSort valueOf(String name) =>
      _$gActivityTraceSortValueOf(name);
}

abstract class GActivityTraceFilterInput
    implements
        Built<GActivityTraceFilterInput, GActivityTraceFilterInputBuilder> {
  GActivityTraceFilterInput._();

  factory GActivityTraceFilterInput(
          [void Function(GActivityTraceFilterInputBuilder b) updates]) =
      _$GActivityTraceFilterInput;

  String? get startDate;
  String? get endDate;
  static Serializer<GActivityTraceFilterInput> get serializer =>
      _$gActivityTraceFilterInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GActivityTraceFilterInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityTraceFilterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GActivityTraceFilterInput.serializer,
        json,
      );
}

abstract class GSendOtpUpdateContactInput
    implements
        Built<GSendOtpUpdateContactInput, GSendOtpUpdateContactInputBuilder> {
  GSendOtpUpdateContactInput._();

  factory GSendOtpUpdateContactInput(
          [void Function(GSendOtpUpdateContactInputBuilder b) updates]) =
      _$GSendOtpUpdateContactInput;

  GCanalType get canalType;
  String get canalValue;
  static Serializer<GSendOtpUpdateContactInput> get serializer =>
      _$gSendOtpUpdateContactInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSendOtpUpdateContactInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendOtpUpdateContactInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSendOtpUpdateContactInput.serializer,
        json,
      );
}

abstract class GVerifyOtpUpdateContactInput
    implements
        Built<GVerifyOtpUpdateContactInput,
            GVerifyOtpUpdateContactInputBuilder> {
  GVerifyOtpUpdateContactInput._();

  factory GVerifyOtpUpdateContactInput(
          [void Function(GVerifyOtpUpdateContactInputBuilder b) updates]) =
      _$GVerifyOtpUpdateContactInput;

  GCanalType get canalType;
  String get otpCode;
  static Serializer<GVerifyOtpUpdateContactInput> get serializer =>
      _$gVerifyOtpUpdateContactInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVerifyOtpUpdateContactInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyOtpUpdateContactInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVerifyOtpUpdateContactInput.serializer,
        json,
      );
}

abstract class GGenerateNewEnrolmentCodeInput
    implements
        Built<GGenerateNewEnrolmentCodeInput,
            GGenerateNewEnrolmentCodeInputBuilder> {
  GGenerateNewEnrolmentCodeInput._();

  factory GGenerateNewEnrolmentCodeInput(
          [void Function(GGenerateNewEnrolmentCodeInputBuilder b) updates]) =
      _$GGenerateNewEnrolmentCodeInput;

  String get nir;
  String get vitalCardNumber;
  String get dateOfBirth;
  String? get nirFutureUser;
  static Serializer<GGenerateNewEnrolmentCodeInput> get serializer =>
      _$gGenerateNewEnrolmentCodeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGenerateNewEnrolmentCodeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenerateNewEnrolmentCodeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGenerateNewEnrolmentCodeInput.serializer,
        json,
      );
}

abstract class GSendNewEnrolmentCodeInput
    implements
        Built<GSendNewEnrolmentCodeInput, GSendNewEnrolmentCodeInputBuilder> {
  GSendNewEnrolmentCodeInput._();

  factory GSendNewEnrolmentCodeInput(
          [void Function(GSendNewEnrolmentCodeInputBuilder b) updates]) =
      _$GSendNewEnrolmentCodeInput;

  GCanalType get canalType;
  static Serializer<GSendNewEnrolmentCodeInput> get serializer =>
      _$gSendNewEnrolmentCodeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSendNewEnrolmentCodeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendNewEnrolmentCodeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSendNewEnrolmentCodeInput.serializer,
        json,
      );
}

abstract class GVitalCardAuthenticationInput
    implements
        Built<GVitalCardAuthenticationInput,
            GVitalCardAuthenticationInputBuilder> {
  GVitalCardAuthenticationInput._();

  factory GVitalCardAuthenticationInput(
          [void Function(GVitalCardAuthenticationInputBuilder b) updates]) =
      _$GVitalCardAuthenticationInput;

  String? get nir;
  String? get vitalCardNumber;
  String get enrolmentCode;
  static Serializer<GVitalCardAuthenticationInput> get serializer =>
      _$gVitalCardAuthenticationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVitalCardAuthenticationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVitalCardAuthenticationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVitalCardAuthenticationInput.serializer,
        json,
      );
}

abstract class GCreateAccountEnsInput
    implements Built<GCreateAccountEnsInput, GCreateAccountEnsInputBuilder> {
  GCreateAccountEnsInput._();

  factory GCreateAccountEnsInput(
          [void Function(GCreateAccountEnsInputBuilder b) updates]) =
      _$GCreateAccountEnsInput;

  String get password;
  String get loginId;
  static Serializer<GCreateAccountEnsInput> get serializer =>
      _$gCreateAccountEnsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateAccountEnsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAccountEnsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateAccountEnsInput.serializer,
        json,
      );
}

abstract class GFinalitiesConsentsToUpdateInput
    implements
        Built<GFinalitiesConsentsToUpdateInput,
            GFinalitiesConsentsToUpdateInputBuilder> {
  GFinalitiesConsentsToUpdateInput._();

  factory GFinalitiesConsentsToUpdateInput(
          [void Function(GFinalitiesConsentsToUpdateInputBuilder b) updates]) =
      _$GFinalitiesConsentsToUpdateInput;

  String get pairingId;
  BuiltList<GFinalityInput> get finalities;
  static Serializer<GFinalitiesConsentsToUpdateInput> get serializer =>
      _$gFinalitiesConsentsToUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinalitiesConsentsToUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinalitiesConsentsToUpdateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinalitiesConsentsToUpdateInput.serializer,
        json,
      );
}

abstract class GFinalityInput
    implements Built<GFinalityInput, GFinalityInputBuilder> {
  GFinalityInput._();

  factory GFinalityInput([void Function(GFinalityInputBuilder b) updates]) =
      _$GFinalityInput;

  double get id;
  String get libelle;
  String get description;
  String get codeFinalite;
  bool? get consenti;
  static Serializer<GFinalityInput> get serializer =>
      _$gFinalityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinalityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinalityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinalityInput.serializer,
        json,
      );
}

abstract class GChangeFinalityConsentByServiceOidInput
    implements
        Built<GChangeFinalityConsentByServiceOidInput,
            GChangeFinalityConsentByServiceOidInputBuilder> {
  GChangeFinalityConsentByServiceOidInput._();

  factory GChangeFinalityConsentByServiceOidInput(
      [void Function(GChangeFinalityConsentByServiceOidInputBuilder b)
          updates]) = _$GChangeFinalityConsentByServiceOidInput;

  String get oid;
  String get contexte;
  static Serializer<GChangeFinalityConsentByServiceOidInput> get serializer =>
      _$gChangeFinalityConsentByServiceOidInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangeFinalityConsentByServiceOidInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeFinalityConsentByServiceOidInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GChangeFinalityConsentByServiceOidInput.serializer,
        json,
      );
}

abstract class GChangePasswordInput
    implements Built<GChangePasswordInput, GChangePasswordInputBuilder> {
  GChangePasswordInput._();

  factory GChangePasswordInput(
          [void Function(GChangePasswordInputBuilder b) updates]) =
      _$GChangePasswordInput;

  String get patientId;
  String get currentPassword;
  String get newPassword;
  static Serializer<GChangePasswordInput> get serializer =>
      _$gChangePasswordInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangePasswordInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePasswordInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GChangePasswordInput.serializer,
        json,
      );
}

abstract class GChangeContactInput
    implements Built<GChangeContactInput, GChangeContactInputBuilder> {
  GChangeContactInput._();

  factory GChangeContactInput(
          [void Function(GChangeContactInputBuilder b) updates]) =
      _$GChangeContactInput;

  String get patientId;
  String get value;
  GChangeContactInputCanalType get type;
  static Serializer<GChangeContactInput> get serializer =>
      _$gChangeContactInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangeContactInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangeContactInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GChangeContactInput.serializer,
        json,
      );
}

class GChangeContactInputCanalType extends EnumClass {
  const GChangeContactInputCanalType._(String name) : super(name);

  static const GChangeContactInputCanalType PHONE =
      _$gChangeContactInputCanalTypePHONE;

  static const GChangeContactInputCanalType MAIL =
      _$gChangeContactInputCanalTypeMAIL;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GChangeContactInputCanalType gUnknownEnumValue =
      _$gChangeContactInputCanalTypegUnknownEnumValue;

  static Serializer<GChangeContactInputCanalType> get serializer =>
      _$gChangeContactInputCanalTypeSerializer;

  static BuiltSet<GChangeContactInputCanalType> get values =>
      _$gChangeContactInputCanalTypeValues;

  static GChangeContactInputCanalType valueOf(String name) =>
      _$gChangeContactInputCanalTypeValueOf(name);
}

abstract class GValidateOtpInput
    implements Built<GValidateOtpInput, GValidateOtpInputBuilder> {
  GValidateOtpInput._();

  factory GValidateOtpInput(
          [void Function(GValidateOtpInputBuilder b) updates]) =
      _$GValidateOtpInput;

  String get patientId;
  String get code;
  String get type;
  String get value;
  static Serializer<GValidateOtpInput> get serializer =>
      _$gValidateOtpInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GValidateOtpInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GValidateOtpInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GValidateOtpInput.serializer,
        json,
      );
}

abstract class GChangePreferenceNotificationInput
    implements
        Built<GChangePreferenceNotificationInput,
            GChangePreferenceNotificationInputBuilder> {
  GChangePreferenceNotificationInput._();

  factory GChangePreferenceNotificationInput(
      [void Function(GChangePreferenceNotificationInputBuilder b)
          updates]) = _$GChangePreferenceNotificationInput;

  String get patientId;
  GPreferenceNotificationEnum get typeNotification;
  bool get isActive;
  static Serializer<GChangePreferenceNotificationInput> get serializer =>
      _$gChangePreferenceNotificationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GChangePreferenceNotificationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GChangePreferenceNotificationInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GChangePreferenceNotificationInput.serializer,
        json,
      );
}

abstract class GInvitationSecondRLInput
    implements
        Built<GInvitationSecondRLInput, GInvitationSecondRLInputBuilder> {
  GInvitationSecondRLInput._();

  factory GInvitationSecondRLInput(
          [void Function(GInvitationSecondRLInputBuilder b) updates]) =
      _$GInvitationSecondRLInput;

  String get loggedInUserId;
  String get selectedEnsProfileId;
  GSecondRLInformationInput get newRepresentativeLegal;
  static Serializer<GInvitationSecondRLInput> get serializer =>
      _$gInvitationSecondRLInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GInvitationSecondRLInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInvitationSecondRLInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GInvitationSecondRLInput.serializer,
        json,
      );
}

abstract class GSecondRLInformationInput
    implements
        Built<GSecondRLInformationInput, GSecondRLInformationInputBuilder> {
  GSecondRLInformationInput._();

  factory GSecondRLInformationInput(
          [void Function(GSecondRLInformationInputBuilder b) updates]) =
      _$GSecondRLInformationInput;

  String get nir;
  String get lastName;
  String get firstName;
  String get birthDate;
  static Serializer<GSecondRLInformationInput> get serializer =>
      _$gSecondRLInformationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSecondRLInformationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSecondRLInformationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSecondRLInformationInput.serializer,
        json,
      );
}

abstract class GAccountActiveProfilsInput
    implements
        Built<GAccountActiveProfilsInput, GAccountActiveProfilsInputBuilder> {
  GAccountActiveProfilsInput._();

  factory GAccountActiveProfilsInput(
          [void Function(GAccountActiveProfilsInputBuilder b) updates]) =
      _$GAccountActiveProfilsInput;

  BuiltList<int> get profilsListIndex;
  static Serializer<GAccountActiveProfilsInput> get serializer =>
      _$gAccountActiveProfilsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAccountActiveProfilsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAccountActiveProfilsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAccountActiveProfilsInput.serializer,
        json,
      );
}

abstract class GAccessValidatedOrRejectedInput
    implements
        Built<GAccessValidatedOrRejectedInput,
            GAccessValidatedOrRejectedInputBuilder> {
  GAccessValidatedOrRejectedInput._();

  factory GAccessValidatedOrRejectedInput(
          [void Function(GAccessValidatedOrRejectedInputBuilder b) updates]) =
      _$GAccessValidatedOrRejectedInput;

  String get idEnsOD;
  String get idEnsAD;
  GDemandeAccesStatutEnum get type;
  String get birthDate;
  String get firstNameAD;
  String get lastNameAD;
  static Serializer<GAccessValidatedOrRejectedInput> get serializer =>
      _$gAccessValidatedOrRejectedInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAccessValidatedOrRejectedInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAccessValidatedOrRejectedInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAccessValidatedOrRejectedInput.serializer,
        json,
      );
}

abstract class GAskDeletePersonalDataInput
    implements
        Built<GAskDeletePersonalDataInput, GAskDeletePersonalDataInputBuilder> {
  GAskDeletePersonalDataInput._();

  factory GAskDeletePersonalDataInput(
          [void Function(GAskDeletePersonalDataInputBuilder b) updates]) =
      _$GAskDeletePersonalDataInput;

  String get ensIdConcerne;
  static Serializer<GAskDeletePersonalDataInput> get serializer =>
      _$gAskDeletePersonalDataInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAskDeletePersonalDataInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAskDeletePersonalDataInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAskDeletePersonalDataInput.serializer,
        json,
      );
}

abstract class GAppointmentToCreateInput
    implements
        Built<GAppointmentToCreateInput, GAppointmentToCreateInputBuilder> {
  GAppointmentToCreateInput._();

  factory GAppointmentToCreateInput(
          [void Function(GAppointmentToCreateInputBuilder b) updates]) =
      _$GAppointmentToCreateInput;

  String get patientId;
  String? get name;
  GAppointmentType get type;
  String get professionalOrEstablishmentName;
  String get date;
  String? get comment;
  String? get speciality;
  String? get address;
  String? get status;
  String? get idProfessionnelSante;
  String? get idEtablissementSante;
  static Serializer<GAppointmentToCreateInput> get serializer =>
      _$gAppointmentToCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppointmentToCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppointmentToCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppointmentToCreateInput.serializer,
        json,
      );
}

abstract class GAppointmentToUpdateInput
    implements
        Built<GAppointmentToUpdateInput, GAppointmentToUpdateInputBuilder> {
  GAppointmentToUpdateInput._();

  factory GAppointmentToUpdateInput(
          [void Function(GAppointmentToUpdateInputBuilder b) updates]) =
      _$GAppointmentToUpdateInput;

  String get patientId;
  String? get name;
  GAppointmentType get type;
  String get professionalOrEstablishmentName;
  String get date;
  String? get comment;
  String? get speciality;
  String? get address;
  String? get status;
  String? get idProfessionnelSante;
  String? get idEtablissementSante;
  String get id;
  static Serializer<GAppointmentToUpdateInput> get serializer =>
      _$gAppointmentToUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAppointmentToUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppointmentToUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAppointmentToUpdateInput.serializer,
        json,
      );
}

abstract class GReminderToCreateInput
    implements Built<GReminderToCreateInput, GReminderToCreateInputBuilder> {
  GReminderToCreateInput._();

  factory GReminderToCreateInput(
          [void Function(GReminderToCreateInputBuilder b) updates]) =
      _$GReminderToCreateInput;

  String get patientId;
  String get title;
  String get date;
  String get comment;
  static Serializer<GReminderToCreateInput> get serializer =>
      _$gReminderToCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReminderToCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReminderToCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReminderToCreateInput.serializer,
        json,
      );
}

abstract class GReminderToUpdateInput
    implements Built<GReminderToUpdateInput, GReminderToUpdateInputBuilder> {
  GReminderToUpdateInput._();

  factory GReminderToUpdateInput(
          [void Function(GReminderToUpdateInputBuilder b) updates]) =
      _$GReminderToUpdateInput;

  String get id;
  String get patientId;
  String get title;
  String get date;
  String get comment;
  static Serializer<GReminderToUpdateInput> get serializer =>
      _$gReminderToUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReminderToUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReminderToUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReminderToUpdateInput.serializer,
        json,
      );
}

abstract class GUpdatePreventionStatusViewModel
    implements
        Built<GUpdatePreventionStatusViewModel,
            GUpdatePreventionStatusViewModelBuilder> {
  GUpdatePreventionStatusViewModel._();

  factory GUpdatePreventionStatusViewModel(
          [void Function(GUpdatePreventionStatusViewModelBuilder b) updates]) =
      _$GUpdatePreventionStatusViewModel;

  String get code;
  String get patientId;
  GPreventionTypeEnum get statut;
  String get dateDebutPrevention;
  String? get executionDate;
  GPreventionTypeEnum? get previousStatus;
  static Serializer<GUpdatePreventionStatusViewModel> get serializer =>
      _$gUpdatePreventionStatusViewModelSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdatePreventionStatusViewModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePreventionStatusViewModel? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdatePreventionStatusViewModel.serializer,
        json,
      );
}

abstract class GAllergyInput
    implements Built<GAllergyInput, GAllergyInputBuilder> {
  GAllergyInput._();

  factory GAllergyInput([void Function(GAllergyInputBuilder b) updates]) =
      _$GAllergyInput;

  String get patientId;
  String get name;
  String? get comment;
  BuiltList<String>? get linkedTreatmentsId;
  static Serializer<GAllergyInput> get serializer => _$gAllergyInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAllergyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllergyInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAllergyInput.serializer,
        json,
      );
}

abstract class GAllergyUpdateInput
    implements Built<GAllergyUpdateInput, GAllergyUpdateInputBuilder> {
  GAllergyUpdateInput._();

  factory GAllergyUpdateInput(
          [void Function(GAllergyUpdateInputBuilder b) updates]) =
      _$GAllergyUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  String get id;
  BuiltList<GLinkUpdateInput>? get linkedTreatmentUpdate;
  static Serializer<GAllergyUpdateInput> get serializer =>
      _$gAllergyUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAllergyUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllergyUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAllergyUpdateInput.serializer,
        json,
      );
}

abstract class GLinkIdInput
    implements Built<GLinkIdInput, GLinkIdInputBuilder> {
  GLinkIdInput._();

  factory GLinkIdInput([void Function(GLinkIdInputBuilder b) updates]) =
      _$GLinkIdInput;

  String get id;
  GLinkType get type;
  static Serializer<GLinkIdInput> get serializer => _$gLinkIdInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLinkIdInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLinkIdInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLinkIdInput.serializer,
        json,
      );
}

abstract class GDisabilityInput
    implements Built<GDisabilityInput, GDisabilityInputBuilder> {
  GDisabilityInput._();

  factory GDisabilityInput([void Function(GDisabilityInputBuilder b) updates]) =
      _$GDisabilityInput;

  String get patientId;
  String get name;
  String? get comment;
  BuiltList<GDisabilitiesTypesEnum> get types;
  GDisabilityRateEnum? get disabilityRate;
  String? get technicalHelp;
  GHumanHelpEnum get humanHelp;
  static Serializer<GDisabilityInput> get serializer =>
      _$gDisabilityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDisabilityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisabilityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDisabilityInput.serializer,
        json,
      );
}

abstract class GDisabilityUpdateInput
    implements Built<GDisabilityUpdateInput, GDisabilityUpdateInputBuilder> {
  GDisabilityUpdateInput._();

  factory GDisabilityUpdateInput(
          [void Function(GDisabilityUpdateInputBuilder b) updates]) =
      _$GDisabilityUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  BuiltList<GDisabilitiesTypesEnum> get types;
  GDisabilityRateEnum? get disabilityRate;
  String? get technicalHelp;
  GHumanHelpEnum get humanHelp;
  String get id;
  static Serializer<GDisabilityUpdateInput> get serializer =>
      _$gDisabilityUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDisabilityUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDisabilityUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDisabilityUpdateInput.serializer,
        json,
      );
}

abstract class GDiseaseInput
    implements Built<GDiseaseInput, GDiseaseInputBuilder> {
  GDiseaseInput._();

  factory GDiseaseInput([void Function(GDiseaseInputBuilder b) updates]) =
      _$GDiseaseInput;

  String get patientId;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  BuiltList<String>? get linkedDocumentsId;
  BuiltList<String>? get linkedTreatmentsId;
  static Serializer<GDiseaseInput> get serializer => _$gDiseaseInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDiseaseInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDiseaseInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDiseaseInput.serializer,
        json,
      );
}

abstract class GDiseaseUpdateInput
    implements Built<GDiseaseUpdateInput, GDiseaseUpdateInputBuilder> {
  GDiseaseUpdateInput._();

  factory GDiseaseUpdateInput(
          [void Function(GDiseaseUpdateInputBuilder b) updates]) =
      _$GDiseaseUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  String get id;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  BuiltList<GLinkUpdateInput>? get linkedTreatmentUpdate;
  BuiltList<GLinkUpdateInput>? get linkedDocumentUpdate;
  BuiltList<String>? get linkedDocumentsId;
  BuiltList<String>? get linkedTreatmentsId;
  static Serializer<GDiseaseUpdateInput> get serializer =>
      _$gDiseaseUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDiseaseUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDiseaseUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDiseaseUpdateInput.serializer,
        json,
      );
}

abstract class GLinkUpdateInput
    implements Built<GLinkUpdateInput, GLinkUpdateInputBuilder> {
  GLinkUpdateInput._();

  factory GLinkUpdateInput([void Function(GLinkUpdateInputBuilder b) updates]) =
      _$GLinkUpdateInput;

  String get linkId;
  GLinkIdInput get source;
  GLinkIdInput get target;
  static Serializer<GLinkUpdateInput> get serializer =>
      _$gLinkUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLinkUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLinkUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLinkUpdateInput.serializer,
        json,
      );
}

abstract class GDocumentInput
    implements Built<GDocumentInput, GDocumentInputBuilder> {
  GDocumentInput._();

  factory GDocumentInput([void Function(GDocumentInputBuilder b) updates]) =
      _$GDocumentInput;

  String get patientId;
  String get title;
  BuiltList<GConfidentiality>? get confidentialities;
  GCategory get category;
  String? get createdAt;
  String? get uploadedAt;
  String get attachment;
  String get mimeType;
  String get uploadedBy;
  String get author;
  String? get folderId;
  static Serializer<GDocumentInput> get serializer =>
      _$gDocumentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentInput.serializer,
        json,
      );
}

abstract class GDocumentUpdateInput
    implements Built<GDocumentUpdateInput, GDocumentUpdateInputBuilder> {
  GDocumentUpdateInput._();

  factory GDocumentUpdateInput(
          [void Function(GDocumentUpdateInputBuilder b) updates]) =
      _$GDocumentUpdateInput;

  String get id;
  String get patientId;
  String get title;
  BuiltList<GConfidentiality>? get confidentialities;
  GCategory get category;
  String get createdAt;
  String? get uploadedAt;
  String get attachment;
  String get mimeType;
  String get uploadedBy;
  String get author;
  static Serializer<GDocumentUpdateInput> get serializer =>
      _$gDocumentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentUpdateInput.serializer,
        json,
      );
}

abstract class GDocumentPropertiesUpdateInput
    implements
        Built<GDocumentPropertiesUpdateInput,
            GDocumentPropertiesUpdateInputBuilder> {
  GDocumentPropertiesUpdateInput._();

  factory GDocumentPropertiesUpdateInput(
          [void Function(GDocumentPropertiesUpdateInputBuilder b) updates]) =
      _$GDocumentPropertiesUpdateInput;

  String get id;
  String get patientId;
  String get title;
  GCategory get category;
  String get createdAt;
  String? get uploadedAt;
  BuiltList<GConfidentiality> get confidentialities;
  String? get folderId;
  static Serializer<GDocumentPropertiesUpdateInput> get serializer =>
      _$gDocumentPropertiesUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentPropertiesUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentPropertiesUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentPropertiesUpdateInput.serializer,
        json,
      );
}

abstract class GDocumentDeleteInput
    implements Built<GDocumentDeleteInput, GDocumentDeleteInputBuilder> {
  GDocumentDeleteInput._();

  factory GDocumentDeleteInput(
          [void Function(GDocumentDeleteInputBuilder b) updates]) =
      _$GDocumentDeleteInput;

  String get documentId;
  String get ensUserId;
  static Serializer<GDocumentDeleteInput> get serializer =>
      _$gDocumentDeleteInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentDeleteInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentDeleteInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentDeleteInput.serializer,
        json,
      );
}

abstract class GDocumentUpdateConfidentialityInput
    implements
        Built<GDocumentUpdateConfidentialityInput,
            GDocumentUpdateConfidentialityInputBuilder> {
  GDocumentUpdateConfidentialityInput._();

  factory GDocumentUpdateConfidentialityInput(
      [void Function(GDocumentUpdateConfidentialityInputBuilder b)
          updates]) = _$GDocumentUpdateConfidentialityInput;

  String get id;
  String get patientId;
  BuiltList<GConfidentiality>? get confidentialities;
  static Serializer<GDocumentUpdateConfidentialityInput> get serializer =>
      _$gDocumentUpdateConfidentialityInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentUpdateConfidentialityInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentUpdateConfidentialityInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentUpdateConfidentialityInput.serializer,
        json,
      );
}

abstract class GDocumentsDeletionInput
    implements Built<GDocumentsDeletionInput, GDocumentsDeletionInputBuilder> {
  GDocumentsDeletionInput._();

  factory GDocumentsDeletionInput(
          [void Function(GDocumentsDeletionInputBuilder b) updates]) =
      _$GDocumentsDeletionInput;

  String? get patientId;
  BuiltList<String> get documentsIds;
  static Serializer<GDocumentsDeletionInput> get serializer =>
      _$gDocumentsDeletionInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentsDeletionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentsDeletionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentsDeletionInput.serializer,
        json,
      );
}

abstract class GSingleDocumentMarkInput
    implements
        Built<GSingleDocumentMarkInput, GSingleDocumentMarkInputBuilder> {
  GSingleDocumentMarkInput._();

  factory GSingleDocumentMarkInput(
          [void Function(GSingleDocumentMarkInputBuilder b) updates]) =
      _$GSingleDocumentMarkInput;

  String? get patientId;
  GDocumentMarkInput get document;
  static Serializer<GSingleDocumentMarkInput> get serializer =>
      _$gSingleDocumentMarkInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSingleDocumentMarkInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSingleDocumentMarkInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSingleDocumentMarkInput.serializer,
        json,
      );
}

abstract class GDocumentMarkInput
    implements Built<GDocumentMarkInput, GDocumentMarkInputBuilder> {
  GDocumentMarkInput._();

  factory GDocumentMarkInput(
          [void Function(GDocumentMarkInputBuilder b) updates]) =
      _$GDocumentMarkInput;

  String get id;
  bool? get reported;
  bool? get pinned;
  static Serializer<GDocumentMarkInput> get serializer =>
      _$gDocumentMarkInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentMarkInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentMarkInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentMarkInput.serializer,
        json,
      );
}

abstract class GMultipleDocumentsMarkInput
    implements
        Built<GMultipleDocumentsMarkInput, GMultipleDocumentsMarkInputBuilder> {
  GMultipleDocumentsMarkInput._();

  factory GMultipleDocumentsMarkInput(
          [void Function(GMultipleDocumentsMarkInputBuilder b) updates]) =
      _$GMultipleDocumentsMarkInput;

  String? get patientId;
  BuiltList<GDocumentMarkInput> get documents;
  static Serializer<GMultipleDocumentsMarkInput> get serializer =>
      _$gMultipleDocumentsMarkInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMultipleDocumentsMarkInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMultipleDocumentsMarkInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMultipleDocumentsMarkInput.serializer,
        json,
      );
}

abstract class GSingleDocumentPatchInput
    implements
        Built<GSingleDocumentPatchInput, GSingleDocumentPatchInputBuilder> {
  GSingleDocumentPatchInput._();

  factory GSingleDocumentPatchInput(
          [void Function(GSingleDocumentPatchInputBuilder b) updates]) =
      _$GSingleDocumentPatchInput;

  String? get patientId;
  GDocumentPatchInput get document;
  static Serializer<GSingleDocumentPatchInput> get serializer =>
      _$gSingleDocumentPatchInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSingleDocumentPatchInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSingleDocumentPatchInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSingleDocumentPatchInput.serializer,
        json,
      );
}

abstract class GDocumentPatchInput
    implements Built<GDocumentPatchInput, GDocumentPatchInputBuilder> {
  GDocumentPatchInput._();

  factory GDocumentPatchInput(
          [void Function(GDocumentPatchInputBuilder b) updates]) =
      _$GDocumentPatchInput;

  String get id;
  bool? get reported;
  bool? get pinned;
  String? get folderId;
  static Serializer<GDocumentPatchInput> get serializer =>
      _$gDocumentPatchInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDocumentPatchInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDocumentPatchInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDocumentPatchInput.serializer,
        json,
      );
}

abstract class GMultipleDocumentsPatchInput
    implements
        Built<GMultipleDocumentsPatchInput,
            GMultipleDocumentsPatchInputBuilder> {
  GMultipleDocumentsPatchInput._();

  factory GMultipleDocumentsPatchInput(
          [void Function(GMultipleDocumentsPatchInputBuilder b) updates]) =
      _$GMultipleDocumentsPatchInput;

  String? get patientId;
  BuiltList<GDocumentPatchInput> get documents;
  static Serializer<GMultipleDocumentsPatchInput> get serializer =>
      _$gMultipleDocumentsPatchInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMultipleDocumentsPatchInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMultipleDocumentsPatchInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMultipleDocumentsPatchInput.serializer,
        json,
      );
}

abstract class GCreateFolderInputs
    implements Built<GCreateFolderInputs, GCreateFolderInputsBuilder> {
  GCreateFolderInputs._();

  factory GCreateFolderInputs(
          [void Function(GCreateFolderInputsBuilder b) updates]) =
      _$GCreateFolderInputs;

  String? get patientId;
  String get folderName;
  static Serializer<GCreateFolderInputs> get serializer =>
      _$gCreateFolderInputsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateFolderInputs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateFolderInputs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateFolderInputs.serializer,
        json,
      );
}

abstract class GDeleteFolderInputs
    implements Built<GDeleteFolderInputs, GDeleteFolderInputsBuilder> {
  GDeleteFolderInputs._();

  factory GDeleteFolderInputs(
          [void Function(GDeleteFolderInputsBuilder b) updates]) =
      _$GDeleteFolderInputs;

  String? get patientId;
  String get folderId;
  static Serializer<GDeleteFolderInputs> get serializer =>
      _$gDeleteFolderInputsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteFolderInputs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteFolderInputs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteFolderInputs.serializer,
        json,
      );
}

abstract class GRenameFolderInputs
    implements Built<GRenameFolderInputs, GRenameFolderInputsBuilder> {
  GRenameFolderInputs._();

  factory GRenameFolderInputs(
          [void Function(GRenameFolderInputsBuilder b) updates]) =
      _$GRenameFolderInputs;

  String? get patientId;
  String get folderId;
  String get folderName;
  static Serializer<GRenameFolderInputs> get serializer =>
      _$gRenameFolderInputsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GRenameFolderInputs.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRenameFolderInputs? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GRenameFolderInputs.serializer,
        json,
      );
}

abstract class GFamilyHistoryInput
    implements Built<GFamilyHistoryInput, GFamilyHistoryInputBuilder> {
  GFamilyHistoryInput._();

  factory GFamilyHistoryInput(
          [void Function(GFamilyHistoryInputBuilder b) updates]) =
      _$GFamilyHistoryInput;

  String get patientId;
  String get name;
  String? get comment;
  GFamilyRelationshipEnum get familyRelationship;
  static Serializer<GFamilyHistoryInput> get serializer =>
      _$gFamilyHistoryInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFamilyHistoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFamilyHistoryInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFamilyHistoryInput.serializer,
        json,
      );
}

abstract class GFamilyHistoryUpdateInput
    implements
        Built<GFamilyHistoryUpdateInput, GFamilyHistoryUpdateInputBuilder> {
  GFamilyHistoryUpdateInput._();

  factory GFamilyHistoryUpdateInput(
          [void Function(GFamilyHistoryUpdateInputBuilder b) updates]) =
      _$GFamilyHistoryUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  GFamilyRelationshipEnum get familyRelationship;
  String get id;
  static Serializer<GFamilyHistoryUpdateInput> get serializer =>
      _$gFamilyHistoryUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFamilyHistoryUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFamilyHistoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFamilyHistoryUpdateInput.serializer,
        json,
      );
}

abstract class GDeleteLinkInput
    implements Built<GDeleteLinkInput, GDeleteLinkInputBuilder> {
  GDeleteLinkInput._();

  factory GDeleteLinkInput([void Function(GDeleteLinkInputBuilder b) updates]) =
      _$GDeleteLinkInput;

  String get linkId;
  static Serializer<GDeleteLinkInput> get serializer =>
      _$gDeleteLinkInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteLinkInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteLinkInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteLinkInput.serializer,
        json,
      );
}

abstract class GDeleteDraftFromConversationInput
    implements
        Built<GDeleteDraftFromConversationInput,
            GDeleteDraftFromConversationInputBuilder> {
  GDeleteDraftFromConversationInput._();

  factory GDeleteDraftFromConversationInput(
          [void Function(GDeleteDraftFromConversationInputBuilder b) updates]) =
      _$GDeleteDraftFromConversationInput;

  String get patientId;
  String get conversationId;
  GFiltersInput? get filters;
  static Serializer<GDeleteDraftFromConversationInput> get serializer =>
      _$gDeleteDraftFromConversationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteDraftFromConversationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteDraftFromConversationInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteDraftFromConversationInput.serializer,
        json,
      );
}

abstract class GConversationTrashInput
    implements Built<GConversationTrashInput, GConversationTrashInputBuilder> {
  GConversationTrashInput._();

  factory GConversationTrashInput(
          [void Function(GConversationTrashInputBuilder b) updates]) =
      _$GConversationTrashInput;

  String get patientId;
  String get conversationId;
  static Serializer<GConversationTrashInput> get serializer =>
      _$gConversationTrashInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GConversationTrashInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GConversationTrashInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GConversationTrashInput.serializer,
        json,
      );
}

abstract class GAcknowledgeInput
    implements Built<GAcknowledgeInput, GAcknowledgeInputBuilder> {
  GAcknowledgeInput._();

  factory GAcknowledgeInput(
          [void Function(GAcknowledgeInputBuilder b) updates]) =
      _$GAcknowledgeInput;

  String get patientId;
  String get conversationId;
  static Serializer<GAcknowledgeInput> get serializer =>
      _$gAcknowledgeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAcknowledgeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAcknowledgeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAcknowledgeInput.serializer,
        json,
      );
}

abstract class GCreateContactWithControlInput
    implements
        Built<GCreateContactWithControlInput,
            GCreateContactWithControlInputBuilder> {
  GCreateContactWithControlInput._();

  factory GCreateContactWithControlInput(
          [void Function(GCreateContactWithControlInputBuilder b) updates]) =
      _$GCreateContactWithControlInput;

  String get patientId;
  String get email;
  String get fullName;
  String get idFineg;
  static Serializer<GCreateContactWithControlInput> get serializer =>
      _$gCreateContactWithControlInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateContactWithControlInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateContactWithControlInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateContactWithControlInput.serializer,
        json,
      );
}

abstract class GTicketToCreateInput
    implements Built<GTicketToCreateInput, GTicketToCreateInputBuilder> {
  GTicketToCreateInput._();

  factory GTicketToCreateInput(
          [void Function(GTicketToCreateInputBuilder b) updates]) =
      _$GTicketToCreateInput;

  String get patientId;
  String get reason;
  String get message;
  bool get hasConsent;
  String? get idDocument;
  BuiltList<GTicketDocumentInput>? get documents;
  static Serializer<GTicketToCreateInput> get serializer =>
      _$gTicketToCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTicketToCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTicketToCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTicketToCreateInput.serializer,
        json,
      );
}

abstract class GTicketDocumentInput
    implements Built<GTicketDocumentInput, GTicketDocumentInputBuilder> {
  GTicketDocumentInput._();

  factory GTicketDocumentInput(
          [void Function(GTicketDocumentInputBuilder b) updates]) =
      _$GTicketDocumentInput;

  String get name;
  String get data;
  String get typeMime;
  static Serializer<GTicketDocumentInput> get serializer =>
      _$gTicketDocumentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTicketDocumentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTicketDocumentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTicketDocumentInput.serializer,
        json,
      );
}

abstract class GReportRequestForm
    implements Built<GReportRequestForm, GReportRequestFormBuilder> {
  GReportRequestForm._();

  factory GReportRequestForm(
          [void Function(GReportRequestFormBuilder b) updates]) =
      _$GReportRequestForm;

  String get idEns;
  GTypeDemande get typeDemande;
  String get idSignale;
  String get description;
  String get nom;
  bool? get hasConsent;
  BuiltList<GReportDocumentModel> get documents;
  static Serializer<GReportRequestForm> get serializer =>
      _$gReportRequestFormSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportRequestForm.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReportRequestForm? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportRequestForm.serializer,
        json,
      );
}

abstract class GReportDocumentModel
    implements Built<GReportDocumentModel, GReportDocumentModelBuilder> {
  GReportDocumentModel._();

  factory GReportDocumentModel(
          [void Function(GReportDocumentModelBuilder b) updates]) =
      _$GReportDocumentModel;

  String get name;
  String get data;
  GDocumentMimeTypeEnum get typeMime;
  static Serializer<GReportDocumentModel> get serializer =>
      _$gReportDocumentModelSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GReportDocumentModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReportDocumentModel? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GReportDocumentModel.serializer,
        json,
      );
}

class GDocumentMimeTypeEnum extends EnumClass {
  const GDocumentMimeTypeEnum._(String name) : super(name);

  static const GDocumentMimeTypeEnum IMAGE_JPEG =
      _$gDocumentMimeTypeEnumIMAGE_JPEG;

  static const GDocumentMimeTypeEnum IMAGE_JPG =
      _$gDocumentMimeTypeEnumIMAGE_JPG;

  static const GDocumentMimeTypeEnum IMAGE_TIFF =
      _$gDocumentMimeTypeEnumIMAGE_TIFF;

  static const GDocumentMimeTypeEnum IMAGE_PNG =
      _$gDocumentMimeTypeEnumIMAGE_PNG;

  static const GDocumentMimeTypeEnum PDF = _$gDocumentMimeTypeEnumPDF;

  static const GDocumentMimeTypeEnum MSWORD = _$gDocumentMimeTypeEnumMSWORD;

  static const GDocumentMimeTypeEnum MSWORD_RTF =
      _$gDocumentMimeTypeEnumMSWORD_RTF;

  static const GDocumentMimeTypeEnum TEXT_PLAIN =
      _$gDocumentMimeTypeEnumTEXT_PLAIN;

  static const GDocumentMimeTypeEnum TEXT_RTF = _$gDocumentMimeTypeEnumTEXT_RTF;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GDocumentMimeTypeEnum gUnknownEnumValue =
      _$gDocumentMimeTypeEnumgUnknownEnumValue;

  static Serializer<GDocumentMimeTypeEnum> get serializer =>
      _$gDocumentMimeTypeEnumSerializer;

  static BuiltSet<GDocumentMimeTypeEnum> get values =>
      _$gDocumentMimeTypeEnumValues;

  static GDocumentMimeTypeEnum valueOf(String name) =>
      _$gDocumentMimeTypeEnumValueOf(name);
}

abstract class GLifestyleItemInput
    implements Built<GLifestyleItemInput, GLifestyleItemInputBuilder> {
  GLifestyleItemInput._();

  factory GLifestyleItemInput(
          [void Function(GLifestyleItemInputBuilder b) updates]) =
      _$GLifestyleItemInput;

  String get name;
  GLifestyleItemDetailInput get details;
  static Serializer<GLifestyleItemInput> get serializer =>
      _$gLifestyleItemInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLifestyleItemInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLifestyleItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLifestyleItemInput.serializer,
        json,
      );
}

abstract class GLifestyleItemDetailInput
    implements
        Built<GLifestyleItemDetailInput, GLifestyleItemDetailInputBuilder> {
  GLifestyleItemDetailInput._();

  factory GLifestyleItemDetailInput(
          [void Function(GLifestyleItemDetailInputBuilder b) updates]) =
      _$GLifestyleItemDetailInput;

  String get lastModificationDate;
  BuiltList<GLifestyleAnswerInput> get answers;
  static Serializer<GLifestyleItemDetailInput> get serializer =>
      _$gLifestyleItemDetailInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLifestyleItemDetailInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLifestyleItemDetailInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLifestyleItemDetailInput.serializer,
        json,
      );
}

abstract class GLifestyleAnswerInput
    implements Built<GLifestyleAnswerInput, GLifestyleAnswerInputBuilder> {
  GLifestyleAnswerInput._();

  factory GLifestyleAnswerInput(
          [void Function(GLifestyleAnswerInputBuilder b) updates]) =
      _$GLifestyleAnswerInput;

  String get name;
  String? get value;
  String? get countValue;
  static Serializer<GLifestyleAnswerInput> get serializer =>
      _$gLifestyleAnswerInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLifestyleAnswerInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLifestyleAnswerInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLifestyleAnswerInput.serializer,
        json,
      );
}

abstract class GLifestyleItemUpdateInput
    implements
        Built<GLifestyleItemUpdateInput, GLifestyleItemUpdateInputBuilder> {
  GLifestyleItemUpdateInput._();

  factory GLifestyleItemUpdateInput(
          [void Function(GLifestyleItemUpdateInputBuilder b) updates]) =
      _$GLifestyleItemUpdateInput;

  String get id;
  String get name;
  GLifestyleItemDetailInput get details;
  static Serializer<GLifestyleItemUpdateInput> get serializer =>
      _$gLifestyleItemUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLifestyleItemUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLifestyleItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLifestyleItemUpdateInput.serializer,
        json,
      );
}

abstract class GHospitalizationUpdateInput
    implements
        Built<GHospitalizationUpdateInput, GHospitalizationUpdateInputBuilder> {
  GHospitalizationUpdateInput._();

  factory GHospitalizationUpdateInput(
          [void Function(GHospitalizationUpdateInputBuilder b) updates]) =
      _$GHospitalizationUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  double get duration;
  GDurationUnitEnum get durationUnit;
  BuiltList<String>? get linkedDocumentsId;
  String get id;
  static Serializer<GHospitalizationUpdateInput> get serializer =>
      _$gHospitalizationUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHospitalizationUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHospitalizationUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHospitalizationUpdateInput.serializer,
        json,
      );
}

abstract class GHospitalizationInput
    implements Built<GHospitalizationInput, GHospitalizationInputBuilder> {
  GHospitalizationInput._();

  factory GHospitalizationInput(
          [void Function(GHospitalizationInputBuilder b) updates]) =
      _$GHospitalizationInput;

  String get patientId;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  double get duration;
  GDurationUnitEnum get durationUnit;
  BuiltList<String>? get linkedDocumentsId;
  static Serializer<GHospitalizationInput> get serializer =>
      _$gHospitalizationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHospitalizationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHospitalizationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHospitalizationInput.serializer,
        json,
      );
}

abstract class GLinkedDocumentInput
    implements Built<GLinkedDocumentInput, GLinkedDocumentInputBuilder> {
  GLinkedDocumentInput._();

  factory GLinkedDocumentInput(
          [void Function(GLinkedDocumentInputBuilder b) updates]) =
      _$GLinkedDocumentInput;

  String get linkId;
  String get documentId;
  static Serializer<GLinkedDocumentInput> get serializer =>
      _$gLinkedDocumentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLinkedDocumentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLinkedDocumentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLinkedDocumentInput.serializer,
        json,
      );
}

abstract class GLinkedTreatmentInput
    implements Built<GLinkedTreatmentInput, GLinkedTreatmentInputBuilder> {
  GLinkedTreatmentInput._();

  factory GLinkedTreatmentInput(
          [void Function(GLinkedTreatmentInputBuilder b) updates]) =
      _$GLinkedTreatmentInput;

  String get linkId;
  String get treatmentId;
  static Serializer<GLinkedTreatmentInput> get serializer =>
      _$gLinkedTreatmentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLinkedTreatmentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLinkedTreatmentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLinkedTreatmentInput.serializer,
        json,
      );
}

abstract class GMeasureInput
    implements Built<GMeasureInput, GMeasureInputBuilder> {
  GMeasureInput._();

  factory GMeasureInput([void Function(GMeasureInputBuilder b) updates]) =
      _$GMeasureInput;

  String? get id;
  String get patientId;
  GMeasureCode get code;
  String? get effectiveDate;
  BuiltList<GMetricInput> get metrics;
  BuiltList<GCommentInput>? get comments;
  static Serializer<GMeasureInput> get serializer => _$gMeasureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMeasureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMeasureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMeasureInput.serializer,
        json,
      );
}

abstract class GMetricInput
    implements Built<GMetricInput, GMetricInputBuilder> {
  GMetricInput._();

  factory GMetricInput([void Function(GMetricInputBuilder b) updates]) =
      _$GMetricInput;

  GMeasureCode get code;
  String get value;
  String get unit;
  static Serializer<GMetricInput> get serializer => _$gMetricInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMetricInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMetricInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMetricInput.serializer,
        json,
      );
}

abstract class GCommentInput
    implements Built<GCommentInput, GCommentInputBuilder> {
  GCommentInput._();

  factory GCommentInput([void Function(GCommentInputBuilder b) updates]) =
      _$GCommentInput;

  String get code;
  String get value;
  String? get extra;
  static Serializer<GCommentInput> get serializer => _$gCommentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCommentInput.serializer,
        json,
      );
}

abstract class GDeleteMeasureModel
    implements Built<GDeleteMeasureModel, GDeleteMeasureModelBuilder> {
  GDeleteMeasureModel._();

  factory GDeleteMeasureModel(
          [void Function(GDeleteMeasureModelBuilder b) updates]) =
      _$GDeleteMeasureModel;

  String get id;
  String get patientId;
  static Serializer<GDeleteMeasureModel> get serializer =>
      _$gDeleteMeasureModelSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDeleteMeasureModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteMeasureModel? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDeleteMeasureModel.serializer,
        json,
      );
}

abstract class GMeasureTargetInput
    implements Built<GMeasureTargetInput, GMeasureTargetInputBuilder> {
  GMeasureTargetInput._();

  factory GMeasureTargetInput(
          [void Function(GMeasureTargetInputBuilder b) updates]) =
      _$GMeasureTargetInput;

  GMeasureCode get type;
  double get value;
  static Serializer<GMeasureTargetInput> get serializer =>
      _$gMeasureTargetInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMeasureTargetInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMeasureTargetInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMeasureTargetInput.serializer,
        json,
      );
}

abstract class GEditMeasureTargetInput
    implements Built<GEditMeasureTargetInput, GEditMeasureTargetInputBuilder> {
  GEditMeasureTargetInput._();

  factory GEditMeasureTargetInput(
          [void Function(GEditMeasureTargetInputBuilder b) updates]) =
      _$GEditMeasureTargetInput;

  String get targetId;
  double get value;
  static Serializer<GEditMeasureTargetInput> get serializer =>
      _$gEditMeasureTargetInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEditMeasureTargetInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEditMeasureTargetInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEditMeasureTargetInput.serializer,
        json,
      );
}

abstract class GMeasureTileInput
    implements Built<GMeasureTileInput, GMeasureTileInputBuilder> {
  GMeasureTileInput._();

  factory GMeasureTileInput(
          [void Function(GMeasureTileInputBuilder b) updates]) =
      _$GMeasureTileInput;

  GMeasureCode get type;
  bool get visible;
  static Serializer<GMeasureTileInput> get serializer =>
      _$gMeasureTileInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMeasureTileInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMeasureTileInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMeasureTileInput.serializer,
        json,
      );
}

abstract class GAdvanceDirectiveInput
    implements Built<GAdvanceDirectiveInput, GAdvanceDirectiveInputBuilder> {
  GAdvanceDirectiveInput._();

  factory GAdvanceDirectiveInput(
          [void Function(GAdvanceDirectiveInputBuilder b) updates]) =
      _$GAdvanceDirectiveInput;

  String get patientId;
  String get filename;
  String get attachment;
  String get mimeType;
  BuiltList<GConfidentiality>? get confidentialities;
  static Serializer<GAdvanceDirectiveInput> get serializer =>
      _$gAdvanceDirectiveInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GAdvanceDirectiveInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAdvanceDirectiveInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GAdvanceDirectiveInput.serializer,
        json,
      );
}

abstract class GHealthProfessionalInput
    implements
        Built<GHealthProfessionalInput, GHealthProfessionalInputBuilder> {
  GHealthProfessionalInput._();

  factory GHealthProfessionalInput(
          [void Function(GHealthProfessionalInputBuilder b) updates]) =
      _$GHealthProfessionalInput;

  String get patientId;
  String get nationalId;
  GHealthProfessionalRoleEnum? get role;
  static Serializer<GHealthProfessionalInput> get serializer =>
      _$gHealthProfessionalInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHealthProfessionalInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHealthProfessionalInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHealthProfessionalInput.serializer,
        json,
      );
}

abstract class GLinkInput implements Built<GLinkInput, GLinkInputBuilder> {
  GLinkInput._();

  factory GLinkInput([void Function(GLinkInputBuilder b) updates]) =
      _$GLinkInput;

  String get patientId;
  String get sourceId;
  GLinkType get sourceType;
  String get targetId;
  GLinkType get targetType;
  static Serializer<GLinkInput> get serializer => _$gLinkInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLinkInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLinkInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLinkInput.serializer,
        json,
      );
}

abstract class GContactPostInput
    implements Built<GContactPostInput, GContactPostInputBuilder> {
  GContactPostInput._();

  factory GContactPostInput(
          [void Function(GContactPostInputBuilder b) updates]) =
      _$GContactPostInput;

  String get patientId;
  String? get prefix;
  String? get fullName;
  String get firstName;
  String get lastName;
  GEntourageRelation get relation;
  String get mobileNumber;
  String? get fixedLineNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String get postalCode;
  String get city;
  String? get country;
  BuiltList<GContactType> get contactsType;
  static Serializer<GContactPostInput> get serializer =>
      _$gContactPostInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactPostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactPostInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactPostInput.serializer,
        json,
      );
}

abstract class GContactUpdateInput
    implements Built<GContactUpdateInput, GContactUpdateInputBuilder> {
  GContactUpdateInput._();

  factory GContactUpdateInput(
          [void Function(GContactUpdateInputBuilder b) updates]) =
      _$GContactUpdateInput;

  String get patientId;
  String? get prefix;
  String? get fullName;
  String get firstName;
  String get lastName;
  GEntourageRelation get relation;
  String get mobileNumber;
  String? get fixedLineNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String get postalCode;
  String get city;
  String? get country;
  String get idContact;
  GContactType get contactType;
  static Serializer<GContactUpdateInput> get serializer =>
      _$gContactUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactUpdateInput.serializer,
        json,
      );
}

abstract class GHealthStructureInput
    implements Built<GHealthStructureInput, GHealthStructureInputBuilder> {
  GHealthStructureInput._();

  factory GHealthStructureInput(
          [void Function(GHealthStructureInputBuilder b) updates]) =
      _$GHealthStructureInput;

  String get patientId;
  String get nationalId;
  static Serializer<GHealthStructureInput> get serializer =>
      _$gHealthStructureInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHealthStructureInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHealthStructureInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHealthStructureInput.serializer,
        json,
      );
}

abstract class GSendResponseInput
    implements Built<GSendResponseInput, GSendResponseInputBuilder> {
  GSendResponseInput._();

  factory GSendResponseInput(
          [void Function(GSendResponseInputBuilder b) updates]) =
      _$GSendResponseInput;

  bool? get draft;
  String get patientId;
  GReplyTypeEnum? get replyType;
  String get conversationId;
  String? get messageId;
  String get content;
  String? get subject;
  String? get medicalProfileFilename;
  BuiltList<GFileInput>? get attachments;
  BuiltList<GEnsDocumentInput>? get ensDocuments;
  BuiltList<String>? get filesId;
  GRecipientsIdInput? get recipientsId;
  GFiltersInput? get filters;
  static Serializer<GSendResponseInput> get serializer =>
      _$gSendResponseInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSendResponseInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendResponseInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSendResponseInput.serializer,
        json,
      );
}

abstract class GFileInput implements Built<GFileInput, GFileInputBuilder> {
  GFileInput._();

  factory GFileInput([void Function(GFileInputBuilder b) updates]) =
      _$GFileInput;

  String get name;
  String get attachment;
  String get mimeType;
  static Serializer<GFileInput> get serializer => _$gFileInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFileInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFileInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFileInput.serializer,
        json,
      );
}

abstract class GEnsDocumentInput
    implements Built<GEnsDocumentInput, GEnsDocumentInputBuilder> {
  GEnsDocumentInput._();

  factory GEnsDocumentInput(
          [void Function(GEnsDocumentInputBuilder b) updates]) =
      _$GEnsDocumentInput;

  String get documentId;
  String get documentTitle;
  static Serializer<GEnsDocumentInput> get serializer =>
      _$gEnsDocumentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GEnsDocumentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnsDocumentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GEnsDocumentInput.serializer,
        json,
      );
}

abstract class GRecipientsIdInput
    implements Built<GRecipientsIdInput, GRecipientsIdInputBuilder> {
  GRecipientsIdInput._();

  factory GRecipientsIdInput(
          [void Function(GRecipientsIdInputBuilder b) updates]) =
      _$GRecipientsIdInput;

  BuiltList<String>? get to;
  static Serializer<GRecipientsIdInput> get serializer =>
      _$gRecipientsIdInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GRecipientsIdInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecipientsIdInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GRecipientsIdInput.serializer,
        json,
      );
}

abstract class GSaveNotificationTokenInput
    implements
        Built<GSaveNotificationTokenInput, GSaveNotificationTokenInputBuilder> {
  GSaveNotificationTokenInput._();

  factory GSaveNotificationTokenInput(
          [void Function(GSaveNotificationTokenInputBuilder b) updates]) =
      _$GSaveNotificationTokenInput;

  String get token;
  GMobileOsEnum get os;
  static Serializer<GSaveNotificationTokenInput> get serializer =>
      _$gSaveNotificationTokenInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSaveNotificationTokenInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveNotificationTokenInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSaveNotificationTokenInput.serializer,
        json,
      );
}

class GMobileOsEnum extends EnumClass {
  const GMobileOsEnum._(String name) : super(name);

  static const GMobileOsEnum ANDROID = _$gMobileOsEnumANDROID;

  static const GMobileOsEnum IOS = _$gMobileOsEnumIOS;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GMobileOsEnum gUnknownEnumValue =
      _$gMobileOsEnumgUnknownEnumValue;

  static Serializer<GMobileOsEnum> get serializer => _$gMobileOsEnumSerializer;

  static BuiltSet<GMobileOsEnum> get values => _$gMobileOsEnumValues;

  static GMobileOsEnum valueOf(String name) => _$gMobileOsEnumValueOf(name);
}

abstract class GUserActionInput
    implements Built<GUserActionInput, GUserActionInputBuilder> {
  GUserActionInput._();

  factory GUserActionInput([void Function(GUserActionInputBuilder b) updates]) =
      _$GUserActionInput;

  GUserActionEnum? get actionNavigation;
  String get ensUserId;
  BuiltList<GUserActionParams>? get params;
  static Serializer<GUserActionInput> get serializer =>
      _$gUserActionInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserActionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserActionInput.serializer,
        json,
      );
}

class GUserActionEnum extends EnumClass {
  const GUserActionEnum._(String name) : super(name);

  static const GUserActionEnum CONNEXION = _$gUserActionEnumCONNEXION;

  static const GUserActionEnum CONSULT_DOC = _$gUserActionEnumCONSULT_DOC;

  static const GUserActionEnum TELECHARGEMENT_DOC =
      _$gUserActionEnumTELECHARGEMENT_DOC;

  static const GUserActionEnum MODIF_PARAM_NOTIF =
      _$gUserActionEnumMODIF_PARAM_NOTIF;

  static const GUserActionEnum ACCEPTATION_CGU =
      _$gUserActionEnumACCEPTATION_CGU;

  static const GUserActionEnum INVIT_ACCES_SECOND_RL =
      _$gUserActionEnumINVIT_ACCES_SECOND_RL;

  static const GUserActionEnum MODIF_PARAM_ACCESS_URGENCE =
      _$gUserActionEnumMODIF_PARAM_ACCESS_URGENCE;

  static const GUserActionEnum CONSULT_MENU_AGENDA =
      _$gUserActionEnumCONSULT_MENU_AGENDA;

  static const GUserActionEnum CONSULT_RUBRIQUE_MHS =
      _$gUserActionEnumCONSULT_RUBRIQUE_MHS;

  static const GUserActionEnum CONSULT_RUBRIQUE_PS =
      _$gUserActionEnumCONSULT_RUBRIQUE_PS;

  static const GUserActionEnum CONSULT_RUBRIQUE_VACCINATIONS =
      _$gUserActionEnumCONSULT_RUBRIQUE_VACCINATIONS;

  static const GUserActionEnum CONSULT_RUBRIQUE_MALADIES =
      _$gUserActionEnumCONSULT_RUBRIQUE_MALADIES;

  static const GUserActionEnum CONSULT_RUBRIQUE_TRAITEMENTS =
      _$gUserActionEnumCONSULT_RUBRIQUE_TRAITEMENTS;

  static const GUserActionEnum CONSULT_RUBRIQUE_HOSPITALISATIONS =
      _$gUserActionEnumCONSULT_RUBRIQUE_HOSPITALISATIONS;

  static const GUserActionEnum CONSULT_RUBRIQUE_HANDICAPS =
      _$gUserActionEnumCONSULT_RUBRIQUE_HANDICAPS;

  static const GUserActionEnum CONSULT_RUBRIQUE_ALLERGIES =
      _$gUserActionEnumCONSULT_RUBRIQUE_ALLERGIES;

  static const GUserActionEnum CONSULT_RUBRIQUE_ANTECEDENTS_FAMILIAUX =
      _$gUserActionEnumCONSULT_RUBRIQUE_ANTECEDENTS_FAMILIAUX;

  static const GUserActionEnum CONSULT_RUBRIQUE_HABITUDES_VIE =
      _$gUserActionEnumCONSULT_RUBRIQUE_HABITUDES_VIE;

  static const GUserActionEnum CONSULT_RUBRIQUE_MESURES =
      _$gUserActionEnumCONSULT_RUBRIQUE_MESURES;

  static const GUserActionEnum CONSULT_RUBRIQUE_ENTOURAGE_VOLONTES =
      _$gUserActionEnumCONSULT_RUBRIQUE_ENTOURAGE_VOLONTES;

  static const GUserActionEnum CONSULT_RUBRIQUE_PIECES_ADMIN =
      _$gUserActionEnumCONSULT_RUBRIQUE_PIECES_ADMIN;

  static const GUserActionEnum CONSULT_MESURE = _$gUserActionEnumCONSULT_MESURE;

  static const GUserActionEnum CONSULT_RUBRIQUE_INFOS_CONNEXION =
      _$gUserActionEnumCONSULT_RUBRIQUE_INFOS_CONNEXION;

  static const GUserActionEnum CONSULT_RUBRIQUE_CONFIDENTIALITE =
      _$gUserActionEnumCONSULT_RUBRIQUE_CONFIDENTIALITE;

  static const GUserActionEnum CONSULT_RUBRIQUE_NOTIFS_MAILS =
      _$gUserActionEnumCONSULT_RUBRIQUE_NOTIFS_MAILS;

  static const GUserActionEnum CONSULT_RUBRIQUE_HISTORIQUE_DONNEES =
      _$gUserActionEnumCONSULT_RUBRIQUE_HISTORIQUE_DONNEES;

  static const GUserActionEnum CONSULT_RUBRIQUE_CLOTURE_PROFIL =
      _$gUserActionEnumCONSULT_RUBRIQUE_CLOTURE_PROFIL;

  static const GUserActionEnum CONSULT_RUBRIQUE_ACCES_PS =
      _$gUserActionEnumCONSULT_RUBRIQUE_ACCES_PS;

  static const GUserActionEnum CONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS =
      _$gUserActionEnumCONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS;

  static const GUserActionEnum CONSULT_RUBRIQUE_ACCES_URGENCE =
      _$gUserActionEnumCONSULT_RUBRIQUE_ACCES_URGENCE;

  static const GUserActionEnum CONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE =
      _$gUserActionEnumCONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE;

  static const GUserActionEnum CONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES =
      _$gUserActionEnumCONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES;

  static const GUserActionEnum CONSULT_RUBRIQUE_ENTOURAGE =
      _$gUserActionEnumCONSULT_RUBRIQUE_ENTOURAGE;

  static const GUserActionEnum CONSULT_RUBRIQUE_DIRECTIVES_ANTICIPEES =
      _$gUserActionEnumCONSULT_RUBRIQUE_DIRECTIVES_ANTICIPEES;

  static const GUserActionEnum CONSULT_RUBRIQUE_DON_ORGANE =
      _$gUserActionEnumCONSULT_RUBRIQUE_DON_ORGANE;

  static const GUserActionEnum ATTRIBUTION_STATUT_MEDECIN_ADMIN =
      _$gUserActionEnumATTRIBUTION_STATUT_MEDECIN_ADMIN;

  static const GUserActionEnum RETRAIT_STATUT_MEDECIN_ADMIN =
      _$gUserActionEnumRETRAIT_STATUT_MEDECIN_ADMIN;

  static const GUserActionEnum CONSULT_RUBRIQUE_DOCUMENTS =
      _$gUserActionEnumCONSULT_RUBRIQUE_DOCUMENTS;

  static const GUserActionEnum CONSULT_RUBRIQUE_MESSAGERIE =
      _$gUserActionEnumCONSULT_RUBRIQUE_MESSAGERIE;

  static const GUserActionEnum CONSULT_MESSAGE =
      _$gUserActionEnumCONSULT_MESSAGE;

  static const GUserActionEnum ENVOI_MESSAGE = _$gUserActionEnumENVOI_MESSAGE;

  static const GUserActionEnum RECEPTION_MESSAGE =
      _$gUserActionEnumRECEPTION_MESSAGE;

  static const GUserActionEnum MODIF_ADRESSE_MAIL =
      _$gUserActionEnumMODIF_ADRESSE_MAIL;

  static const GUserActionEnum MODIF_NUMERO_TELEPHONE =
      _$gUserActionEnumMODIF_NUMERO_TELEPHONE;

  static const GUserActionEnum TELECHARGEMENT_COPIE_DONNEES =
      _$gUserActionEnumTELECHARGEMENT_COPIE_DONNEES;

  static const GUserActionEnum ACCES_MES_A_LA_DEMANDE =
      _$gUserActionEnumACCES_MES_A_LA_DEMANDE;

  static const GUserActionEnum CONSULT_RUBRIQUE_NOUS_CONTACTER =
      _$gUserActionEnumCONSULT_RUBRIQUE_NOUS_CONTACTER;

  static const GUserActionEnum CONSULT_MESSAGE_SUPPORT =
      _$gUserActionEnumCONSULT_MESSAGE_SUPPORT;

  static const GUserActionEnum ENVOI_MESSAGE_SUPPORT =
      _$gUserActionEnumENVOI_MESSAGE_SUPPORT;

  static const GUserActionEnum RECEPTION_MESSAGE_SUPPORT =
      _$gUserActionEnumRECEPTION_MESSAGE_SUPPORT;

  static const GUserActionEnum SUPP_MESSAGE_SUPPORT =
      _$gUserActionEnumSUPP_MESSAGE_SUPPORT;

  static const GUserActionEnum ANNULATION_DEMANDE_SUPPRESSION_DONNEES =
      _$gUserActionEnumANNULATION_DEMANDE_SUPPRESSION_DONNEES;

  static const GUserActionEnum AJOUT_VACCINATION =
      _$gUserActionEnumAJOUT_VACCINATION;

  static const GUserActionEnum MODIF_VACCINATION =
      _$gUserActionEnumMODIF_VACCINATION;

  static const GUserActionEnum SUPP_VACCINATION =
      _$gUserActionEnumSUPP_VACCINATION;

  static const GUserActionEnum MODIF_MEMBRE_ENTOURAGE =
      _$gUserActionEnumMODIF_MEMBRE_ENTOURAGE;

  static const GUserActionEnum SUPP_MEMBRE_ENTOURAGE =
      _$gUserActionEnumSUPP_MEMBRE_ENTOURAGE;

  static const GUserActionEnum CONSULT_RUBRIQUE_SERVICES_SYNCHRO =
      _$gUserActionEnumCONSULT_RUBRIQUE_SERVICES_SYNCHRO;

  static const GUserActionEnum CONSULT_MENU_CATALOGUE_SERVICES =
      _$gUserActionEnumCONSULT_MENU_CATALOGUE_SERVICES;

  static const GUserActionEnum AJOUT_MEMBRE_ENTOURAGE =
      _$gUserActionEnumAJOUT_MEMBRE_ENTOURAGE;

  static const GUserActionEnum MODIF_DECLA_DON_ORGANE =
      _$gUserActionEnumMODIF_DECLA_DON_ORGANE;

  static const GUserActionEnum CONSULT_ONGLET_CONFIDENTIALITE_FICHE_PS =
      _$gUserActionEnumCONSULT_ONGLET_CONFIDENTIALITE_FICHE_PS;

  static const GUserActionEnum CONSULT_RUBRIQUE_BILAN_DE_PREVENTION =
      _$gUserActionEnumCONSULT_RUBRIQUE_BILAN_DE_PREVENTION;

  static const GUserActionEnum CONSULT_ONGLET_COORDONNEES_FICHE_PS =
      _$gUserActionEnumCONSULT_ONGLET_COORDONNEES_FICHE_PS;

  static const GUserActionEnum CONSULT_ONGLET_DOCUMENTS_FICHE_PS =
      _$gUserActionEnumCONSULT_ONGLET_DOCUMENTS_FICHE_PS;

  static const GUserActionEnum CONSULT_ONGLET_HISTORIQUE_ACTIVITES_FICHE_PS =
      _$gUserActionEnumCONSULT_ONGLET_HISTORIQUE_ACTIVITES_FICHE_PS;

  static const GUserActionEnum CONSULT_RUBRIQUE_HABITUDES_VIE_DETAIL =
      _$gUserActionEnumCONSULT_RUBRIQUE_HABITUDES_VIE_DETAIL;

  static const GUserActionEnum CONSULT_RUBRIQUE_GROUPE_SANGUIN =
      _$gUserActionEnumCONSULT_RUBRIQUE_GROUPE_SANGUIN;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GUserActionEnum gUnknownEnumValue =
      _$gUserActionEnumgUnknownEnumValue;

  static Serializer<GUserActionEnum> get serializer =>
      _$gUserActionEnumSerializer;

  static BuiltSet<GUserActionEnum> get values => _$gUserActionEnumValues;

  static GUserActionEnum valueOf(String name) => _$gUserActionEnumValueOf(name);
}

abstract class GUserActionParams
    implements Built<GUserActionParams, GUserActionParamsBuilder> {
  GUserActionParams._();

  factory GUserActionParams(
          [void Function(GUserActionParamsBuilder b) updates]) =
      _$GUserActionParams;

  String get key;
  String get value;
  static Serializer<GUserActionParams> get serializer =>
      _$gUserActionParamsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserActionParams.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActionParams? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserActionParams.serializer,
        json,
      );
}

abstract class GTreatmentInput
    implements Built<GTreatmentInput, GTreatmentInputBuilder> {
  GTreatmentInput._();

  factory GTreatmentInput([void Function(GTreatmentInputBuilder b) updates]) =
      _$GTreatmentInput;

  String get patientId;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  String? get dosage;
  static Serializer<GTreatmentInput> get serializer =>
      _$gTreatmentInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTreatmentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTreatmentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTreatmentInput.serializer,
        json,
      );
}

abstract class GTreatmentUpdateInput
    implements Built<GTreatmentUpdateInput, GTreatmentUpdateInputBuilder> {
  GTreatmentUpdateInput._();

  factory GTreatmentUpdateInput(
          [void Function(GTreatmentUpdateInputBuilder b) updates]) =
      _$GTreatmentUpdateInput;

  String get patientId;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  String? get dosage;
  String get id;
  static Serializer<GTreatmentUpdateInput> get serializer =>
      _$gTreatmentUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTreatmentUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTreatmentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTreatmentUpdateInput.serializer,
        json,
      );
}

abstract class GVaccineInput
    implements Built<GVaccineInput, GVaccineInputBuilder> {
  GVaccineInput._();

  factory GVaccineInput([void Function(GVaccineInputBuilder b) updates]) =
      _$GVaccineInput;

  String get patientId;
  String get vaccineRefId;
  String get effectiveTime;
  GVaccineTypeOfAdministrationEnum? get typeOfAdministration;
  String? get lotNumber;
  String? get performer;
  String? get comment;
  static Serializer<GVaccineInput> get serializer => _$gVaccineInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVaccineInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVaccineInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVaccineInput.serializer,
        json,
      );
}

abstract class GVaccineUpdateInput
    implements Built<GVaccineUpdateInput, GVaccineUpdateInputBuilder> {
  GVaccineUpdateInput._();

  factory GVaccineUpdateInput(
          [void Function(GVaccineUpdateInputBuilder b) updates]) =
      _$GVaccineUpdateInput;

  String get patientId;
  String get vaccineRefId;
  String get effectiveTime;
  GVaccineTypeOfAdministrationEnum? get typeOfAdministration;
  String? get lotNumber;
  String? get performer;
  String? get comment;
  String get vaccineId;
  static Serializer<GVaccineUpdateInput> get serializer =>
      _$gVaccineUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GVaccineUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVaccineUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GVaccineUpdateInput.serializer,
        json,
      );
}

abstract class GCloseEnsInput
    implements Built<GCloseEnsInput, GCloseEnsInputBuilder> {
  GCloseEnsInput._();

  factory GCloseEnsInput([void Function(GCloseEnsInputBuilder b) updates]) =
      _$GCloseEnsInput;

  String get patientId;
  String get loggedInUserId;
  String get password;
  bool get suppressionDemandee;
  static Serializer<GCloseEnsInput> get serializer =>
      _$gCloseEnsInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCloseEnsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCloseEnsInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCloseEnsInput.serializer,
        json,
      );
}

abstract class GDelegationMatchPotentialDelegateInput
    implements
        Built<GDelegationMatchPotentialDelegateInput,
            GDelegationMatchPotentialDelegateInputBuilder> {
  GDelegationMatchPotentialDelegateInput._();

  factory GDelegationMatchPotentialDelegateInput(
      [void Function(GDelegationMatchPotentialDelegateInputBuilder b)
          updates]) = _$GDelegationMatchPotentialDelegateInput;

  String get ins;
  String get firstGivenName;
  String get familyName;
  String get birthDate;
  static Serializer<GDelegationMatchPotentialDelegateInput> get serializer =>
      _$gDelegationMatchPotentialDelegateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationMatchPotentialDelegateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationMatchPotentialDelegateInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationMatchPotentialDelegateInput.serializer,
        json,
      );
}

abstract class GDelegationInviteToCaregivingInput
    implements
        Built<GDelegationInviteToCaregivingInput,
            GDelegationInviteToCaregivingInputBuilder> {
  GDelegationInviteToCaregivingInput._();

  factory GDelegationInviteToCaregivingInput(
      [void Function(GDelegationInviteToCaregivingInputBuilder b)
          updates]) = _$GDelegationInviteToCaregivingInput;

  String get idp;
  String get transactionId;
  static Serializer<GDelegationInviteToCaregivingInput> get serializer =>
      _$gDelegationInviteToCaregivingInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationInviteToCaregivingInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationInviteToCaregivingInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationInviteToCaregivingInput.serializer,
        json,
      );
}

abstract class GDelegationAcceptInvitationInput
    implements
        Built<GDelegationAcceptInvitationInput,
            GDelegationAcceptInvitationInputBuilder> {
  GDelegationAcceptInvitationInput._();

  factory GDelegationAcceptInvitationInput(
          [void Function(GDelegationAcceptInvitationInputBuilder b) updates]) =
      _$GDelegationAcceptInvitationInput;

  String get invitationId;
  static Serializer<GDelegationAcceptInvitationInput> get serializer =>
      _$gDelegationAcceptInvitationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationAcceptInvitationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationAcceptInvitationInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationAcceptInvitationInput.serializer,
        json,
      );
}

abstract class GDelegationRefuseInvitationInput
    implements
        Built<GDelegationRefuseInvitationInput,
            GDelegationRefuseInvitationInputBuilder> {
  GDelegationRefuseInvitationInput._();

  factory GDelegationRefuseInvitationInput(
          [void Function(GDelegationRefuseInvitationInputBuilder b) updates]) =
      _$GDelegationRefuseInvitationInput;

  String get invitationId;
  static Serializer<GDelegationRefuseInvitationInput> get serializer =>
      _$gDelegationRefuseInvitationInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationRefuseInvitationInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationRefuseInvitationInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationRefuseInvitationInput.serializer,
        json,
      );
}

abstract class GDelegationRevokeInput
    implements Built<GDelegationRevokeInput, GDelegationRevokeInputBuilder> {
  GDelegationRevokeInput._();

  factory GDelegationRevokeInput(
          [void Function(GDelegationRevokeInputBuilder b) updates]) =
      _$GDelegationRevokeInput;

  String get delegationId;
  static Serializer<GDelegationRevokeInput> get serializer =>
      _$gDelegationRevokeInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GDelegationRevokeInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDelegationRevokeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GDelegationRevokeInput.serializer,
        json,
      );
}

abstract class GHealthQuizResponseInput
    implements
        Built<GHealthQuizResponseInput, GHealthQuizResponseInputBuilder> {
  GHealthQuizResponseInput._();

  factory GHealthQuizResponseInput(
          [void Function(GHealthQuizResponseInputBuilder b) updates]) =
      _$GHealthQuizResponseInput;

  String get patientId;
  String get quizCode;
  String get quizVersion;
  BuiltList<GResponseInput> get details;
  GHealthQuizCompletionStatus get status;
  double? get questionToDisplay;
  static Serializer<GHealthQuizResponseInput> get serializer =>
      _$gHealthQuizResponseInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHealthQuizResponseInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHealthQuizResponseInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHealthQuizResponseInput.serializer,
        json,
      );
}

abstract class GResponseInput
    implements Built<GResponseInput, GResponseInputBuilder> {
  GResponseInput._();

  factory GResponseInput([void Function(GResponseInputBuilder b) updates]) =
      _$GResponseInput;

  String get questionCode;
  BuiltList<String> get value;
  static Serializer<GResponseInput> get serializer =>
      _$gResponseInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GResponseInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResponseInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GResponseInput.serializer,
        json,
      );
}

abstract class GFinalityConsentToUpdateInput
    implements
        Built<GFinalityConsentToUpdateInput,
            GFinalityConsentToUpdateInputBuilder> {
  GFinalityConsentToUpdateInput._();

  factory GFinalityConsentToUpdateInput(
          [void Function(GFinalityConsentToUpdateInputBuilder b) updates]) =
      _$GFinalityConsentToUpdateInput;

  String get patientId;
  bool get consent;
  GFinalityCode get finalityCode;
  static Serializer<GFinalityConsentToUpdateInput> get serializer =>
      _$gFinalityConsentToUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFinalityConsentToUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFinalityConsentToUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFinalityConsentToUpdateInput.serializer,
        json,
      );
}

class GFinalityCode extends EnumClass {
  const GFinalityCode._(String name) : super(name);

  static const GFinalityCode TRAITEMENT_AUTO_DOCS =
      _$gFinalityCodeTRAITEMENT_AUTO_DOCS;

  static const GFinalityCode DOCS = _$gFinalityCodeDOCS;

  @BuiltValueEnumConst(
    wireName: 'gUnknownEnumValue',
    fallback: true,
  )
  static const GFinalityCode gUnknownEnumValue =
      _$gFinalityCodegUnknownEnumValue;

  static Serializer<GFinalityCode> get serializer => _$gFinalityCodeSerializer;

  static BuiltSet<GFinalityCode> get values => _$gFinalityCodeValues;

  static GFinalityCode valueOf(String name) => _$gFinalityCodeValueOf(name);
}

abstract class GBloodGroupInput
    implements Built<GBloodGroupInput, GBloodGroupInputBuilder> {
  GBloodGroupInput._();

  factory GBloodGroupInput([void Function(GBloodGroupInputBuilder b) updates]) =
      _$GBloodGroupInput;

  String get patientId;
  GBloodGroupEnum get bloodGroup;
  static Serializer<GBloodGroupInput> get serializer =>
      _$gBloodGroupInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBloodGroupInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBloodGroupInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBloodGroupInput.serializer,
        json,
      );
}

abstract class GBloodGroupUpdateInput
    implements Built<GBloodGroupUpdateInput, GBloodGroupUpdateInputBuilder> {
  GBloodGroupUpdateInput._();

  factory GBloodGroupUpdateInput(
          [void Function(GBloodGroupUpdateInputBuilder b) updates]) =
      _$GBloodGroupUpdateInput;

  String get patientId;
  GBloodGroupEnum get bloodGroup;
  String get bloodGroupId;
  static Serializer<GBloodGroupUpdateInput> get serializer =>
      _$gBloodGroupUpdateInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBloodGroupUpdateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBloodGroupUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBloodGroupUpdateInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {
  'EpisodeViewModel': {
    'DiseaseEpisodeViewModel',
    'BiologyEpisodeViewModel',
    'MedicineEpisodeViewModel',
    'MedicalDentalCareEpisodeViewModel',
    'HospitalizationEpisodeViewModel',
    'RadiologyEpisodeViewModel',
    'MedicalDeviceEpisodeViewModel',
    'VaccineEpisodeViewModel',
    'CvaVaccineEpisodeViewModel',
  }
};
