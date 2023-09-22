import 'package:get/get.dart';
import 'package:isttest/app/controllers/login_controller.dart';
import 'package:isttest/app/controllers/signup_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<SignupController>(() => SignupController(), fenix: true);
  }
}
