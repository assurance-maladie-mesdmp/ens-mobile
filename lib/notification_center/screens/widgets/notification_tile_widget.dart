/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../notifications_center_screen.dart';

class _NotificationTileWidget extends StatelessWidget {
  final NotificationsCenterViewModel vm;
  final NotificationDetails notification;
  final NotificationProfileDisplayModel profile;
  final String? semanticLabel;
  final String? boldText;
  final String normalText;
  final String? redirectionText;
  final void Function() redirect;

  const _NotificationTileWidget({
    required this.vm,
    required this.notification,
    required this.profile,
    this.semanticLabel,
    this.boldText,
    required this.normalText,
    required this.redirectionText,
    required this.redirect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: notification.isRead ? Colors.white : EnsColors.neutral200,
          child: MergeSemantics(
            child: EnsInkWell(
              onTap: () {
                InterruptionServiceHelper.showSnackbarOnInterruption(
                  context,
                  interruptionServiceSnackbarMessage: vm.getInterruptionSnackbarMessage(notification),
                  onNotInterrompu: () {
                    if ((!_isDocDeletedNotification(notification.label) && notification.resourceId != null) ||
                        notification.type != NotificationType.DOCUMENT) {
                      vm.goTo(profile: profile, notification: notification, redirect: redirect);
                    }
                  },
                );
              },
              child: Semantics(
                excludeSemantics: true,
                label: '${!notification.isRead ? 'Notification non lu, $semanticLabel' : semanticLabel}',
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, right: 12),
                          child: Row(
                            crossAxisAlignment:
                                redirectionText == null ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              _BulletNotificationWidget(notification.isRead),
                              Expanded(child: _EnsRichTextForNormalText(boldText: boldText, normalText: normalText)),
                              const SizedBox(width: 4),
                              EnsInkWell(
                                semanticLabel: 'Effectuer des actions',
                                borderRadius: BorderRadius.circular(24),
                                onTap: () {
                                  DynamicActionBottomSheet.showOptionsBottomSheet(
                                    _buildBottomSheetActions(context),
                                    context,
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                  child: EnsSvg(
                                    EnsImages.ic_more_vertical,
                                    height: 16,
                                    width: 4,
                                    alignment: Alignment.centerRight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            notification.elapseTime,
                            textAlign: TextAlign.start,
                            style: EnsTextStyle.text12_w700_normal_body,
                          ),
                        ),
                      ],
                    ),
                    if (redirectionText != null &&
                        ((!_isDocDeletedNotification(notification.label) && notification.resourceId != null) ||
                            notification.type != NotificationType.DOCUMENT)) ...[
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          redirectionText!,
                          style: EnsTextStyle.text14_w700_normal_primary_underline,
                        ),
                      ),
                    ],
                    const SizedBox(height: 18),
                  ],
                ),
              ),
            ),
          ),
        ),
        EnsDivider(color: notification.isRead ? EnsColors.neutral200 : Colors.transparent),
      ],
    );
  }

  bool _isDocDeletedNotification(String notificationLabel) => notificationLabel.contains('supprimé');

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
  ) {
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: notification.isRead ? EnsImages.ic_off_outline_close : EnsImages.ic_circle_check_outline,
        label: notification.isRead ? 'Marquer comme non lu' : 'Marquer comme lu',
        execution: () {
          vm.toggleReadingNotification(
            notification: notification,
            profileId: profile.id,
          );
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => ConfirmationBottomSheet(
              title: 'Supprimer cette notification ?',
              content: ConfirmationBottomSheetDefaultTextContent(_getConfirmationText(profilType: profile.profilType)),
              positiveButtonLabel: 'Supprimer',
              positiveButtonHandler: () {
                vm.deleteNotification(
                  notificationId: notification.id,
                  profileId: profile.id,
                );
              },
              negativeButtonLabel: 'Annuler',
            ),
          );
        },
      ),
    ];
    return result;
  }
}

String _getConfirmationText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Cette notification sera supprimée définitivement du centre de notification.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Si vous supprimez cette notification, les autres comptes qui ont accès à ce profil ne la verront plus.',
  };
}

class _EnsRichTextForNormalText extends StatelessWidget {
  const _EnsRichTextForNormalText({
    required this.boldText,
    required this.normalText,
  });

  final String? boldText;
  final String normalText;

  @override
  Widget build(BuildContext context) {
    final currentBoldText = boldText.isNullOrTrimEmpty() ? '' : boldText;
    return EnsRichText(
      overflow: TextOverflow.ellipsis,
      maxLines: MediaQuery.textScalerOf(context).scale(14) < 1.6 ? 3 : 5,
      text: TextSpan(
        text: currentBoldText,
        style: EnsTextStyle.text14_w700_normal_title,
        children: [
          parseTextWithBoldTag(normalText),
        ],
      ),
      textAlign: TextAlign.start,
    );
  }
}
