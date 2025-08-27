/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande_extension.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:redux/redux.dart';

class ExamenRecommandeDetailViewModel extends Equatable {
  final AllPurposesStatus screenStatus;
  final ExamenStatus examenStatus;
  final String? chipStatusLabel;
  final List<ExamenStatus> dropdownStatus;
  final String title;
  final String dateDebut;
  final DateTime? dateRealisation;
  final String formattedDateRealisation;
  final ExamenLink? link;
  final String body;
  final String? type;
  final VaccinationNiveauRecommandation? niveauRecommandation;
  final void Function(ExamenStatus, DateTime? dateRealisation) updateStatus;
  final void Function(String?) loadNotificationsForProfil;
  final void Function() hideSnackbar;

  const ExamenRecommandeDetailViewModel({
    required this.title,
    required this.dateDebut,
    required this.link,
    required this.examenStatus,
    required this.chipStatusLabel,
    required this.body,
    required this.type,
    required this.dropdownStatus,
    required this.updateStatus,
    required this.loadNotificationsForProfil,
    required this.screenStatus,
    required this.formattedDateRealisation,
    this.dateRealisation,
    required this.hideSnackbar,
    this.niveauRecommandation,
  });

  factory ExamenRecommandeDetailViewModel.fromStore(Store<EnsState> store, String id, DateTime dateDebut) {
    final examensState = store.state.agendaState.examensRecommandesState;

    final examen = _findExamen(examensState.examens, id, dateDebut);

    AllPurposesStatus screenStatus = AllPurposesStatus.LOADING;
    if (examensState.status.isError() || (examensState.status.isSuccess() && examen == null)) {
      screenStatus = AllPurposesStatus.ERROR;
    } else if (examensState.status.isSuccess()) {
      screenStatus = AllPurposesStatus.SUCCESS;
    }
    final now = clock.now().toLocal();
    final examenStatus = examen?.status ?? ExamenStatus.A_PLANIFIER;
    final shouldDisplayChip =
        examen != null && (examen.startDate.isBefore(now) || examen.status != ExamenStatus.A_PLANIFIER);

    return ExamenRecommandeDetailViewModel(
      screenStatus: screenStatus,
      examenStatus: examenStatus,
      title: examen?.title ?? '',
      type: examen?.type,
      niveauRecommandation: examen?.niveauRecommandation,
      dateDebut: examen != null
          ? 'Du ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(examen.startDate)} au ${EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(examen.endDate)}'
          : '',
      formattedDateRealisation: examen?.dateRealisation != null
          ? EnsDateUtils.formatSimpleDayPlainTextMonthAndYear(examen!.dateRealisation!)
          : 'Non renseigné',
      dateRealisation: examen?.dateRealisation,
      link: examen != null && examen.linkUrl != '' && examen.linkLabel != ''
          ? ExamenLink(label: examen.linkLabel, url: examen.linkUrl)
          : null,
      body: examen?.body ?? '',
      chipStatusLabel: shouldDisplayChip ? examen.toChipLabel() : null,
      dropdownStatus: examen != null ? _getDropdownStatus(examen) : const [],
      updateStatus: (status, dateRealisation) {
        store.dispatch(
          UpdateExamenStatusAction(
            status: status,
            previousStatus: examenStatus,
            examenId: id,
            dateDebut: dateDebut,
            dateRealisation: dateRealisation,
          ),
        );
      },
      loadNotificationsForProfil: (String? patientId) {
        if (examen == null) {
          store.dispatch(FetchExamenRecommandeByCodeAndDateAction(code: id, date: dateDebut));
        }
      },
      hideSnackbar: () => store.dispatch(const HideSnackBarAction()),
    );
  }

  static ExamenRecommande? _findExamen(List<ExamenRecommande> examens, String id, DateTime dateDebut) {
    final examensById = examens.where((examen) => examen.id == id);

    if (examensById.isNotEmpty) {
      if (examensById.length > 1) {
        return examensById.firstWhere((examen) => examen.startDate == dateDebut);
      } else {
        return examensById.first;
      }
    } else {
      return null;
    }
  }

  bool get isVaccination => type?.toLowerCase() == 'vaccination';

  @override
  List<Object?> get props => [
        title,
        dateDebut,
        link,
        examenStatus,
        chipStatusLabel,
        body,
        dropdownStatus,
        screenStatus,
        type,
        formattedDateRealisation,
        dateRealisation,
        niveauRecommandation,
      ];
}

List<ExamenStatus> _getDropdownStatus(ExamenRecommande examen) {
  final now = clock.now();
  if (examen.startDate.isAfter(now)) {
    return [];
  } else if (examen.endDate.isAfter(now)) {
    return [ExamenStatus.A_PLANIFIER, ExamenStatus.REALISE, ExamenStatus.NON_REALISE];
  } else {
    return [ExamenStatus.NON_RENSEIGNE, ExamenStatus.REALISE, ExamenStatus.NON_REALISE];
  }
}

class ExamenLink extends Equatable {
  final String label;
  final String url;

  const ExamenLink({required this.label, required this.url});

  @override
  List<Object?> get props => [label, url];
}
