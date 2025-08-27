// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const get_initial_habitudes_de_vie_section_answer = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'get_initial_habitudes_de_vie_section_answer'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'fetchLifestyleAnswersForGivenSection'),
      alias: _i1.NameNode(value: 'alimentaire'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'sectionType'),
          value: _i1.EnumValueNode(name: _i1.NameNode(value: 'FOOD')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'habitudesDeVie'),
          directives: [],
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'fetchLifestyleAnswersForGivenSection'),
      alias: _i1.NameNode(value: 'tabac'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'sectionType'),
          value: _i1.EnumValueNode(name: _i1.NameNode(value: 'TOBACCO')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'habitudesDeVie'),
          directives: [],
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'fetchLifestyleAnswersForGivenSection'),
      alias: _i1.NameNode(value: 'activitePhysique'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'sectionType'),
          value:
              _i1.EnumValueNode(name: _i1.NameNode(value: 'PHYSICAL_ACTIVITY')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'habitudesDeVie'),
          directives: [],
        )
      ]),
    ),
  ]),
);
const document = _i1.DocumentNode(definitions: [
  get_initial_habitudes_de_vie_section_answer,
  _i2.habitudesDeVie,
]);
