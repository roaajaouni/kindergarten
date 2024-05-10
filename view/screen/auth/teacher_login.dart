import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/auth/teacherlogincontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/core/function/validinput.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:flutter_childhood/view/widget/login/customrowloginorsignup.dart';
import 'package:flutter_childhood/view/widget/login/customtextfield.dart';
import 'package:get/get.dart';

class TeacherLogin extends StatelessWidget {
  const TeacherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TeacherLoginControllerImp  controller=Get.put(TeacherLoginControllerImp());
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Form(
            key: controller.formstate,
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                //image
          
                Image.asset(
                  AppImageAsset.logo,
                  height: screenheight / 4,
                ),
                SizedBox(
                  height: screenheight / 30,
                ),
                //title
                const Text('SIGN IN',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: AppColor.grey)),
          
                SizedBox(
                  height: screenheight / 30,
                ),
          
                Customtextfield(
                    hintText: 'username',
                    iconData: Icons.person,
                    mycontroller: controller.username, 
                    valid: (val) { 
                      return validInput(val!, 5, 100, 'username');
                     },),
          
                SizedBox(
                  height: screenheight / 30,
                ),
          
                //password
                Customtextfield(
                    hintText: 'password',
                    iconData: Icons.key,
                    mycontroller: controller.password,
                     valid: (val) { 
                         return validInput(val!, 5, 30, 'password');
                      },
                    ),
          
                SizedBox(
                  height: screenheight / 30,
                ),
          
                //sign button
                 Custombutton(
                  text: 'Sign in',
                   onPressed:(){controller.login();}
                  
                ),
                // text signup
                SizedBox(
                  height: screenheight / 30,
                ),
                Customrowloginorsignup(
                  textone: 'Not yet member',
                  texttwo: 'sign up now',
                  onTap: () {
                    controller.gotosignup();
                  },
                )
              ]),
            ),
          ),
        ),
      ));
  }
}