/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommander_app_redux.dart';

class RecommanderAppMiddlewares {
  final IRecommanderAppRepository recommanderAppRepository;

  RecommanderAppMiddlewares(this.recommanderAppRepository);

  static List<Middleware<EnsState>> create(
    IRecommanderAppRepository recommanderAppRepository,
  ) {
    final middlewares = RecommanderAppMiddlewares(recommanderAppRepository);

    return [
      TypedMiddleware<EnsState, FetchRecommanderAppAction>(middlewares._onFetchRecommanderAppAction).call,
      TypedMiddleware<EnsState, SetRecommanderAppDoneAction>(middlewares._onSetRecommanderAppDoneAction).call,
      TypedMiddleware<EnsState, SetNextRecommanderAppDateAction>(middlewares._onSetNextRecommanderAppDateAction).call,
    ];
  }

  static const DAYS_BEFORE_NEXT_RECOMMANDER_APP = 15;

  void _onFetchRecommanderAppAction(
    Store<EnsState> store,
    FetchRecommanderAppAction action,
    NextDispatcher next,
  ) {
    next(action);
    final isRecommanderAppDone = recommanderAppRepository.isRecommanderAppDone();
    final nextRecommanderAppDate = recommanderAppRepository.getNextRecommanderAppDate();
    store.dispatch(
      _ProcessFetchedRecommanderAppAction(
        isRecommanderAppDone: isRecommanderAppDone,
        nextRecommanderAppDate: nextRecommanderAppDate,
      ),
    );
  }

  Future<void> _onSetRecommanderAppDoneAction(
    Store<EnsState> store,
    SetRecommanderAppDoneAction action,
    NextDispatcher next,
  ) async {
    next(action);
    const isRecommanderAppDone = true;
    await recommanderAppRepository.setRecommanderAppDone(isRecommanderAppDone: isRecommanderAppDone);
    store.dispatch(_ProcessSetRecommanderAppDoneAction(isRecommanderAppDone));
  }

  Future<void> _onSetNextRecommanderAppDateAction(
    Store<EnsState> store,
    SetNextRecommanderAppDateAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final nextRecommanderAppDate = clock.now().add(const Duration(days: DAYS_BEFORE_NEXT_RECOMMANDER_APP));
    const isRecommanderAppDone = false;
    await recommanderAppRepository.setNextRecommanderAppDate(nextRecommanderAppDate: nextRecommanderAppDate);
    await recommanderAppRepository.setRecommanderAppDone(isRecommanderAppDone: isRecommanderAppDone);
    store.dispatch(_ProcessSetNextRecommanderAppDateAction(nextRecommanderAppDate));
    store.dispatch(_ProcessSetRecommanderAppDoneAction(isRecommanderAppDone));
  }
}
