// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const set_consentement_urgence = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'set_consentement_urgence'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'newValueETREAT')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'consentementIdETREAT')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'newValueBTG')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'consentementIdBTG')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'newValueMASKED')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'consentementIdMASKED')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'setDmpConsentement'),
      alias: _i1.NameNode(value: 'setETREAT'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'newValue'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'newValueETREAT')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'purpose'),
          value: _i1.StringValueNode(
            value: 'ETREAT',
            isBlock: false,
          ),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'consentementId'),
          value: _i1.VariableNode(
              name: _i1.NameNode(value: 'consentementIdETREAT')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'success'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'setDmpConsentement'),
      alias: _i1.NameNode(value: 'setBTG'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'newValue'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'newValueBTG')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'purpose'),
          value: _i1.StringValueNode(
            value: 'BTG',
            isBlock: false,
          ),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'consentementId'),
          value:
              _i1.VariableNode(name: _i1.NameNode(value: 'consentementIdBTG')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'success'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
    _i1.FieldNode(
      name: _i1.NameNode(value: 'setDmpConsentement'),
      alias: _i1.NameNode(value: 'setMASKED'),
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'newValue'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'newValueMASKED')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'purpose'),
          value: _i1.StringValueNode(
            value: 'MASKED',
            isBlock: false,
          ),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'consentementId'),
          value: _i1.VariableNode(
              name: _i1.NameNode(value: 'consentementIdMASKED')),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'patientId'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'success'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
  ]),
);
const document = _i1.DocumentNode(definitions: [set_consentement_urgence]);
