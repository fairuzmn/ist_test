import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:isttest/core/utils/helpers/custom_helpers.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool onLogin() {
    bool validate = validateForm();
    if (!validate) return false;

    CustomHelpers.showToast("Success Login");
    resetForm();

    return true;
  }

  bool validateForm() {
    if (usernameController.text.isEmpty) {
      CustomHelpers.showToast('Username tidak boleh kosong!');
      return false;
    }

    if (passwordController.text.isEmpty) {
      CustomHelpers.showToast("Password tidak boleh kosong!");
      return false;
    }

    return true;
  }

  void resetForm() {
    usernameController.text = '';
    passwordController.text = '';
  }
}
