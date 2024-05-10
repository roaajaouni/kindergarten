
import 'package:flutter/material.dart';
import 'package:flutter_childhood/data/model/mother_model/home_child_model.dart';
import 'package:flutter_childhood/view/screen/mother_app/addchild.dart';
import 'package:flutter_childhood/view/screen/mother_app/home.dart';
import 'package:flutter_childhood/view/screen/mother_app/myaccount.dart';
import 'package:flutter_childhood/view/screen/mother_app/notification_page.dart';
import 'package:get/get.dart';

abstract class Homecontroller extends GetxController{

 gotocreatechildprofile();
 
  
}
class HomecontrollerImp extends Homecontroller{
dynamic listchild=[
  {'namechild':"Anne",'age':'4 years ','image':'assets/images/anne.png'},
  {'namechild':"ellen",'age':'5 years ','image':'assets/images/anne.png'},
  {'namechild':"sara",'age':'5 years','image':'assets/images/anne.png'},
  {'namechild':"aya",'age':'5 '},
  {'namechild':"zaid",'age':'5',},
  {'namechild':"zaid",'age':'5',},
  {'namechild':"zaid",'age':'5',},
  {'namechild':"zaid",'age':'5',},

  ];
bool loading = true;
  List<Child> children = [];

  void fetchChildren() async {
 
  }





 List <Widget> pages=[
  Home(),
  const NotificationsPage(),
  const MyAccount(),

 ];
 

  @override
  gotocreatechildprofile() {
  Get.to(()=> Createclildprofile ());
  }
  
  @override
  void onInit() {
   fetchChildren();
    super.onInit();
  }
  
 
 

}
