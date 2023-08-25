import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roshanpaladiya_firebase/model/model_class.dart';
import 'package:roshanpaladiya_firebase/services/firebase_service.dart';
import 'package:roshanpaladiya_firebase/screens/home_screen/homescreen_controller.dart';

class EditProfileController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  NewAddUser? loginUser;
  File? images;

  void onPressedEditProfile() {
    Get.find<HomeScreenController>().loginUser?.name = name.text;
    Get.find<HomeScreenController>().loginUser?.email = email.text;
    update(['edit']);
    Get.back();
  }

  Future<void> imagePicker() async {
    ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      images = File(image.path);
      loginUser!.image = await FirebaseServices.uploadImage("${loginUser!.id}", images);
    }
    update(["image"]);
  }
}
