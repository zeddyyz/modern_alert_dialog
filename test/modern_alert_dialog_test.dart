import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:modern_alert_dialog/modern_alert_dialog.dart';

void main() {
  test('Creates alert dialog', () {
    // Getting context does not work
    final context = WidgetsBinding.instance.buildOwner!.focusManager.rootScope.context;
    final modernAlertDialog = ModernAlertDialog();
    expect(
      modernAlertDialog.alertDialogInfo(
        context!,
        title: "Alert",
        message: "Modern alert dialog",
      ),
      ModernAlertDialog(),
    );
  });
}
