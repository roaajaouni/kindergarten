import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class NotesController extends GetxController{
gotoChildprofile();

}
class NotesControllerImp extends NotesController{
   late TextEditingController name;

  late TextEditingController contain;
  
  @override
  gotoChildprofile() {
   Get.offAllNamed(AppRoute.childprofile);
  }
  @override
  void onInit() {
     name = TextEditingController();

    contain= TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
     name.dispose();

    contain.dispose();
    super.dispose();
  }

}