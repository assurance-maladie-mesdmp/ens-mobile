// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.ast.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.ast.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.ast.gql.dart'
    as _i4;
import 'package:gql/ast.dart' as _i1;

const get_mesures_by_code = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'get_mesures_by_code'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'mesurePageable')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'MeasurePageableInput'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'measuresByCode'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'measurePageableInput'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'mesurePageable')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'extractMesure'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  get_mesures_by_code,
  _i2.extractMesure,
  _i3.mesureFields,
  _i4.metadataFields,
]);
