import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:isttest/core/utils/extensions/email_validator.dart';
import 'package:isttest/core/utils/helpers/custom_helpers.dart';

class SignupController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool onSignup() {
    bool validate = validateForm();
    if (!validate) return false;

    CustomHelpers.showToast("Success Signup");
    resetForm();

    return true;
  }

  bool validateForm() {
    if (emailController.text.isEmpty) {
      CustomHelpers.showToast("Email tidak boleh kosong!");
      return false;
    }

    bool validateEmail = emailController.text.isValidEmail();
    if (!validateEmail) {
      CustomHelpers.showToast("Email tidak valid!");
      return false;
    }

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
    emailController.text = '';
    usernameController.text = '';
    passwordController.text = '';
  }
}
