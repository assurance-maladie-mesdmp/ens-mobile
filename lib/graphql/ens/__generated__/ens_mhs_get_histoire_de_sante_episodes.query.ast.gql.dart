// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.ast.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.ast.gql.dart'
    as _i2;
import 'package:gql/ast.dart' as _i1;

const get_histoire_de_sante_episodes = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'get_histoire_de_sante_episodes'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'currentPage')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'dailyEpisodes'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(
              value: 'getCompleteNthDailyEpisodesByPatientIdAndCategory'),
          value: _i1.ObjectValueNode(fields: [
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'patientId'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'patientId')),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'currentPage'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'currentPage')),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'episodesPerPage'),
              value: _i1.IntValueNode(value: '6'),
            ),
          ]),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'episodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'BiologyEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeBiologie'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'MedicineEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeMedicament'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'MedicalDentalCareEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeSoinDentaire'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'HospitalizationEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeHospitalisation'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'RadiologyEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeRadiologie'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'MedicalDeviceEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeDispositifMedical'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'VaccineEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeVaccin'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'CvaVaccineEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeVaccination'),
                  directives: [],
                )
              ]),
            ),
            _i1.InlineFragmentNode(
              typeCondition: _i1.TypeConditionNode(
                  on: _i1.NamedTypeNode(
                name: _i1.NameNode(value: 'DiseaseEpisodeViewModel'),
                isNonNull: false,
              )),
              directives: [],
              selectionSet: _i1.SelectionSetNode(selections: [
                _i1.FragmentSpreadNode(
                  name: _i1.NameNode(value: 'episodeMaladie'),
                  directives: [],
                )
              ]),
            ),
          ]),
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'numberOfEpisodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  get_histoire_de_sante_episodes,
  _i2.episodeBiologie,
  _i2.episodeMedicament,
  _i2.episodeSoinDentaire,
  _i2.episodeHospitalisation,
  _i2.episodeRadiologie,
  _i2.episodeDispositifMedical,
  _i2.episodeVaccin,
  _i2.episodeVaccination,
  _i2.episodeMaladie,
  _i3.episodePsAuteur,
  _i3.episodeEsAuteur,
]);
