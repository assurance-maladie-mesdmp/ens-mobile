// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_habitudes_de_vie_get_section_answer.query.var.gql.g.dart';

abstract class Gget_habitudes_de_vie_section_answerVars
    implements
        Built<Gget_habitudes_de_vie_section_answerVars,
            Gget_habitudes_de_vie_section_answerVarsBuilder> {
  Gget_habitudes_de_vie_section_answerVars._();

  factory Gget_habitudes_de_vie_section_answerVars(
      [void Function(Gget_habitudes_de_vie_section_answerVarsBuilder b)
          updates]) = _$Gget_habitudes_de_vie_section_answerVars;

  String get patientId;
  _i1.GLifestyleSectionEnum get sectionType;
  static Serializer<Gget_habitudes_de_vie_section_answerVars> get serializer =>
      _$ggetHabitudesDeVieSectionAnswerVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_habitudes_de_vie_section_answerVars.serializer,
        json,
      );
}
