
// import 'package:flutter_childhood/core/api/api_service.dart';

// class AddchildRepositroy{
//   ApiService apisevice = ApiService();
//    //Future< List<Child>>
//    dynamic postchild(String fullname,String age ,String gender,String healthstatus)async{

// final response=await  apisevice.postData('addchild/',{
//   'fullname':fullname,
//   'age':age,
//   'gender':gender,
//   'healthstatus':healthstatus,
// });



// return response;

//   }
// }
////////////////////////////////////////////////////////////////
import 'dart:convert';

import 'package:flutter_childhood/core/api/api_service.dart';



class ChildRepository {
  ApiService apiService = ApiService();

  // Future<List<Child>> getChildren() async {
  //   List<Child> children = [];//تحوي عناصر اليست مودلة
  //   final response = await apiService.getData("getchilds");
  //   response.forEach((element) {
  //     children .add(Child.fromJson(element));
  //   });
  //   return children;
  // }
/// send children
 sendChildren (String fullname,String age,String health,String gender)async{
   var childpost=await apiService.postData('addchild/', {
'fullname':fullname,
'age':age,
'health':health,
'gender':gender,

   });
jsonEncode(childpost);
}
}
