
import 'package:flutter_childhood/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_childhood/view/screen/mother_app/home.dart';




import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialBinding: InitBindings() ,
     // home:const Login(),
  // home: const Startingrole(),
    
   
   home: Home(),
    // home: ReportsPage(),
    //home:const ChildProfile(),
   //home:const TeacherCreateReport(),
   //home:const Notes(),
//home:const ReportDetail()


// home:const TeacherLogin(),
//home:const TeacherHome(),
//home: TeacherChildProfile(),
//home: Signup () ,
      //routes:routes ,

      getPages: routes,
    );
  }
}
