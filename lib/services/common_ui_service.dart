import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../app/constants.dart';

@lazySingleton
class CommonUiService {

  showSnackBar(String msg, snackBarType type, {bool isInternetError = false}) {
    Get.showSnackbar(GetBar(
      snackStyle: SnackStyle.FLOATING,
      messageText: Text(
        msg,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      borderRadius: 75,
      backgroundColor:
          type == snackBarType.error ? Color(0xffCA7E8D) : Color(0xff70AE98),
      duration: Duration(
          seconds: isInternetError
              ? 6
              : msg.length > 50
                  ? 4
                  : 3),
      isDismissible: true,
    ));

    // _snackBarService.showCustomSnackBar(
    //     message: msg,
    //     duration: Duration(milliseconds: msg.length > 50 ? 4250 : 2250),
    //     variant: type);
  }
}
