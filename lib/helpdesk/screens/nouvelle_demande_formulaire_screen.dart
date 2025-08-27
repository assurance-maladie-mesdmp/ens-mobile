/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_detail_screen.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/creating_helpdesk_ticket.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/nouvelle_demande_motif.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/send_signalement_data.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/viewmodel/nouvelle_demande_formulaire_screen_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/viewmodel/nouvelle_demande_formulaire_view_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/add_attachment_file_button.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/tags/tags_aide.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_checkbox_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class NouvelleDemandeFormulaireScreen extends StatelessWidget {
  static const routeName = '/espace-echange/ajouter-une-demande';

  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _messageTextInputController = TextEditingController();
  final _motifController = ValueNotifier<NouvelleDemandeMotif?>(null);
  final _consentController = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as NouvelleDemandeFormulaireScreenArguments;

    return StoreConnector<EnsState, NouvelleDemandeFormulaireScreenViewModel>(
      onInitialBuild: (vm) {
        switch (arguments.input) {
          case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
            context.tagAction(TagsDocuments.tag_852_contacter_conseiller);
          case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
            context.tagAction(TagsCatalogueServices.tag_2335_signaler_un_service);
          case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
            context.tagAction(TagsProfessionnelsDeSante.tag_2569_formulaire_signaler_acces_ps);
          case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
            context.tagAction(TagsAide.tag_2271_aide_nouvelle_demande);
            StoreProvider.of<EnsState>(context).dispatch(FetchNouvelleDemandeMotifsAction());
        }
      },
      converter: (store) => NouvelleDemandeFormulaireScreenViewModel.from(
        store: store,
        input: arguments.input,
        documentId: arguments.documentId,
        serviceName: arguments.serviceData?.serviceName,
        psFullName: arguments.psData?.psFullName,
      ),
      onWillChange: (oldVm, vm) {
        final isCreateHelpdeskTicketSuccess = oldVm?.createStatus.isNotSuccess() == true && vm.createStatus.isSuccess();
        final isSendSignalementSuccess =
            oldVm?.sendSignalementStatus.isNotSuccess() == true && vm.sendSignalementStatus.isSuccess();
        if (isCreateHelpdeskTicketSuccess || isSendSignalementSuccess) {
          vm.reinitHelpeskState();
          switch (arguments.input) {
            case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
              StoreProvider.of<EnsState>(context).dispatch(FetchDocumentsAction(force: true));
              Navigator.popUntil(context, (route) => route.isFirst);
            case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
              if (isSignalementEnabled) {
                StoreProvider.of<EnsState>(context).dispatch(
                  FetchSignalementInformationAction(
                    signalementType: SignalementType.CATALOGUE_DE_SERIVCE,
                    idToSignal: arguments.serviceData!.serviceId,
                  ),
                );
              }
              Navigator.popUntil(context, ModalRoute.withName(CatalogueServicesDetailScreen.routeName));
            case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
              if (isSignalementEnabled) {
                StoreProvider.of<EnsState>(context).dispatch(
                  FetchSignalementInformationAction(
                    signalementType: SignalementType.PS,
                    idToSignal: arguments.psData!.psIdNat,
                  ),
                );
              }
              Navigator.popUntil(context, ModalRoute.withName(ProfessionnelDeSanteDetailScreen.routeName));
            case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
              StoreProvider.of<EnsState>(context).dispatch(FetchTicketsSupportAction());
              Navigator.popUntil(context, ModalRoute.withName(NousContacterScreen.routeName));
          }
        }
      },
      distinct: true,
      builder: (_, vm) {
        bool noDataEntered() => _messageTextInputController.text.isEmpty && vm.attachments.isEmpty;
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (noDataEntered()) {
              navigator.pop();
            } else {
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
              );
              if (shouldPop) {
                vm.reinitHelpeskState();
                navigator.pop();
              }
            }
          },
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: _getAppBarTitle(arguments.input),
            ),
            body: _Body(
              shakeKey: _shakeKey,
              messageTextInputController: _messageTextInputController,
              motifController: _motifController,
              consentController: _consentController,
              viewmodel: vm,
              arguments: arguments,
            ),
          ),
        );
      },
    );
  }

  String _getAppBarTitle(FormulaireNouvelleDemandeInput input) {
    return switch (input) {
      FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT => 'Signaler un problème sur le document',
      FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE => 'Signaler ce service',
      FormulaireNouvelleDemandeInput.SIGNALER_UN_PS => 'Signaler un accès',
      FormulaireNouvelleDemandeInput.NOUS_CONTACTER => 'Nouvelle demande',
    };
  }
}

class _Body extends StatelessWidget {
  final GlobalKey<ShakeWidgetState> shakeKey;
  final TextEditingController messageTextInputController;
  final ValueNotifier<NouvelleDemandeMotif?> motifController;
  final ValueNotifier<bool> consentController;
  final NouvelleDemandeFormulaireScreenViewModel viewmodel;
  final NouvelleDemandeFormulaireScreenArguments arguments;

  const _Body({
    required this.shakeKey,
    required this.messageTextInputController,
    required this.motifController,
    required this.consentController,
    required this.viewmodel,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    final input = arguments.input;
    if (input != FormulaireNouvelleDemandeInput.NOUS_CONTACTER ||
        (input == FormulaireNouvelleDemandeInput.NOUS_CONTACTER && viewmodel.motifs.isNotEmpty)) {
      return _ContentForm(
        shakeKey: shakeKey,
        messageTextInputController: messageTextInputController,
        motifController: motifController,
        consentController: consentController,
        viewmodel: viewmodel,
        arguments: arguments,
      );
    } else if (viewmodel.motifsStatus.isError()) {
      return ErrorPage(
        reloadFunction: () => StoreProvider.of<EnsState>(context).dispatch(FetchNouvelleDemandeMotifsAction()),
      );
    } else {
      return _Loading();
    }
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
          color: EnsColors.neutral100,
          width: double.infinity,
          height: 88,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 197, height: 12),
              SizedBox(height: 16),
              SkeletonBox(width: 225, height: 12),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 16),
          color: Colors.white,
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SkeletonBox(width: 225, height: 12),
                  SkeletonBox(width: 35, height: 12),
                ],
              ),
              SizedBox(height: 12),
              SkeletonBox(width: 121, height: 12),
              SizedBox(height: 22),
              Divider(height: 2, color: EnsColors.neutral200),
              SizedBox(height: 32),
              SkeletonBox(width: 121, height: 12),
              SizedBox(height: 24),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: double.infinity, height: 12),
              SizedBox(height: 8),
              SkeletonBox(width: 80, height: 12),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContentForm extends StatelessWidget {
  final GlobalKey<ShakeWidgetState> shakeKey;
  final TextEditingController messageTextInputController;
  final ValueNotifier<NouvelleDemandeMotif?> motifController;
  final ValueNotifier<bool> consentController;
  final NouvelleDemandeFormulaireScreenViewModel viewmodel;
  final NouvelleDemandeFormulaireScreenArguments arguments;

  const _ContentForm({
    required this.shakeKey,
    required this.messageTextInputController,
    required this.motifController,
    required this.consentController,
    required this.viewmodel,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ChampsObligatoiresFormTextWidget(
              displayFullText: arguments.input != FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT,
            ),
          ),
          _Form(
            shakeKey: shakeKey,
            messageTextInputController: messageTextInputController,
            motifController: motifController,
            consentController: consentController,
            vm: viewmodel,
            arguments: arguments,
          ),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final GlobalKey<ShakeWidgetState> shakeKey;
  final TextEditingController messageTextInputController;
  final ValueNotifier<NouvelleDemandeMotif?> motifController;
  final ValueNotifier<bool> consentController;
  final NouvelleDemandeFormulaireScreenViewModel vm;
  final NouvelleDemandeFormulaireScreenArguments arguments;

  const _Form({
    required this.shakeKey,
    required this.messageTextInputController,
    required this.motifController,
    required this.consentController,
    required this.vm,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    final input = arguments.input;
    return EnsForm(
      formKey: _formKey,
      shakeKey: shakeKey,
      scrollController: _scrollController,
      padding: EdgeInsets.zero,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Profil concerné : ${vm.profileFullName}',
                    style: EnsTextStyle.text16_w600_normal_title,
                  ),
                  if (vm.profilType.isProfilPrincipal) ...[
                    const SizedBox(height: 8),
                    const SizedBox(height: 8),
                    const Text(
                      'Vous souhaitez faire une demande pour un membre de votre famille ? Veuillez la faire depuis son profil.',
                      style: EnsTextStyle.text16_w400_normal_body,
                    ),
                  ],
                  const SizedBox(height: 24),
                  _Motif(vm: vm, input: input, motifController: motifController),
                  const SizedBox(height: 24),
                  CountedTextInput.withBorders(
                    label: 'Message',
                    description: 'Je précise mon problème',
                    controller: messageTextInputController,
                    maxCharacters: vm.maxCharacters,
                    maxLines: 6,
                    textInputAction: TextInputAction.newline,
                    validatorCallback: (value) {
                      final errorLimitCharacters = limitCharactersFieldValidator(
                        value: value,
                        maxCharacters: vm.maxCharacters,
                        errorMessage: 'le message est limité à ${vm.maxCharacters} caractères.',
                      );
                      final errorMessageNotUpdated = noMoreCharactersEnteredFieldValidator(
                        value,
                        'Préciser le problème rencontré',
                      );
                      return errorLimitCharacters ?? errorMessageNotUpdated;
                    },
                  ),
                  if (_RESPONSABLE_LEGAL_REASONS.contains(motifController.value?.id)) ...[
                    const SizedBox(height: 16),
                    const EnsRichText(
                      text: TextSpan(
                        text: 'Pour traiter votre demande, veuillez ajouter à votre message les documents suivants : ',
                        style: EnsTextStyle.text16_w400_normal_body,
                        children: [
                          TextSpan(
                            text:
                                'une copie de votre carte d\'identité, une copie de votre livret de famille et une attestation sur l\'honneur que vous êtes bien responsable légal de votre enfant.',
                            style: EnsTextStyle.text16_w700_body,
                          ),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: 32),
                ],
              ),
            ),
            if (input == FormulaireNouvelleDemandeInput.NOUS_CONTACTER) ...[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                color: EnsColors.light,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const Text('Documents (facultatif)', style: EnsTextStyle.text14_w600_normal_body),
                    if (vm.attachments.isNotEmpty) const SizedBox(height: 16),
                    ...vm.attachments.map(
                      (attachment) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: FileAttachmentWidget(
                          dm: FileAttachmentDisplayModel(
                            documentId: attachment.filename,
                            name: attachment.filename,
                          ),
                          onRemove: () {
                            vm.removeAttachment(attachment);
                          },
                        ),
                      ),
                    ),
                    AddAttachmentFileButton(
                      label: 'Ajouter un document',
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        NouvelleDemandeFormulaireViewHelper().openAddAttachmentBottomSheet(context, vm);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  EnsCheckboxFormField(
                    label:
                        '(Facultatif) J\'autorise les agents habilités à accéder aux données relatives à ce profil ainsi qu\'à l\'historique des actions réalisées sur Mon espace santé, dans le cas où ma demande le nécessiterait.',
                    errorType: EnsCheckboxFormFieldErrorType.NONE,
                    onChange: (checkValue) {
                      if (checkValue != null) {
                        consentController.value = checkValue;
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  EnsCheckboxFormField(
                    label:
                        'Je m\'engage à ne pas tenir de propos ou envoyer de documents pouvant constituer une infraction pénale et/ou porter atteinte aux droits d\'autrui, sous peine de poursuites judiciaires.',
                    errorType: EnsCheckboxFormFieldErrorType.ERROR_TEXT,
                    textError: 'Pour continuer, vous devez cocher la case',
                    linkText: EnsLinkText(
                      label: 'En savoir plus',
                      textPadding: const EdgeInsets.symmetric(vertical: 12),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const InformationBottomSheet(
                              title: 'Conditions d\'utilisation',
                              description: Center(
                                child: Text(
                                  'L\'utilisation de ce service doit se faire dans le respect des dispositions légales et réglementaires en vigueur. Vous vous engagez à ne pas tenir de propos ou envoyer de documents pouvant constituer une infraction pénale et/ou porter atteinte aux droits d\'autrui, sous peine de poursuites judiciaires.',
                                  style: EnsTextStyle.text16_w400_normal_body,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: EnsButton(
                          label: 'Envoyer',
                          onTap: () {
                            switch (input) {
                              case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
                                context.tagAction(TagsDocuments.tag_851_button_envoyer_contact_conseiller);
                              case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
                                context.tagAction(TagsCatalogueServices.tag_2336_button_envoyer_signaler_un_service);
                              case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
                                context.tagAction(
                                  TagsProfessionnelsDeSante.tag_2570_button_formulaire_signalement_acces_ps_envoyer,
                                );
                              case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
                                context.tagAction(TagsAide.tag_2272_button_envoyer_nouvelle_demande);
                            }
                            _validateAndSend(
                              context,
                              vm: vm,
                              arguments: arguments,
                              motif: motifController.value,
                            );
                          },
                          isLoading: vm.createStatus.isLoading() || vm.sendSignalementStatus.isLoading(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validateAndSend(
    BuildContext context, {
    required NouvelleDemandeFormulaireScreenViewModel vm,
    required NouvelleDemandeFormulaireScreenArguments arguments,
    NouvelleDemandeMotif? motif,
  }) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final input = arguments.input;
      switch (input) {
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
          if (isSignalementEnabled) {
            vm.sendSignalement(
              SendSignalementData(
                signalementType: SignalementType.CATALOGUE_DE_SERIVCE,
                idToSignal: arguments.serviceData!.serviceId,
                nom: arguments.serviceData!.serviceName,
                description: _getMessage(input, vm.sendingMessage, messageTextInputController),
                hasConsent: consentController.value,
              ),
            );
          } else {
            vm.createHelpdeskTicket(
              CreatingHelpdeskTicket(
                reason: _getReasonValue(input, motif),
                message: _getMessage(input, vm.sendingMessage, messageTextInputController),
                hasConsent: consentController.value,
                attachments: vm.attachments,
                idDoc: arguments.documentId,
              ),
            );
          }
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
          vm.sendSignalement(
            SendSignalementData(
              signalementType: SignalementType.PS,
              idToSignal: arguments.psData!.psIdNat,
              nom: arguments.psData!.psFullName,
              description: _getMessage(input, vm.sendingMessage, messageTextInputController),
              hasConsent: consentController.value,
            ),
          );
        case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
          if (isSignalementEnabled) {
            vm.sendSignalement(
              SendSignalementData(
                signalementType: SignalementType.DOCUMENT,
                idToSignal: arguments.documentId!,
                nom: vm.documentName ?? '',
                description: _getMessage(input, vm.sendingMessage, messageTextInputController),
                hasConsent: consentController.value,
              ),
            );
          } else {
            vm.createHelpdeskTicket(
              CreatingHelpdeskTicket(
                reason: _getReasonValue(input, motif),
                message: _getMessage(input, vm.sendingMessage, messageTextInputController),
                hasConsent: consentController.value,
                attachments: vm.attachments,
                idDoc: arguments.documentId,
              ),
            );
          }
        case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
          if (motif != null) {
            vm.createHelpdeskTicket(
              CreatingHelpdeskTicket(
                reason: _getReasonValue(input, motif),
                message: _getMessage(input, vm.sendingMessage, messageTextInputController),
                hasConsent: consentController.value,
                attachments: vm.attachments,
                idDoc: arguments.documentId,
              ),
            );
          } else {
            shakeKey.currentState?.shake();
          }
      }
    }).onInvalid(() {
      shakeKey.currentState?.shake();
    });
  }

  String _getReasonValue(FormulaireNouvelleDemandeInput input, NouvelleDemandeMotif? motif) {
    return switch (input) {
      FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT => _DOCUMENT_REASON,
      FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE => _CATALOGUE_REASON,
      FormulaireNouvelleDemandeInput.SIGNALER_UN_PS => _PS_REASON,
      FormulaireNouvelleDemandeInput.NOUS_CONTACTER => motif!.id,
    };
  }

  String _getMessage(
    FormulaireNouvelleDemandeInput input,
    String sendingMessage,
    TextEditingController messageTextInputController,
  ) {
    switch (input) {
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
        return '${vm.sendingMessage}\n\n${messageTextInputController.text}';
      case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
        return messageTextInputController.text;
    }
  }
}

class _Motif extends StatelessWidget {
  final NouvelleDemandeFormulaireScreenViewModel vm;
  final FormulaireNouvelleDemandeInput input;
  final ValueNotifier<NouvelleDemandeMotif?> motifController;

  const _Motif({required this.vm, required this.input, required this.motifController});

  @override
  Widget build(BuildContext context) {
    switch (input) {
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Motif : Mes documents', style: EnsTextStyle.text16_w600_normal_title),
            const SizedBox(height: 8),
            Text(vm.defaultMessage, style: EnsTextStyle.text16_w400_normal_body),
          ],
        );
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Motif : Signaler un service', style: EnsTextStyle.text16_w600_normal_title),
            const SizedBox(height: 8),
            Text(vm.defaultMessage, style: EnsTextStyle.text16_w400_normal_body),
          ],
        );
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Motif : Signaler l\'accès d\'un professionnel de santé sans consentement',
              style: EnsTextStyle.text16_w600_normal_title,
            ),
            const SizedBox(height: 8),
            Text(vm.defaultMessage, style: EnsTextStyle.text16_w400_normal_body),
          ],
        );
      case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
        if (vm.motifs.isNotEmpty) {
          return EnsDropDown(
            key: _dropdownKey,
            label: 'Motif de la demande',
            description: 'Sélectionner une option',
            controller: motifController,
            hint: '- Choisir un motif -',
            context: context,
            borderRadius: BorderRadius.circular(4),
            items: vm.motifs,
            itemFormater: (motif) => motif?.label ?? '- Choisir un motif -',
            validator: _requiredMotif,
          );
        } else {
          return Container();
        }
    }
  }

  String? _requiredMotif(NouvelleDemandeMotif? motif) {
    if (motif == null) {
      return 'Choisir un motif';
    }
    return null;
  }
}

final _formKey = GlobalKey<FormState>();
final _scrollController = ScrollController();
final _dropdownKey = GlobalKey();

const _DOCUMENT_REASON = '3';
const _PS_REASON = '4';
const _CATALOGUE_REASON = '6';
const _AJOUT_RESPONSABLE_LEGAL_REASON = '12';
const _SUPPRESSION_RESPONSABLE_LEGAL_REASON = '13';

const _RESPONSABLE_LEGAL_REASONS = [_AJOUT_RESPONSABLE_LEGAL_REASON, _SUPPRESSION_RESPONSABLE_LEGAL_REASON];
