import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'constants.dart';
import 'locator.dart';

void snackBarConfig() {
  final service = locator<SnackbarService>();

  service.registerCustomSnackbarConfig(
    variant: snackBarType.error,
    config: SnackbarConfig(
      backgroundColor: Colors.red,
      textColor: Colors.white,
      borderRadius: 1,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: snackBarType.warning,
    config: SnackbarConfig(
      backgroundColor: Colors.yellow,
      textColor: Colors.white,
      borderRadius: 1,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: snackBarType.success,
    config: SnackbarConfig(
      backgroundColor: Colors.green,
      titleColor: Colors.green,
      messageColor: Colors.white,
      borderRadius: 1,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: snackBarType.universal,
    config: SnackbarConfig(
      backgroundColor: Colors.black,
      messageColor: Colors.white,
      borderRadius: 1,
    ),
  );
}
