import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:isttest/app/controllers/signup_controller.dart';

void main() {
  //
  setUp(() {
    Get.put<SignupController>(SignupController());
    WidgetsFlutterBinding.ensureInitialized();
  });

  tearDown(() {
    SignupController signUpController = Get.find<SignupController>();
    signUpController.resetForm();
  });

  test('validateFrom should be true when all filled', () {
    // setup
    SignupController signUpController = Get.find<SignupController>();
    signUpController.usernameController.text = 'admin';
    signUpController.passwordController.text = 'admin';
    signUpController.emailController.text = 'admin@admin.com';

    //  act
    bool validated = signUpController.validateForm();

    //  expect
    expect(validated, true);
  });

  test('validateFrom should be false when empty form', () {
    // setup
    SignupController signUpController = SignupController();

    //  act
    bool validated = signUpController.validateForm();

    //  expect
    expect(validated, false);
  });

  test('onSignup should be true when filled', () {
    // setup
    SignupController signUpController = SignupController();
    signUpController.usernameController.text = 'admin';
    signUpController.passwordController.text = 'admin';
    signUpController.emailController.text = 'admin@admin.com';

    //  act
    bool validated = signUpController.onSignup();

    //  expect
    expect(validated, true);
  });

  test('onSignup should be false when not filled', () {
    // setup
    SignupController signUpController = SignupController();

    //  act
    bool validated = signUpController.onSignup();

    //  expect
    expect(validated, false);
  });

  test('after reset form is empty', () {
    // setup
    SignupController signUpController = SignupController();
    signUpController.usernameController.text = 'admin';
    signUpController.passwordController.text = 'admin';

    //  act
    signUpController.resetForm();

    bool validated = signUpController.usernameController.text.isEmpty && signUpController.passwordController.text.isEmpty && signUpController.emailController.text.isEmpty;

    //  expect
    expect(validated, true);
  });

  test('validateForm should false when email invalid', () {
    // setup
    SignupController signUpController = Get.find<SignupController>();
    signUpController.usernameController.text = 'admin';
    signUpController.passwordController.text = 'admin';
    signUpController.emailController.text = 'admin';

    //  act
    bool validated = signUpController.validateForm();

    //  expect
    expect(validated, false);
  });
}
