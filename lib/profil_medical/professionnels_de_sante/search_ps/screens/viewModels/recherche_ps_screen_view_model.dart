/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/redux/search_ps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:redux/redux.dart';

class RecherchePsScreenViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<ProfessionnelSanteDisplayModel> ps;
  final void Function(
    String firstname,
    String lastname,
    String departmentCode,
    String cityCode,
    CodePostaux zipCodes,
    String? professionalActivityId,
  ) searchPs;
  final ProfilType profilType;
  final void Function() clearResults;

  const RecherchePsScreenViewModel._internal({
    required this.status,
    required this.ps,
    required this.searchPs,
    required this.profilType,
    required this.clearResults,
  });

  factory RecherchePsScreenViewModel.from(Store<EnsState> store) {
    final searchPsListState = store.state.professionnelsDeSanteState.searchPsState;
    final psList = List<ProfessionnelDeSante>.from(searchPsListState.professionnelsDeSante)
      ..sort((first, second) {
        if (first.active == second.active) {
          return 0;
        }
        return first.active ? -1 : 1;
      });

    final psDisplayModels = psList.where((ps) => ps.nationalId != null).map((ps) {
      return ProfessionnelSanteDisplayModel(
        id: ps.nationalId!,
        firstName: ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.firstName),
        lastName: ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.lastName),
        profession: ps.profession?._cleanProfession(),
        speciality: ps.speciality?._cleanSpeciality(),
        addresses: _removeDuplicatedAdresses(ps.addresses),
        isActive: ps.active,
      );
    }).toList();

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    return RecherchePsScreenViewModel._internal(
      status: searchPsListState.status,
      ps: psDisplayModels,
      searchPs: (firstname, lastname, departmentCode, cityCode, zipCodes, professionalActivityId) {
        store.dispatch(
          SearchPsAction(
            lastname: lastname,
            firstname: firstname,
            departmentCode: departmentCode,
            cityCode: cityCode,
            zipCodes: zipCodes,
            professionalActivityId: professionalActivityId,
          ),
        );
      },
      profilType: profilType,
      clearResults: () => store.dispatch(ClearPsResultsAction()),
    );
  }

  static List<ActeurDeSanteAdresse> _removeDuplicatedAdresses(List<ActeurDeSanteAdresse> adresses) {
    final Set<String> uniqueAddresses = {};
    return adresses.where((address) {
      if (uniqueAddresses.contains(address.cityZipCode)) {
        return false;
      } else {
        uniqueAddresses.add(address.cityZipCode.toString());
        return true;
      }
    }).toList();
  }

  @override
  List<Object?> get props => [status, ps, profilType];
}

class RecherchePsScreenArgument {
  final String firstName;
  final String lastName;
  final RecherchePSType psSearchType;

  RecherchePsScreenArgument({this.firstName = '', this.lastName = '', required this.psSearchType});
}

class ProfessionnelSanteDisplayModel extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String? profession;
  final String? speciality;
  final List<ActeurDeSanteAdresse> addresses;
  final bool isActive;

  const ProfessionnelSanteDisplayModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.profession,
    this.speciality,
    required this.addresses,
    required this.isActive,
  });

  PsProfessionLinkToRole? get typeOfProfession => PsProfessionLinkToRole.fromPsProfession(profession);

  bool get shouldDisplayAddWithRoleBottomSheet => typeOfProfession != null && isPsRoleSfrPcEnabled;

  @override
  List<Object?> get props => [id, firstName, lastName, profession, speciality, addresses, isActive];
}

extension _ProfessionnelsDeSanteProfessionExtension on String {
  String _cleanProfession() => split(',')
      .map((professionName) => professionName.trim())
      .where((professionName) => professionName.toLowerCase() != 'salarié en poste fixe')
      .join(', ');
}

extension _ProfessionnelsDeSanteSpecialityExtension on String {
  String _cleanSpeciality() => split(',').map((s) => s.trim()).toSet().join(', ');
}
