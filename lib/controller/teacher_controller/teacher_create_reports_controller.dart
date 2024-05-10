import 'package:flutter/material.dart';



import 'package:get/get.dart';

abstract class TeacherCreateReportController extends GetxController{
createreport();
}
class TeacherCreateReportControllerImp extends TeacherCreateReportController{
  late TextEditingController learning;
  late TextEditingController mood;
  late TextEditingController attitude;
  late TextEditingController activities;
  late TextEditingController date;
  late TextEditingController childreport;
  List createreportdata =[];
    
@override
  createreport()async {
  
update();

  }

  @override
  void onInit() {
    learning=TextEditingController();
   mood=TextEditingController();
   attitude=TextEditingController();
    activities=TextEditingController();
    date=TextEditingController();
    childreport=TextEditingController();
    createreport();
   
    super.onInit();
  }

  @override
  void dispose() {
    learning.dispose();
    mood.dispose();
    attitude.dispose();
    activities.dispose();
    date.dispose();
    childreport.dispose();
    super.dispose();
  }
}




 

   
 





