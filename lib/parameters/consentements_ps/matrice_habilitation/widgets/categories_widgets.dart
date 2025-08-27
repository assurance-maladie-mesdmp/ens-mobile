/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../screens/matrice_habilitation_screen.dart';

class _CategoriesDropDown extends StatelessWidget {
  const _CategoriesDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: StoreConnector<EnsState, MatriceHabilitationCategorieViewModel>(
        converter: (store) => MatriceHabilitationCategorieViewModel.from(store),
        distinct: true,
        onInit: (store) {
          store.dispatch(FetchMatriceCategorieDocumentAction());
        },
        onDidChange: (_, vm) {
          if (vm.categorieStatus.isError()) {
            context.tagAction(TagsParameters.tag_840_compte_erreur_chargement_matrice_categorie_document);
          }
        },
        builder: (context, vm) {
          switch (vm.categorieStatus) {
            case ScreenStatus.ERROR:
              return const SizedBox();
            case ScreenStatus.LOADING:
              return const SkeletonBox(width: 312, height: 56);
            case ScreenStatus.SUCCESS:
              return _DropDownCategorie(vm.matriceCategoriesDocument, vm.selectedCategorie, vm.onNewCategorieSelected);
          }
        },
      ),
    );
  }
}

class _DropDownCategorie extends StatefulWidget {
  final List<EnsMatriceCategorieDocument> matriceCategoriesDocument;
  final EnsMatriceCategorieDocument selectedCategorie;
  final void Function(EnsMatriceCategorieDocument newCategorieSelected) onNewCategorieSelected;

  const _DropDownCategorie(this.matriceCategoriesDocument, this.selectedCategorie, this.onNewCategorieSelected);

  @override
  State<_DropDownCategorie> createState() => _DropDownCategorieState();
}

class _DropDownCategorieState extends State<_DropDownCategorie> {
  late final ValueNotifier<EnsMatriceCategorieDocument> controller;

  @override
  void initState() {
    super.initState();
    controller = ValueNotifier(widget.selectedCategorie);
    controller.addListener(() {
      widget.onNewCategorieSelected(controller.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EnsDropDown<EnsMatriceCategorieDocument>(
      context: context,
      label: 'Catégorie du document',
      controller: controller,
      borderRadius: BorderRadius.circular(4),
      items: widget.matriceCategoriesDocument,
      itemFormater: (EnsMatriceCategorieDocument? categorie) => categorie?.libelle ?? '',
    );
  }
}
