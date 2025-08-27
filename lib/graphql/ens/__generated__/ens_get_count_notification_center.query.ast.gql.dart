// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const get_unread_notification_center_count = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'get_unread_notification_center_count'),
  variableDefinitions: [],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'fetchNotificationCenter'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'unreadNotificationsCount'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    )
  ]),
);
const document =
    _i1.DocumentNode(definitions: [get_unread_notification_center_count]);
