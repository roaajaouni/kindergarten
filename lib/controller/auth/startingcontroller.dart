import 'package:flutter_childhood/view/screen/auth/teacher_login.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class Startingcontroller extends GetxController{
  
  gototeacherlogin();
}
class StartingcontrollerImp extends Startingcontroller{
  @override
 
  
  @override
  gototeacherlogin() {
    Get.to(()=>const  TeacherLogin());
  }

  
  

  
}