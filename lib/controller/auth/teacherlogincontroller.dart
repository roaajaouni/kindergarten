import 'package:flutter/widgets.dart';
import 'package:flutter_childhood/core/constant/routes.dart';

import 'package:get/get.dart';

abstract class TeacherLoginController extends GetxController{
  login();
  gotosignup();
}
class TeacherLoginControllerImp extends TeacherLoginController{
  late TextEditingController username;
  late TextEditingController password;
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  @override
  login() {
     var formdata = formstate.currentState;
    if (formdata!.validate()) {
     
      print("Valid");
      
    } else {
      print("Not Valid");
    }
  }
  
  @override
  gotosignup() {
   Get.toNamed(AppRoute.signup);
  }
  @override
  void onInit() {
    username=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
   username.dispose();   
   password.dispose();   

    super.dispose();
  }
}