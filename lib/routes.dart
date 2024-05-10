

import 'package:flutter_childhood/core/constant/routes.dart';
import 'package:flutter_childhood/view/screen/auth/teacher_login.dart';
import 'package:flutter_childhood/view/screen/auth/teacher_signup.dart';
import 'package:flutter_childhood/view/screen/auth/teacher_success_signup.dart';

import 'package:flutter_childhood/view/screen/mother_app/addchild.dart';

import 'package:flutter_childhood/view/screen/auth/login.dart';

import 'package:flutter_childhood/view/screen/auth/siginup.dart';
import 'package:flutter_childhood/view/screen/auth/startingrole.dart';
import 'package:flutter_childhood/view/screen/auth/success_signup.dart';
import 'package:flutter_childhood/view/screen/mother_app/home.dart';
import 'package:flutter_childhood/view/screen/mother_app/mealspage.dart';
import 'package:flutter_childhood/view/screen/mother_app/myaccount.dart';
import 'package:flutter_childhood/view/screen/mother_app/note.dart';
import 'package:flutter_childhood/view/screen/mother_app/notification_page.dart';
import 'package:flutter_childhood/view/screen/mother_app/reportdetail.dart';

import 'package:flutter_childhood/view/screen/mother_app/childprofile.dart';
import 'package:flutter_childhood/view/screen/mother_app/reports.dart';
import 'package:flutter_childhood/view/screen/teacher_app/taecher_home.dart';
import 'package:flutter_childhood/view/screen/teacher_app/teacher%20_create_reports.dart';
import 'package:flutter_childhood/view/screen/teacher_app/teacher_child_profile.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name:'/',page: ()=>  const Startingrole(),),
  GetPage(
    name: AppRoute.login,
    page: () =>  const Login(),
    // middlewares: [Middleware()],
  ),
 
  GetPage(
    name: AppRoute.signup,
    page: () => Signup(),
  ),
  GetPage(
    name: AppRoute.successsignup,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppRoute.starting,
    page: () => const Startingrole(),
  ),
   GetPage(
    name: AppRoute.starting,
    page: () =>  Home(),
  ),

   GetPage(
    name: AppRoute.starting,
    page: () =>  Createclildprofile(),
  ),
  GetPage(
    name: AppRoute.childprofile,
    page: () =>  ChildProfile(),
  ),
  GetPage(
    name: AppRoute.mealspage,
    page: () => const MealsPage (),
  ),
  GetPage(
    name: AppRoute.reportspage,
    page: () => const ReportsPage (),
  ),
   GetPage(
    name: AppRoute.teacherhome,
    page: () => const TeacherHome (),
  ),
   GetPage(
    name: AppRoute.teachersuccesssignup,
    page: () => const TeacherSuccessSiginup (),
  ),
   GetPage(
    name: AppRoute.teacherlogin,
    page: () => const TeacherLogin (),
  ),
   GetPage(
    name: AppRoute.teachersignup,
    page: () => const TeacherSignup (),
  ),

    GetPage(
    name: AppRoute.teachercreatereport,
    page: () => const TeacherCreateReport(),
  ),
    GetPage(
    name: AppRoute.teacherchildprofile,
    page: () =>  TeacherChildProfile (),
  ),
     GetPage(
    name: AppRoute.notes,
    page: () => const Notes  (),
  ),
    GetPage(
    name: AppRoute.notification,
    page: () =>const NotificationsPage (),
  ),
    GetPage(
    name: AppRoute.myaccount,
    page: () =>const MyAccount (),
  ),
   GetPage(
    name: AppRoute.reportdetail,
    page: () =>const ReportDetail (),
  ),

];


  


//middlewares: [Middleware()]