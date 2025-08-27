/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/data/vaccinations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/carte_vaccinations.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/editing_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';

class GuestVaccinationsRepository extends IVaccinationsRepository {
  final List<EnsVaccination> _vaccinations = [
    EnsVaccination(
      id: '0',
      refId: '0',
      name: 'PFIZER COMINARTY',
      effectiveTime: DateTime(2021, 2, 2),
      comment: 'De la fièvre pendant 3 jours',
      lotNumber: 'EW2239',
      typeOfAdministration: TypeOfAdministration.INITIMMUNIZ,
      author: 'Jacqueline Chantoux',
      nomVaccinateur: 'MICHEL VAZIN',
      pathologies: 'COVID-19',
      recommandation: VaccinationNiveauRecommandation.RECOMMANDE,
      authoredByPatient: false,
    ),
  ];

  @override
  Future<RequestResult<EditingVaccination>> addVaccination(String patientId, EditingVaccination editingVaccination) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteVaccination(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<List<EnsVaccination>>> getVaccinations(String patientId) {
    return Future.value(RequestResultSuccess<List<EnsVaccination>>(_vaccinations.copy()));
  }

  @override
  Future<RequestResult<EditingVaccination>> updateVaccination(String patientId, EditingVaccination editingVaccination) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<List<EnsVaccin>>> getVaccins() {
    final List<EnsVaccin> vaccins = [
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: ['123'],
        label: 'PFIZER COMINARTY',
        pathologies: 'COVID-19',
        marketingStart: DateTime(2020, 1, 3),
        marketingEnd: DateTime(2051, 1, 20),
      ),
      EnsVaccin(
        vaccineRefId: '1',
        cipCodes: ['234'],
        label: 'PFIZER COMINARTY-2',
        pathologies: 'COVID-19',
        marketingStart: DateTime(2021, 1, 3),
        marketingEnd: DateTime(2041, 1, 20),
      ),
      EnsVaccin(
        vaccineRefId: '2',
        cipCodes: ['345'],
        label: 'PFIZER COMINARTY-3',
        pathologies: 'COVID-19',
        marketingStart: DateTime(2022, 1, 3),
        marketingEnd: DateTime(2041, 1, 20),
      ),
      EnsVaccin(
        vaccineRefId: '1',
        cipCodes: [''],
        label: 'PFIZER COMINARTY',
        pathologies: 'COVID-19',
        marketingStart: DateTime(2022, 12, 31),
      ),
      EnsVaccin(
        vaccineRefId: '3',
        cipCodes: ['456'],
        label: 'MODERNA',
        pathologies: 'COVID-19',
        marketingEnd: DateTime(2038, 1, 20),
      ),
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: [''],
        label: 'REPEVAX',
        pathologies: 'Diphtérie, Tétanos, Poliomyélite, Coqueluche',
        marketingEnd: DateTime(2068, 2, 29),
      ),
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: [''],
        label: 'VACCIN DTP PASTEUR',
        pathologies: 'Diphtérie, Tétanos, Poliomyélite',
        marketingEnd: DateTime(2068, 2, 20),
      ),
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: [''],
        label: 'Adacel3',
        pathologies: 'Diphtérie, Tétanos, Coqueluche (Pertussis)',
      ),
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: [''],
        label: 'Adacel2',
        pathologies: 'Diphtérie, Tétanos, Coqueluche (Pertussis)',
      ),
      EnsVaccin(
        vaccineRefId: '0',
        cipCodes: [''],
        label: 'PRIORIX',
        pathologies: 'Rougeole, Oreillon, Rubéole',
        marketingStart: DateTime(2023, 1, 1),
      ),
    ];
    return Future.value(RequestResultSuccess(vaccins));
  }

  @override
  Future<RequestResult<CarteVaccinations>> getCarteVaccinations() {
    return Future.value(
      RequestResultSuccess(
        const CarteVaccinations(
          title: 'calendrier des vaccinations',
          subtitle: '',
          imageLink: '',
          descriptions: [''],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<EnsVaccin>> getVaccinByCodeCip(String cipcode) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
