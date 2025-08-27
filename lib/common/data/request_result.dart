/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/domain/domain_error.dart';

abstract class RequestResult<S> extends Equatable {
  bool _isSuccess() => this is RequestResultSuccess<S>;

  bool isError() => this is RequestResultError<S>;

  S _getSuccessResult();

  DomainError _getDomainError();

  RequestResult<S> onSuccess(void Function(S successResult) onSuccessFunction) {
    if (_isSuccess()) {
      onSuccessFunction.call(_getSuccessResult());
    }
    return this;
  }

  RequestResult<S> onError(void Function(DomainError domainError) onErrorFunction) {
    if (isError()) {
      onErrorFunction.call(_getDomainError());
    }
    return this;
  }
}

class RequestResultSuccess<S> extends RequestResult<S> {
  final S result;

  RequestResultSuccess(this.result);

  @override
  S _getSuccessResult() => result;

  @override
  DomainError _getDomainError() {
    throw UnsupportedError('Ne devrait pas arriver. La fonction est bien appelée dans un if isError ?');
  }

  @override
  List<Object?> get props => [result];
}

class RequestResultError<S> extends RequestResult<S> {
  final DomainError domainError;

  RequestResultError({required this.domainError});

  RequestResultError.genericError() : this(domainError: GenericDomainError.GENERIC);

  RequestResultError.mappingError() : this(domainError: GenericDomainError.MAPPING_ERROR);

  RequestResultError.networkError() : this(domainError: GenericDomainError.NETWORK_ERROR);

  RequestResultError.error({required DomainError domainError}) : this(domainError: domainError);

  RequestResultError.unavailableInGuestMode() : this(domainError: GuestModeDomainError.GUEST_MODE);

  @override
  DomainError _getDomainError() => domainError;

  @override
  S _getSuccessResult() {
    throw UnsupportedError('Ne devrait pas arriver. La fonction est bien appelée dans un if isSuccess ?');
  }

  @override
  List<Object?> get props => [domainError];
}
