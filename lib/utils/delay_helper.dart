/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

// Utilité 1 : Afficher la snackbar dans le bon context
// Problème: Parfois la snackbar est coupée par la BottomNavigationBar
// Raison: La snackbar est affichée sur le context d'un écran qui n'a pas de BottomNavigationBar,
// lorsque cet écran pop, la distance de la snackbar avec le bas de l'écran est toujours calculée par rapport à cet écran.
// Solution: Le fait de mettre un delay, permet à l'écran de finir de pop, puis afficher la snackbar sur l'écran en dessous,
// i.e. l'écran contenant la BottomNavigationBar => la snackbar sera donc bien placée par rapport au BottomNavigationBar.

// Utilité 2 : Afficher une pop-up ou un autre écran avec un delay pour ne pas choquer l'utilisateur.
class DelayHelper {
  static void displayWithDelay({
    required void Function() callback,
    Duration delay = const Duration(seconds: 1),
  }) {
    Future.delayed(delay).then((value) {
      callback.call();
    });
  }

  static void unhighlight({required void Function() callback}) {
    displayWithDelay(
      // même durée que l'affichage des snackbars
      delay: const Duration(seconds: 5),
      callback: callback,
    );
  }
}
