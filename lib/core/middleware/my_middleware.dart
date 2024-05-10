// import 'package:flutter/material.dart';
// import 'package:flutter_childhood/core/config/di.dart';
// import 'package:flutter_childhood/core/constant/routes.dart';
// //import 'package:flutter/scheduler.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Middleware extends GetMiddleware{
//   // ignore: non_constant_identifier_names
//   int ?get Priority=>1;
//   // MyServices myServices=Get.find();//عم جيبها لانه عاملتلها حقن 
//   @override
//   RouteSettings? redirect(String?route){
//  if(getIt.get<SharedPreferences>().getString('onboarding') =='1'){//هون اذا الشخص شاف النبوردنغ رح ياخده لصفحة الوغان
//   print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
//   return const RouteSettings(name: AppRoute.login);
//  }else{
//  // print(getIt.get<SharedPreferences>().getString('onboarding'));
//   return null;
//  }
 
//   }
// }