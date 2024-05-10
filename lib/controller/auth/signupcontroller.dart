import 'package:flutter/widgets.dart';
import 'package:flutter_childhood/core/constant/routes.dart';




//import 'package:flutter_childhood/view/screen/auth/login.dart';
import 'package:get/get.dart';



abstract class Signupcontroller extends GetxController{
  create();
  gotosignin();
}
class SignupcontrollerImp extends Signupcontroller{
  late TextEditingController username;
  
  late TextEditingController email;
  late TextEditingController password;
 // late TextEditingController confirmpassword;


   List data =[];

  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  @override
  create() async{
    if (formstate.currentState!.validate()) {
 

      //Get.offNamed(AppRoute.successsignup);
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
    username=TextEditingController();
   // phone=TextEditingController();
    email=TextEditingController();
    //confirmpassword=TextEditingController();
    password=TextEditingController();
     //create();
    super.onInit();
  }
  @override
  void dispose() {
   username.dispose();   
   password.dispose();   
   //phone.dispose();   
   //confirmpassword.dispose();   
   email.dispose();   

    super.dispose();
  }
  
  
  
 
  }

//  late StatusRequest statusrequest;
//  SignupData signupdata =SignupData (Get.find());

// statusrequest =StatusRequest.loading;
    
//     var response = await signupdata.postData( username.text,email.text,password.text,);
//     print('////////$response');
//     statusrequest=handlingData (response);
//     if(StatusRequest.success==statusrequest){
//       data.addAll( response['data']);
//       print(data);
// update();

//   }