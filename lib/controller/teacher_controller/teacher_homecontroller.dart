
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/view/screen/mother_app/addchild.dart';
import 'package:get/get.dart';

abstract class TeacherHomecontroller extends GetxController{
  

  

 
  gotocreatechildprofile();
  

}
class TeacherHomecontrollerImp extends TeacherHomecontroller{
 


  dynamic listchild=[
  {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.onBoardingImageTwo},
  {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.logo},
  {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.logo},
  {'namechild':"sadek",'age':'4','imagechild':AppImageAsset.burger},
  

 ];




  @override
  gotocreatechildprofile() {
  Get.to(()=>  Createclildprofile ());
  }
@override
  void onInit() {
    
    super.onInit();
  }
}


