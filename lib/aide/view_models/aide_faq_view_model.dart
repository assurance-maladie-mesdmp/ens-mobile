/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/aide/redux/aide_faq_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class AideFAQViewModel extends Equatable {
  final List<FaqDisplayModel> faqItems;
  final AllPurposesStatus status;
  final void Function() loadFaq;
  static const FAQ_ITEM_TO_REMOVE_TITLE = 'nous contacter';

  const AideFAQViewModel._({
    required this.faqItems,
    required this.status,
    required this.loadFaq,
  });

  factory AideFAQViewModel.fromStore(Store<EnsState> store) {
    final state = store.state.faqState;
    if (state.status.isSuccess()) {
      final List<FaqDisplayModel> faqItems = state.items.values.map(
        (item) {
          return FaqDisplayModel(
            image: item.image,
            title: item.title,
            questions: item.questions,
            id: item.id,
          );
        },
      ).toList();

      faqItems.removeWhere((element) => element.title.toLowerCase().trim() == FAQ_ITEM_TO_REMOVE_TITLE);

      return AideFAQViewModel._(
        faqItems: faqItems,
        loadFaq: () => store.dispatch(FetchFaqAction()),
        status: AllPurposesStatus.SUCCESS,
      );
    }
    return AideFAQViewModel._(
      faqItems: const [],
      status: state.status,
      loadFaq: () => store.dispatch(FetchFaqAction()),
    );
  }

  @override
  List<Object?> get props => [faqItems, status];
}

class FaqDisplayModel extends Equatable {
  final String image;
  final String title;
  final String id;
  final List<FaqQuestion> questions;

  const FaqDisplayModel({
    required this.image,
    required this.title,
    required this.questions,
    required this.id,
  });

  @override
  List<Object?> get props => [image, title, questions, id];
}
