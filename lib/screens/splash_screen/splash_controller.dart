import 'dart:async';

import 'package:get/get.dart';
import 'package:roshanpaladiya_firebase/screens/login_screen/login_screen.dart';

class SpleshController extends GetxController {
  @override
  void onInit() {
    super.onInit();
   /* bool isLogin = PrefServices.getBool(PrefRes.isSignUp);*/
    Timer(
      const Duration(seconds: 3),
      () => Get.off(() => const LoginPage()),
    );
  }
}
