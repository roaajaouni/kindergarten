import 'package:flutter/widgets.dart';
import 'package:flutter_childhood/data/datasource/repositories/mother_repos/addchild_repos.dart';


import 'package:get/get.dart';

abstract class Addchildcontroller extends GetxController {
  create();
}

class AddchildcontrollerImp extends Addchildcontroller {
 late TextEditingController fullname;

  late TextEditingController age;
  late TextEditingController gender;
  late TextEditingController health;
ChildRepository childrepository=ChildRepository ();

  @override
  create()async {

   
    childrepository.sendChildren(fullname.text, age.text,gender.text,health.text);
 
    update();
  }
   


  

  @override
  void onInit() {
    fullname = TextEditingController();

    age = TextEditingController();
    gender = TextEditingController();
    health = TextEditingController();
create();
    super.onInit();
  }

  @override
  void dispose() {
    fullname.dispose();

    age.dispose();
    gender.dispose();
health.dispose();

    super.dispose();
  }
  

}
