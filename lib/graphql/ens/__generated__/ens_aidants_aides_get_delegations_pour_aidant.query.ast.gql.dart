// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.ast.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const get_delegations_pour_aidant = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'get_delegations_pour_aidant'),
  variableDefinitions: [],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'delegations'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'filter'),
          value: _i1.ObjectValueNode(fields: [
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'onlyActive'),
              value: _i1.BooleanValueNode(value: true),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'withDetails'),
              value: _i1.BooleanValueNode(value: true),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'type'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'CAREGIVING')),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'direction'),
              value: _i1.EnumValueNode(name: _i1.NameNode(value: 'INCOMING')),
            ),
          ]),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FragmentSpreadNode(
          name: _i1.NameNode(value: 'delegation'),
          directives: [],
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  get_delegations_pour_aidant,
  _i2.delegation,
  _i3.acteur,
]);
