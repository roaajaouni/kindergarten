

import 'package:flutter_childhood/view/screen/mother_app/childprofile.dart';
import 'package:flutter_childhood/view/screen/mother_app/reportdetail.dart';
import 'package:get/get.dart';

abstract class Reportscontroller extends GetxController{

   gotochildprofile() ;
  gotoreportdetail();

}
class ReportscontrollerImp extends Reportscontroller{

dynamic listreports=[
  {'reportname':"anne",},
  {'reportname':"anne",},
  {'reportname':"anne",},
  
  

 ];


@override
  void onInit() {
   
    super.onInit();
  }


  @override
  gotochildprofile() {
  Get.to(()=>  ChildProfile ());
  }
  
  @override
  gotoreportdetail() {
   Get.to( const ReportDetail());
  }

}

  // ReadReportData readreportdata=ReadReportData (Get.find());
//  late StatusRequest statusrequest ;


//  getReportData ()async{
//     statusrequest =StatusRequest.loading;
    
//     var response = await readreportdata.getData();
//     print('/////// controller $response');
//     statusrequest=handlingData (response);
//     if(StatusRequest.success==statusrequest){
//       listreports.addAll( response['_data']);
// update();

//   }
// }