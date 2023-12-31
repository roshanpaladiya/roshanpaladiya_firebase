import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshanpaladiya_firebase/screens/splash_screen/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SpleshController());
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: FlutterLogo(),
      ),
    );
  }
}
