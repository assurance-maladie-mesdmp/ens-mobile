/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profile_item.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profile_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profile_item_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profiles_dialog_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_compte.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ProfilesList extends StatefulWidget {
  final ProfilesDialogViewModel vm;

  const ProfilesList({required this.vm});

  @override
  State<ProfilesList> createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Sélectionner un profil :',
            style: EnsTextStyle.text14_w600_normal_body,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 16),
        ListViewWithScrollbar.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: widget.vm.getProfilesItems(isExpanded).length,
          itemBuilder: (context, index) {
            final item = widget.vm.getProfilesItems(isExpanded)[index];
            switch (item) {
              case ProfileDisplayModelAddButton():
                return _AddProfileButton(vm: widget.vm);
              case ProfileDisplayModelExpandButton():
              case ProfileDisplayModelCollapseButton():
                return _ExpandButton(
                  onTap: () {
                    setState(() => isExpanded = !isExpanded);
                  },
                  isExpanded: isExpanded,
                );
              case ProfileDisplayModelProfile():
                return _AyantsDroitsListItem(item.profile, widget.vm);
            }
          },
        ),
      ],
    );
  }
}

class _AyantsDroitsListItem extends StatelessWidget {
  final ProfileDisplayModel profile;
  final ProfilesDialogViewModel vm;

  const _AyantsDroitsListItem(this.profile, this.vm);

  @override
  Widget build(BuildContext context) {
    return ProfileItem(
      formattedProfileName: profile.fullName,
      profilType: profile.profilType,
      color: profile.color,
      onTap: () {
        context.tagAction(TagsCompte.tag_button_compte_affichageOD);
        vm.changeProfile(profile);
        final Widget? navigationBar = BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget;
        (navigationBar as EnsBottomNavigationBar?)?.onTap(0);
        Navigator.pop(context);
      },
    );
  }
}

class _AddProfileButton extends StatelessWidget {
  final ProfilesDialogViewModel vm;

  const _AddProfileButton({required this.vm});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () {
        context.tagAction(TagsCompte.tag_button_compte_ajouter_un_profil);
        Navigator.pop(context);
        Navigator.pushNamed(
          context,
          AjoutAdScreen.routeName,
          arguments: const AjoutAdScreenArguments(navigationFrom: AjoutAdScreenNavigation.POPIN_PROFIL),
        );
      },
      child: const Padding(
        padding: EdgeInsets.only(left: 24, bottom: 12, top: 12, right: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
              child: EnsSvg(EnsImages.ic_plus),
            ),
            SizedBox(width: 22),
            Expanded(
              child: Text(
                'Ajouter un profil',
                style: EnsTextStyle.text14_w700_normal_title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExpandButton extends StatelessWidget {
  final void Function() onTap;
  final bool isExpanded;

  const _ExpandButton({
    required this.onTap,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EnsSvg(
                isExpanded ? EnsImages.ic_chevron_up : EnsImages.ic_chevron_down,
                width: 24,
                height: 24,
                color: EnsColors.primary,
              ),
              const SizedBox(width: 8),
              Text(isExpanded ? 'Voir moins' : 'Voir plus', style: EnsTextStyle.text14_w700_normal_primary),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
