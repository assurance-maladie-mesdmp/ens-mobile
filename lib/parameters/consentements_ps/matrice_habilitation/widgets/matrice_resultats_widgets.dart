/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../screens/matrice_habilitation_screen.dart';

class _ResultatPage extends StatelessWidget {
  const _ResultatPage();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as MatriceHabilitationScreenArgument;
    return StoreBuilder<EnsState>(
      onInit: (store) => store.dispatch(FetchMatriceResultatAction(argument.professionCode)),
      builder: (_, __) {
        return const Expanded(
          child: TabBarView(
            children: [
              _ResultatListView(
                isAccessibleTab: true,
              ),
              _ResultatListView(
                isAccessibleTab: false,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ResultatListView extends StatelessWidget {
  final bool isAccessibleTab;

  const _ResultatListView({required this.isAccessibleTab});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as MatriceHabilitationScreenArgument;
    return StoreConnector<EnsState, MatriceHabilitationResultatViewModel>(
      converter: (store) => MatriceHabilitationResultatViewModel.from(
        store,
        profession: EnsMatriceProfession(libelle: argument.professionLibelle, codeProfession: argument.professionCode),
        isAccessible: isAccessibleTab,
      ),
      distinct: true,
      onInitialBuild: (vm) {
        tagPage(context, vm, isAccessibleTab);
      },
      onDidChange: (_, vm) {
        tagPage(context, vm, isAccessibleTab);
      },
      builder: (_, vm) {
        switch (vm.resultatStatus) {
          case ScreenStatusOnEmpty.ERROR:
            return _ErrorResultatPage(vm.onReload);
          case ScreenStatusOnEmpty.LOADING:
            return const _LoaderResultat();
          case ScreenStatusOnEmpty.EMPTY:
            return _EmptyResultatTabListView(message: vm.emptyPageDisplayModel.message);
          case ScreenStatusOnEmpty.SUCCESS:
            return _Sucess(isAccessibleTab: isAccessibleTab, displayModels: vm.displayModels);
        }
      },
    );
  }
}

class _Sucess extends StatelessWidget {
  final bool isAccessibleTab;
  final List<MatriceResultatDisplayModel> displayModels;

  const _Sucess({required this.isAccessibleTab, required this.displayModels});

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
        bottom: 16 + MediaQuery.of(context).padding.bottom,
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 4),
      itemCount: displayModels.length,
      itemBuilder: (_, index) => _MatriceResultat(
        displayModels[index],
        isAccessibleTab,
      ),
    );
  }
}

class _ErrorResultatPage extends StatelessWidget {
  final void Function() reload;

  const _ErrorResultatPage(this.reload);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EnsError(reloadFunction: reload),
      ],
    );
  }
}

class _LoaderResultat extends StatelessWidget {
  const _LoaderResultat();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 20, 24, 28),
          child: SkeletonBox(width: 120),
        ),
        for (int index = 0; index < 10; index++)
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: SkeletonCircle(radius: 16),
                ),
                SkeletonBox(width: 292),
              ],
            ),
          ),
      ],
    );
  }
}

class _EmptyResultatTabListView extends StatelessWidget {
  final String message;

  const _EmptyResultatTabListView({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          const Flexible(
            flex: 5,
            child: FittedBox(
              child: EnsSvg(EnsImages.information, height: 160, width: 160),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            message,
            textAlign: TextAlign.center,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}

class _MatriceResultat extends StatelessWidget {
  final MatriceResultatDisplayModel matriceResultatDisplayModel;
  final bool isAccessible;

  const _MatriceResultat(
    this.matriceResultatDisplayModel,
    this.isAccessible,
  );

  @override
  Widget build(BuildContext context) {
    if (matriceResultatDisplayModel is InfoBoxDisplayModel) {
      return EnsPersistentInfoBox.text(matriceResultatDisplayModel.libelle);
    } else if (matriceResultatDisplayModel is CategorieTitleResultatDisplayModel) {
      return Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Text(matriceResultatDisplayModel.libelle, style: EnsTextStyle.text16_w400_normal_title),
      );
    } else {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: isAccessible
                ? const Icon(
                    Icons.check,
                    color: EnsColors.success,
                    size: 16,
                  )
                : const Icon(
                    Icons.close,
                    color: EnsColors.error,
                    size: 16,
                  ),
          ),
          Expanded(
            child: Text(matriceResultatDisplayModel.libelle, style: EnsTextStyle.text14_w400_normal_body),
          ),
        ],
      );
    }
  }
}
