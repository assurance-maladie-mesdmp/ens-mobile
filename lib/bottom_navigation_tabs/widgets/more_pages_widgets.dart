/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_screen.dart';
import 'package:fr_cnamts_ens/home/home_tags.dart';
import 'package:fr_cnamts_ens/home/screens/mon_espace_en_bref_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/old_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_personnalisee_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

const POP_UP_HEADER_HEIGHT = 56.0;

class MorePagesBottomSheet extends StatelessWidget {
  final void Function() onClose;
  final void Function(String, String)? onLongPress;
  final void Function()? onTapUp;
  static const double _EXTERNAL_MARGIN = 24;
  static const double _INTERNAL_MARGIN = 16;
  static const double _BETWEEN_ELEMENT_MARGIN = 8;
  static const int _DEFAULT_COLUMN_COUNT = 3;
  static const int _INCREASED_TEXT_SIZE_COLUMN_COUNT = 2;

  const MorePagesBottomSheet({
    required this.onClose,
    required this.onLongPress,
    required this.onTapUp,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textFactor = TextScaleUtils.getTextScaleFactor(context);
    final width = mediaQuery.size.width;
    final withIcon = textFactor <= 1.25;
    final Size itemSize = _getItemSize(width, withIcon);

    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.75,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              const SizedBox(
                height: POP_UP_HEADER_HEIGHT,
                child: Material(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      'Autres rubriques',
                      style: EnsTextStyle.text14_w400_normal_title,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: POP_UP_HEADER_HEIGHT,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Transform.translate(
                    offset: const Offset(-10, 0),
                    child: EnsCrossButton(
                      onTap: () {
                        context.tagAction(
                          HomeTags.tag_980_pop_plus_button_close_nav_bar,
                        );
                        onClose.call();
                      },
                      size: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _INTERNAL_MARGIN),
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: _BETWEEN_ELEMENT_MARGIN,
              spacing: _BETWEEN_ELEMENT_MARGIN,
              children: [
                _MorePagesItem(
                  label: 'Prévention',
                  imagePath: EnsImages.ic_actu_sante,
                  size: itemSize,
                  withIcon: withIcon,
                  onTapUp: onTapUp,
                  onLongPress: onLongPress,
                  onTap: () {
                    context.tagAction(HomeTags.tag_2360_nav_prevention);
                    if (isPreventionPersonnaliseeEnabled) {
                      Navigator.pushNamed(context, PreventionPersonnaliseeScreen.routeName);
                    } else {
                      Navigator.pushNamed(context, OldPreventionScreen.routeName);
                    }
                  },
                ),
                if (isAgendaEnabled)
                  _MorePagesItem(
                    label: 'Agenda',
                    imagePath: EnsImages.ic_agenda,
                    size: itemSize,
                    withIcon: withIcon,
                    onTapUp: onTapUp,
                    onLongPress: onLongPress,
                    onTap: () {
                      context.traceAction(EnsTraceType.CONSULT_MENU_AGENDA);
                      context.tagAction(
                        HomeTags.tag_978_pop_plus_item_agenda_nav_bar,
                      );
                      Navigator.pushNamed(context, AgendaScreen.routeName);
                    },
                  ),
                _MorePagesItem(
                  label: 'Vaccinations',
                  imagePath: EnsImages.ic_vaccinations,
                  size: itemSize,
                  withIcon: withIcon,
                  onTapUp: onTapUp,
                  onLongPress: onLongPress,
                  onTap: () {
                    context.tagAction(HomeTags.tag_2469_nav_vaccinations);
                    Navigator.pushNamed(context, VaccinationsScreen.routeName);
                  },
                ),
                _MorePagesItem(
                  label: 'Catalogue de services',
                  imagePath: EnsImages.ic_services,
                  size: itemSize,
                  withIcon: withIcon,
                  onTapUp: onTapUp,
                  onLongPress: onLongPress,
                  onTap: () {
                    context.traceAction(
                      EnsTraceType.CONSULT_MENU_CATALOGUE_SERVICES,
                    );
                    context.tagAction(
                      HomeTags.tag_979_pop_plus_item_catalogue_nav_bar,
                    );
                    Navigator.pushNamed(
                      context,
                      CatalogueServicesScreen.routeName,
                    );
                  },
                ),
                _MorePagesItem(
                  label: 'À propos',
                  imagePath: EnsImages.ic_mes,
                  size: itemSize,
                  withIcon: withIcon,
                  onTapUp: onTapUp,
                  onLongPress: onLongPress,
                  onTap: () {
                    context.tagAction(HomeTags.tag_662_pop_plus_item_mes_nav_bar);
                    Navigator.pushNamed(
                      context,
                      MonEspaceEnBrefScreen.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  static double _getTileWidth(double width, int columnCount) {
    return (width - _EXTERNAL_MARGIN * 2 - _INTERNAL_MARGIN * 2 - _BETWEEN_ELEMENT_MARGIN * (columnCount - 1)) /
        columnCount;
  }

  static Size _getItemSize(double baseWidth, bool withIcon) {
    final double itemWidth = _getTileWidth(
      baseWidth,
      withIcon ? _DEFAULT_COLUMN_COUNT : _INCREASED_TEXT_SIZE_COLUMN_COUNT,
    );
    return Size(
      itemWidth,
      itemWidth / (withIcon ? 1 : 2),
    );
  }
}

class _MorePagesItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final Size size;
  final bool withIcon;
  final void Function() onTap;
  final void Function(String, String)? onLongPress;
  final void Function()? onTapUp;

  const _MorePagesItem({
    required this.label,
    required this.imagePath,
    required this.onTap,
    required this.size,
    required this.withIcon,
    required this.onLongPress,
    required this.onTapUp,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: MergeSemantics(
        child: GestureDetector(
          onLongPress: () {
            onLongPress?.call(imagePath, label);
          },
          onLongPressUp: onTapUp,
          child: EnsInkWell(
            color: EnsColors.neutral200,
            borderRadius: BorderRadius.circular(16),
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (withIcon) ...[
                    EnsSvg(imagePath, height: 24, width: 24),
                    const SizedBox(height: 8),
                  ],
                  Flexible(
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text10_w600_normal_primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
