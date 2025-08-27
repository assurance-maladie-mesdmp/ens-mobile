/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nous_contacter_redux.dart';

class NousContacterReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchTicketsSupportAction>(
          NousContacterReducers._onFetchTicketsSupportAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchTicketsSupportSuccessAction>(
          NousContacterReducers._onProcessFetchTicketsSupportSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchTicketsSupportErrorAction>(
          NousContacterReducers._onProcessFetchTicketsSupportErrorAction,
        ).call,
        TypedReducer<EnsState, FetchTicketSupportDetailsAction>(
          NousContacterReducers._onFetchTicketSupportDetailsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchTicketSupportDetailSuccessAction>(
          NousContacterReducers._onProcessFetchTicketSupportDetailsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchTicketSupportDetailsErrorAction>(
          NousContacterReducers._onProcessFetchTicketSupportDetailsErrorAction,
        ).call,
      ];

  static EnsState _onFetchTicketsSupportAction(
    EnsState state,
    FetchTicketsSupportAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        status: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessFetchTicketsSupportSuccessAction(
    EnsState state,
    _ProcessFetchTicketsSupportSuccessAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        status: AllPurposesStatus.SUCCESS,
        tickets: action.ticketsContact,
      ),
    );
  }

  static EnsState _onProcessFetchTicketsSupportErrorAction(
    EnsState state,
    _ProcessFetchTicketsSupportErrorAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        status: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onFetchTicketSupportDetailsAction(
    EnsState state,
    FetchTicketSupportDetailsAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        ticketContactDetailsState: state.nousContacterState.ticketContactDetailsState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchTicketSupportDetailsSuccessAction(
    EnsState state,
    _ProcessFetchTicketSupportDetailSuccessAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        ticketContactDetailsState: state.nousContacterState.ticketContactDetailsState.clone(
          status: AllPurposesStatus.SUCCESS,
          ticketDetails: action.ticketDetails,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchTicketSupportDetailsErrorAction(
    EnsState state,
    _ProcessFetchTicketSupportDetailsErrorAction action,
  ) {
    return state.clone(
      nousContacterState: state.nousContacterState.clone(
        ticketContactDetailsState: state.nousContacterState.ticketContactDetailsState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }
}
