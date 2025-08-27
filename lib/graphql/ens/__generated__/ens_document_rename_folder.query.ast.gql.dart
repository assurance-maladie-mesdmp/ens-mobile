// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const rename_folder = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'rename_folder'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable:
          _i1.VariableNode(name: _i1.NameNode(value: 'renameFolderInputs')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'RenameFolderInputs'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'renameFolderV2'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'renameFolderInputs'),
          value:
              _i1.VariableNode(name: _i1.NameNode(value: 'renameFolderInputs')),
        )
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
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [rename_folder]);
