/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class NouvelleDemandeFormulaireScreenArguments {
  final FormulaireNouvelleDemandeInput input;
  final String? documentId;
  final FormulaireNouvelleDemandeServiceData? serviceData;
  final FormulaireNouvelleDemandePsData? psData;

  NouvelleDemandeFormulaireScreenArguments.doc({required String this.documentId})
      : input = FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT,
        serviceData = null,
        psData = null;

  NouvelleDemandeFormulaireScreenArguments.service({required FormulaireNouvelleDemandeServiceData this.serviceData})
      : input = FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE,
        documentId = null,
        psData = null;

  NouvelleDemandeFormulaireScreenArguments.ps({required FormulaireNouvelleDemandePsData this.psData})
      : input = FormulaireNouvelleDemandeInput.SIGNALER_UN_PS,
        documentId = null,
        serviceData = null;

  NouvelleDemandeFormulaireScreenArguments.nousContacter()
      : input = FormulaireNouvelleDemandeInput.NOUS_CONTACTER,
        documentId = null,
        serviceData = null,
        psData = null;
}

enum FormulaireNouvelleDemandeInput {
  SIGNALER_UN_DOCUMENT,
  SIGNALER_UN_SERVICE,
  SIGNALER_UN_PS,
  NOUS_CONTACTER,
}

class FormulaireNouvelleDemandeServiceData {
  final String serviceId;
  final String serviceName;

  const FormulaireNouvelleDemandeServiceData({required this.serviceId, required this.serviceName});
}

class FormulaireNouvelleDemandePsData {
  final String psIdNat;
  final String psFullName;

  const FormulaireNouvelleDemandePsData({required this.psIdNat, required this.psFullName});
}
