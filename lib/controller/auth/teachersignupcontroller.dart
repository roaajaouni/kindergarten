import 'package:flutter/widgets.dart';
import 'package:flutter_childhood/core/constant/routes.dart';


//import 'package:flutter_childhood/view/screen/auth/login.dart';
import 'package:get/get.dart';



abstract class TeacherSignupcontroller extends GetxController{
  create();
  gotosignin();
}
class TeacherSignupcontrollerImp extends TeacherSignupcontroller{
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController address;
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  @override
  create() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.successsignup);
     // Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }
  

  }
  
  @override
  gotosignin() {
   Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {
    name=TextEditingController();
    phone=TextEditingController();
    email=TextEditingController();
    address=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
   name.dispose();   
   password.dispose();   
   phone.dispose();   
   address.dispose();   
   email.dispose();   

    super.dispose();
  }
  
  
  
 
  }
