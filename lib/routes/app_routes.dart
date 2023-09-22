import 'package:get/get.dart';
import 'package:isttest/app/ui/screens/auth/login_screen.dart';
import 'package:isttest/app/ui/screens/auth/signup_screen.dart';
import 'package:isttest/app/ui/screens/home/home_screen.dart';
import 'package:isttest/routes/app_links.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: AppLinks.HOME, page: () => const HomeScreen()),
    GetPage(name: AppLinks.LOGIN, page: () => const LoginScreen()),
    GetPage(name: AppLinks.SIGNUP, page: () => const SignupScreen()),
  ];
}
