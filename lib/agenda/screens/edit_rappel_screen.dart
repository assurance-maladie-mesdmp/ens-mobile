/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/edit_rappel_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

const COMMENT_MAX_CHARACTER = 1000;
const TITLE_MAX_CHARACTER = 100;

class EditRappelScreen extends StatelessWidget {
  static const routeName = '/editRappelScreen';

  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final ScrollController _scrollController = ScrollController();
  final _titleTextInputController = TextEditingController();
  final _rappelDateController = ValueNotifier<DateTime?>(null);
  final _rappelHeureController = ValueNotifier<TimeOfDay?>(null);
  final _commentController = TextEditingController();
  final _rappelLabelFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final rappelArgument = ModalRoute.of(context)!.settings.arguments as RappelItemDisplayModel?;

    return StoreConnector<EnsState, EditRappelScreenViewModel>(
      converter: (store) => EditRappelScreenViewModel.from(store),
      onWillChange: (oldVm, vm) {
        if (oldVm?.editStatus.isNotSuccess() == true && vm.editStatus.isSuccess()) {
          StoreProvider.of<EnsState>(context).dispatch(ReinitEditRappelStatusAction());
          Navigator.pop(context);
        }
      },
      onInitialBuild: (viewModel) {
        rappelArgument?.id != null
            ? context.tagAction(TagsAgenda.tag_942_popin_modif_rappel)
            : context.tagAction(TagsAgenda.tag_947_ajouter_rappel);
      },
      distinct: true,
      builder: (_, vm) {
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (_noDataEntered()) {
              navigator.pop();
            } else {
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
              );
              if (shouldPop) {
                navigator.pop();
              }
            }
          },
          child: _Form(
            vm,
            _scrollController,
            _titleTextInputController,
            _rappelDateController,
            _rappelHeureController,
            _commentController,
            _formKey,
            _shakeKey,
            rappelArgument,
            rappelArgument?.id != null,
            _rappelLabelFocus,
          ),
        );
      },
    );
  }

  bool _noDataEntered() {
    return _titleTextInputController.text.isEmpty &&
        _commentController.text.isEmpty &&
        _rappelDateController.value == null &&
        _rappelHeureController.value == null;
  }
}

class _Form extends StatefulWidget {
  final EditRappelScreenViewModel viewModel;
  final ScrollController _scrollController;
  final TextEditingController _titleTextInputController;
  final ValueNotifier<DateTime?> _rappelDateController;
  final ValueNotifier<TimeOfDay?> _rappelHeureController;
  final TextEditingController _commentController;
  final GlobalKey<FormState> _formKey;
  final GlobalKey<ShakeWidgetState> _shakeKey;
  final RappelItemDisplayModel? _rappelArgument;
  final bool isUpdateForm;
  final FocusNode _rappelLabelFocus;

  const _Form(
    this.viewModel,
    this._scrollController,
    this._titleTextInputController,
    this._rappelDateController,
    this._rappelHeureController,
    this._commentController,
    this._formKey,
    this._shakeKey,
    this._rappelArgument,
    this.isUpdateForm,
    this._rappelLabelFocus,
  );

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  @override
  void initState() {
    super.initState();
    _initializeForm(context);
  }

  @override
  void dispose() {
    widget._rappelLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: widget.isUpdateForm ? 'Modifier le rappel' : 'Ajouter un rappel'),
      body: SafeArea(
        child: EnsForm(
          formKey: widget._formKey,
          shakeKey: widget._shakeKey,
          scrollController: widget._scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              ChampsObligatoiresFormTextWidget(
                displayFullText: true,
                focusNode: widget._rappelLabelFocus,
              ),
              const SizedBox(height: 16),
              _TitleField(
                titleTextInputController: widget._titleTextInputController,
              ),
              _DateAndTimeFields(
                rappelDateController: widget._rappelDateController,
                rappelHeureController: widget._rappelHeureController,
              ),
              _CommentField(commentController: widget._commentController),
              _ValidateButton(
                onValidate: () {
                  widget.isUpdateForm
                      ? context.tagAction(TagsAgenda.tag_943_button_validation_modif_rappel)
                      : context.tagAction(TagsAgenda.tag_948_button_valider_ajouter_rappel);
                  _validateAndSend(widget.viewModel);
                },
                isLoading: widget.viewModel.editStatus.isLoading(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validateAndSend(EditRappelScreenViewModel vm) {
    final validation = widget._formKey.validate();
    validation.onValid(() {
      final rappelDate = widget._rappelDateController.value ?? DateTime.now();
      final rappelHeure = widget._rappelHeureController.value ?? TimeOfDay.now();
      final dateOfRRappel = DateTime(
        rappelDate.year,
        rappelDate.month,
        rappelDate.day,
        rappelHeure.hour,
        rappelHeure.minute,
      ).toUtc();

      vm.addOrUpdateRappel(
        widget._rappelArgument?.id,
        widget._titleTextInputController.text,
        dateOfRRappel,
        widget._commentController.text,
      );
    }).onInvalid(() {
      widget._shakeKey.currentState?.shake();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => widget._scrollController
              .animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn),
        );
      } else {
        widget._rappelLabelFocus.requestFocus();
      }
    });
  }

  void _initializeForm(BuildContext context) {
    if (widget._rappelArgument != null) {
      widget._titleTextInputController.text = widget._rappelArgument?.titre ?? '';
      widget._rappelDateController.value = widget._rappelArgument?.date;
      widget._rappelHeureController.value = widget._rappelArgument != null
          ? TimeOfDay(hour: widget._rappelArgument!.date.hour, minute: widget._rappelArgument!.date.minute)
          : null;
      widget._commentController.text = widget._rappelArgument?.commentaire ?? '';
    }
  }
}

class _TitleField extends StatelessWidget {
  final TextEditingController titleTextInputController;

  const _TitleField({required this.titleTextInputController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: CountedTextInput.withBorders(
        label: 'Titre du rappel',
        description: 'Ex : Envoyer les analyses',
        controller: titleTextInputController,
        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
        maxCharacters: TITLE_MAX_CHARACTER,
        validatorCallback: (String? value) => requiredLimitedTextFieldValidator(
          value,
          maxCharacters: TITLE_MAX_CHARACTER,
          nullErrorMessage: 'Le titre est obligatoire',
        ),
      ),
    );
  }
}

class _DateAndTimeFields extends StatelessWidget {
  final ValueNotifier<DateTime?> rappelDateController;
  final ValueNotifier<TimeOfDay?> rappelHeureController;

  const _DateAndTimeFields({
    required this.rappelDateController,
    required this.rappelHeureController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          EnsInputDate(
            label: 'Date',
            hint: '',
            controller: rappelDateController,
            context: context,
            validator: (value) => EnsInputDateValidator().validate(
              rappelDateController.value,
              emptyMessage: 'La date est obligatoire',
            ),
            firstDate: DateTime.now(),
          ),
          const SizedBox(height: 24),
          EnsInputTime(
            context: context,
            controller: rappelHeureController,
            validator: (value) => requiredFieldValidator(
              rappelHeureController.value,
              errorText: 'L\'heure est obligatoire',
            ),
            enabled: true,
            hint: 'heure',
            label: 'Heure',
          ),
        ],
      ),
    );
  }
}

class _CommentField extends StatelessWidget {
  final TextEditingController commentController;

  const _CommentField({required this.commentController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: CountedTextInput.withBorders(
        label: 'Note personnelle (facultatif)',
        controller: commentController,
        maxCharacters: COMMENT_MAX_CHARACTER,
        maxLines: 7,
        validatorCallback: (value) => limitCharactersFieldValidator(
          value: value,
          maxCharacters: COMMENT_MAX_CHARACTER,
          errorMessage: 'la note personnelle est limitée à $COMMENT_MAX_CHARACTER caractères',
        ),
        textInputAction: TextInputAction.newline,
      ),
    );
  }
}

class _ValidateButton extends StatelessWidget {
  final void Function() onValidate;
  final bool isLoading;

  const _ValidateButton({required this.onValidate, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: Row(
        children: [
          Expanded(
            child: EnsButton(
              label: 'Valider',
              onTap: onValidate,
              isLoading: isLoading,
            ),
          ),
        ],
      ),
    );
  }
}
