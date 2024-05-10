
import 'package:flutter_childhood/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupcontroller extends GetxController{

  gotosigninn();
}
class SuccessSignupcontrollerImp extends SuccessSignupcontroller{
 
  
  
  @override
  gotosigninn() {
   Get.offNamed(AppRoute.login);
  }}