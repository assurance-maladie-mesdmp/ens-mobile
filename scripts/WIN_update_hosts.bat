:: Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
:: Use of this source code is governed by a CeCILL v2.1 license that can be
:: found in the LICENSE file.

%APPDATA%\..\Local\Android\Sdk\platform-tools\adb.exe root
%APPDATA%\..\Local\Android\Sdk\platform-tools\adb.exe remount
%APPDATA%\..\Local\Android\Sdk\platform-tools\adb.exe push ./scripts/hosts /etc/hosts
%APPDATA%\..\Local\Android\Sdk\platform-tools\adb.exe push ./scripts/hosts /etc/system/hosts
%APPDATA%\..\Local\Android\Sdk\platform-tools\adb.exe push ./scripts/hosts /system/etc/hosts