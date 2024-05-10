import 'package:flutter/widgets.dart';
import 'package:flutter_childhood/core/constant/routes.dart';



import 'package:get/get.dart';

abstract class Logincontroller extends GetxController{
  login();
  gotosignup();
}
class LogincontrollerImp extends Logincontroller{
 
  late TextEditingController username;
  late TextEditingController password;
   // SigninData signindata = SigninData(Get.find());
   List data =[];
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  @override
  login()async {
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
   login();
    super.onInit();
  }
  @override
  void dispose() {
   username.dispose();   
   password.dispose();   

    super.dispose();
  }
}
 //statusrequest =StatusRequest.loading;
    
//    var response = await signindata.postData(username.text,password.text);
//     statusrequest=handlingData (response);
//     if(StatusRequest.success==statusrequest){
//       data.addAll( response['data']);
// update();

//   }
  