/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/empty_message_info_box.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:intl/intl.dart' as intl;

class SelectDestinataireScreen extends StatelessWidget {
  static const routeName = '/addRecipients';
  final TextEditingController _contentTextInputController = TextEditingController();
  final _recipientController = ValueNotifier<ContactItemDisplayModel?>(null);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const EnsAppBarSubLevel(
        title: 'Sélectionner un destinataire',
      ),
      body: _SelectRecipientsSuccessForm(
        contentTextInputController: _contentTextInputController,
        recipientController: _recipientController,
        formKey: _formKey,
        scrollController: _scrollController,
      ),
    );
  }
}

class _SelectRecipientsSuccessForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ScrollController scrollController;
  final TextEditingController contentTextInputController;
  final ValueNotifier<ContactItemDisplayModel?> recipientController;

  const _SelectRecipientsSuccessForm({
    required this.formKey,
    required this.scrollController,
    required this.contentTextInputController,
    required this.recipientController,
  });

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as ContactItemDisplayModel?;
    return LayoutBuilder(
      builder: (_, constraints) {
        return EnsForm(
          formKey: formKey,
          scrollController: scrollController,
          padding: EdgeInsets.zero,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Text('Nouveau message', style: EnsTextStyle.text20_w400_normal_title),
                  ),
                  Flexible(
                    child: ColoredBox(
                      color: EnsColors.light,
                      child: Material(
                        color: Colors.transparent,
                        child: _SelectDestinataireForm(
                          controller: recipientController,
                          initialValue: arg,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SelectDestinataireForm extends StatefulWidget {
  final ValueNotifier<ContactItemDisplayModel?> controller;
  final ContactItemDisplayModel? initialValue;

  const _SelectDestinataireForm({required this.controller, required this.initialValue});

  @override
  State<_SelectDestinataireForm> createState() => _SelectDestinataireFormState();
}

class _SelectDestinataireFormState extends State<_SelectDestinataireForm> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() => setState(() {}));
    widget.controller.value = widget.initialValue;
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _SelectRecipientField(
      controller: widget.controller,
      textController: _textController,
      validatorCallback: (value) {
        if (value == null) return 'Ajouter un destinataire';
        return null;
      },
    );
  }
}

class _SelectRecipientField extends FormField<ContactItemDisplayModel?> {
  final ValueNotifier<ContactItemDisplayModel?> controller;
  final TextEditingController textController;
  final String? Function(ContactItemDisplayModel?) validatorCallback;

  _SelectRecipientField({
    required this.controller,
    required this.textController,
    required this.validatorCallback,
  }) : super(
          initialValue: controller.value,
          validator: (_) => validatorCallback(controller.value),
          builder: (FormFieldState<ContactItemDisplayModel?> state) {
            return Stack(
              children: [
                Column(
                  children: [
                    MergeSemantics(
                      child: EnsInkWell(
                        focusColor: Colors.white,
                        onTap: () {
                          state.context.tagAction(TagsMessagerie.tag_836_button_liste_destinataire);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (state.hasError)
                                EnsErrorText(
                                  text: state.errorText!,
                                  padding: const EdgeInsets.only(bottom: 8),
                                ),
                              Row(
                                children: [
                                  const Text(
                                    'À :',
                                    style: EnsTextStyle.text14_w400_normal_body,
                                    semanticsLabel: 'Choix du destinataire',
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: controller.value != null
                                        ? Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: EnsColors.neutral200,
                                              ),
                                              child: Text(
                                                controller.value!.name.capitalizeName(),
                                                style: EnsTextStyle.text16_w400_normal_title,
                                              ),
                                            ),
                                          )
                                        : TextFormField(
                                            autofocus: true,
                                            controller: textController,
                                            cursorColor: EnsColors.primary,
                                            style: EnsTextStyle.text16_w400_normal_title,
                                            decoration: const InputDecoration(
                                              isDense: true,
                                              contentPadding: EdgeInsets.zero,
                                              border: InputBorder.none,
                                              suffixIconConstraints: BoxConstraints(),
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: StoreConnector<EnsState, SelectRecipientFormFieldViewModel>(
                        converter: (store) => SelectRecipientFormFieldViewModel.from(store, textController.text),
                        distinct: true,
                        onInit: (store) => store.dispatch(const FetchPharmaciesSuggestionsAction()),
                        onInitialBuild: (vm) {
                          controller.addListener(() {
                            if (controller.value?.mail != null) {
                              vm.createContact(controller.value!.mail!, controller.value!.name, controller.value!.id);
                            }
                            if (controller.value != null) {
                              Navigator.pop(
                                state.context,
                                ContactItemDisplayModel(
                                  id: controller.value?.id ?? '',
                                  name: controller.value?.name ?? '',
                                  mail: controller.value?.mail,
                                  adresse: controller.value?.adresse,
                                  isAPharmacie: controller.value?.isAPharmacie,
                                ),
                              );
                            }
                          });
                        },
                        builder: (context, vm) {
                          return Container(
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: MediaQuery.of(context).viewInsets.bottom + 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: vm.autocompleteDisplayModels
                                  .mapIndexed((index, displayModel) {
                                    if (textController.text.isNotEmpty) {
                                      SemanticsService.announce(
                                        _getSementicLabelOnSuggestionTextValueChanged(vm.autocompleteDisplayModels),
                                        TextDirection.ltr,
                                      );
                                    }
                                    return [
                                      _ContactItem(
                                        displayModel: vm.autocompleteDisplayModels[index],
                                        controller: controller,
                                        textController: textController,
                                        state: state,
                                      ),
                                      _SeparatorContactItem(
                                        index: index,
                                        displayModelCount: vm.autocompleteDisplayModels.length,
                                        displayModel: vm.autocompleteDisplayModels[index],
                                      ),
                                    ];
                                  })
                                  .flattened
                                  .toList(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: EnsInkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      state.context.tagAction(
                        TagsMessagerie.tag_842_button_supprimer_un_destinataire,
                      );
                      controller.value = null;
                      textController.text = '';
                      state.validate();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: EnsSvg(EnsImages.ic_close_big, color: EnsColors.body, height: 12, width: 12),
                    ),
                  ),
                ),
              ],
            );
          },
        );

  static String _getSementicLabelOnSuggestionTextValueChanged(
    List<MessagerieAutocompleteItemDisplayModel> autocompleteDisplayModels,
  ) {
    final numberOfActeurDeSanteContactables =
        autocompleteDisplayModels.where((e) => e is ContactItemDisplayModel && e.mail == null).length;
    final numberOfPharmaciesFrequentees =
        autocompleteDisplayModels.where((e) => e is ContactItemDisplayModel && e.mail != null).length;

    return intl.Intl.plural(
      numberOfActeurDeSanteContactables + numberOfPharmaciesFrequentees,
      zero: 'Aucun résultat trouvé, veuillez modifier la recherche',
      other:
          '${numberOfActeurDeSanteContactables != 0 ? '$numberOfActeurDeSanteContactables professionnels de santé contactables ' : ''} ${numberOfActeurDeSanteContactables != 0 && numberOfPharmaciesFrequentees != 0 ? 'et ' : ''} ${numberOfPharmaciesFrequentees != 0 ? '$numberOfPharmaciesFrequentees pharmacies déjà fréquentées ' : ''} trouvés, parcourir les suggestions sous le champ pour sélectionner un destinataire ou affiner la recherche en entrant d\'autres caractères',
    );
  }
}

class _ContactItem extends StatelessWidget {
  final MessagerieAutocompleteItemDisplayModel displayModel;
  final ValueNotifier<ContactItemDisplayModel?> controller;
  final TextEditingController textController;
  final FormFieldState<ContactItemDisplayModel?> state;

  const _ContactItem({
    required this.displayModel,
    required this.controller,
    required this.textController,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    switch (displayModel) {
      case PsContactableHeaderDisplayModel _:
        return const _PsContactableHeader();
      case PharmacieFrequenteeHeaderDisplayModel _:
        return const _PharmacieFrequenteeHeader();
      case ContactItemDisplayModel _:
        final dm = displayModel as ContactItemDisplayModel;
        return _AutocompleteContactItem(
          onTap: () {
            context.tagAction(TagsMessagerie.tag_837_button_liste_destinataire);
            controller.value = dm;
            state.validate();
          },
          displayModel: dm,
        );
      case SearchEsDisplayModel _:
        final dm = displayModel as SearchEsDisplayModel;
        return _SearchEsItem(
          recipientController: controller,
          recipientTextController: textController,
          state: state,
          labelSearchEs: dm.labelSearchEs,
        );
      case LoadingHeaderDisplayModel _:
        return const _LoadingHeader();
      case LoadingItemDisplayModel _:
        return const _LoadingItem();
      case EmptyMessageDisplayModel _:
        return const EmptyMessageInfoBox();
      default:
        return const SizedBox();
    }
  }
}

class _PsContactableHeader extends StatelessWidget {
  const _PsContactableHeader();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text('Professionnels de santé contactables', style: EnsTextStyle.text16_w600_title),
    );
  }
}

class _PharmacieFrequenteeHeader extends StatelessWidget {
  const _PharmacieFrequenteeHeader();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text('Pharmacies déjà fréquentées', style: EnsTextStyle.text16_w600_title),
    );
  }
}

class _AutocompleteContactItem extends StatelessWidget {
  final void Function() onTap;
  final ContactItemDisplayModel displayModel;

  const _AutocompleteContactItem({required this.displayModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(displayModel.name, style: EnsTextStyle.text14_w600_normal_body),
            if (displayModel.adresse != null)
              Text(
                displayModel.adresse!,
                style: EnsTextStyle.text14_w400_normal_body,
                semanticsLabel: displayModel.adresse?.toLowerCase(),
              ),
          ],
        ),
      ),
    );
  }
}

class _SearchEsItem extends StatelessWidget {
  final ValueNotifier<ContactItemDisplayModel?> recipientController;
  final TextEditingController recipientTextController;
  final FormFieldState<ContactItemDisplayModel?> state;
  final String labelSearchEs;

  const _SearchEsItem({
    required this.recipientController,
    required this.recipientTextController,
    required this.state,
    required this.labelSearchEs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
        EnsInkWell(
          onTap: () async {
            context.tagAction(TagsMessagerie.tag_833_link_recherche_pharmacie);
            final es = await Navigator.pushNamed(
              context,
              RechercheEsScreen.routeName,
              arguments: RechercheEsScreenArgument(
                name: recipientTextController.text,
                rechercheEsType: RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE,
              ),
            ) as EtablissementDeSante?;
            recipientController.value = es != null ? ContactItemDisplayModel.fromEnsEtablissementDeSante(es) : null;
            state.validate();
            await Future.delayed(const Duration(milliseconds: 100));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                const EnsSvg(EnsImages.ic_search, color: EnsColors.primary, height: 24, width: 24),
                const SizedBox(width: 12),
                Text(labelSearchEs, style: EnsTextStyle.text14_w700_normal_primary),
              ],
            ),
          ),
        ),
        const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
      ],
    );
  }
}

class _SeparatorContactItem extends StatelessWidget {
  final int index;
  final int displayModelCount;
  final MessagerieAutocompleteItemDisplayModel displayModel;

  const _SeparatorContactItem({required this.index, required this.displayModelCount, required this.displayModel});

  @override
  Widget build(BuildContext context) {
    if (index >= displayModelCount - 2) {
      return const SizedBox();
    }
    return displayModel is ContactItemDisplayModel || displayModel is LoadingItemDisplayModel
        ? const Divider(
            height: 0,
            thickness: 1,
            color: EnsColors.neutral200,
            indent: 28,
          )
        : const Divider(height: 0, thickness: 1, color: EnsColors.neutral200);
  }
}

class _LoadingHeader extends StatelessWidget {
  const _LoadingHeader();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Align(alignment: Alignment.centerLeft, child: SkeletonBox(width: 180, height: 20)),
    );
  }
}

class _LoadingItem extends StatelessWidget {
  const _LoadingItem();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Align(alignment: Alignment.centerLeft, child: SkeletonBox(width: 100, height: 16)),
    );
  }
}
