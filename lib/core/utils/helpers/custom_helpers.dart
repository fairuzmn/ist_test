import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';

class CustomHelpers {
  static void showToast(String msg, {bool durationShort = true, bool withCancel = true}) async {
    if(Platform.environment.containsKey('FLUTTER_TEST')) return;

    if (withCancel) await Fluttertoast.cancel();

    Fluttertoast.showToast(
      msg: msg,
      toastLength: durationShort ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      fontSize: 16.0,
    );
  }
}
