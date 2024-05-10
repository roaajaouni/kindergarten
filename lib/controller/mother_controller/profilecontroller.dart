
import 'package:flutter_childhood/view/screen/mother_app/mealspage.dart';
import 'package:flutter_childhood/view/screen/mother_app/reports.dart';

import 'package:get/get.dart';

abstract class ChildProfilecontroller extends GetxController {
  gotomeal();
  gotoreports();
}

class  ChildProfilecontrollerImp extends  ChildProfilecontroller {
  @override
  gotomeal() {
    Get.to(const MealsPage());
  }
  
  
  @override
  gotoreports() {
    Get.to(const ReportsPage(),arguments: {'childname','reportdate','childimage'});
  }

  
 

  
}
