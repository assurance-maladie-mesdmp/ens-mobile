// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_get_initial_section_answers.query.var.gql.g.dart';

abstract class Gget_initial_habitudes_de_vie_section_answerVars
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerVars,
            Gget_initial_habitudes_de_vie_section_answerVarsBuilder> {
  Gget_initial_habitudes_de_vie_section_answerVars._();

  factory Gget_initial_habitudes_de_vie_section_answerVars(
      [void Function(Gget_initial_habitudes_de_vie_section_answerVarsBuilder b)
          updates]) = _$Gget_initial_habitudes_de_vie_section_answerVars;

  String get patientId;
  static Serializer<Gget_initial_habitudes_de_vie_section_answerVars>
      get serializer => _$ggetInitialHabitudesDeVieSectionAnswerVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_initial_habitudes_de_vie_section_answerVars.serializer,
        json,
      );
}
