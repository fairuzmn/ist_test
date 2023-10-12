import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:isttest/app/controllers/login_controller.dart';

void main() {
  //
  setUp(() {
    Get.put<LoginController>(LoginController());
    // TestWidgetsFlutterBinding.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();
  });

  tearDown(() {
    LoginController loginController = Get.find<LoginController>();
    loginController.resetForm();
  });

  test('validateFrom should be true when all filled', () {
    // setup
    LoginController loginController = Get.find<LoginController>();
    loginController.usernameController.text = 'admin';
    loginController.passwordController.text = 'admin';

    //  act
    bool validated = loginController.validateForm();

    //  expect
    expect(validated, true);


  //  
  });

  test('validateFrom should be false when empty form', () {
    // setup
    LoginController loginController = LoginController();

    //  act
    bool validated = loginController.validateForm();

    //  expect
    expect(validated, false);
  });

  test('onLogin should be true when filled', () {
    // setup
    LoginController loginController = LoginController();
    loginController.usernameController.text = 'admin';
    loginController.passwordController.text = 'admin';

    //  act
    bool validated = loginController.onLogin();

    //  expect
    expect(validated, true);
  });

  test('onLogin should be false when not filled', () {
    // setup
    LoginController loginController = LoginController();
    loginController.usernameController.text = '';
    loginController.passwordController.text = 'admin';

    //  act
    bool validated = loginController.onLogin();

    //  expect
    expect(validated, false);
  });

  test('after reset form is empty', () {
    // setup
    LoginController loginController = LoginController();
    loginController.usernameController.text = 'admin';
    loginController.passwordController.text = 'admin';

    //  act
    loginController.resetForm();

    bool validated = loginController.usernameController.text.isEmpty && loginController.passwordController.text.isEmpty;

    //  expect
    expect(validated, true);
  });
}
