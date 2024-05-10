import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/auth/teachersignupcontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/core/function/validinput.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:flutter_childhood/view/widget/login/customrowloginorsignup.dart';
import 'package:flutter_childhood/view/widget/login/customtextfield.dart';
import 'package:get/get.dart';

class TeacherSignup extends StatelessWidget {
  const TeacherSignup({super.key});

  @override
  Widget build(BuildContext context) {
    TeacherSignupcontrollerImp controller=Get.put(TeacherSignupcontrollerImp());
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
                const Text('SIGN UP',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: AppColor.grey)),
          
                SizedBox(
                  height: screenheight / 50,
                ),
          
                Customtextfield(
                    hintText: 'name',
                    iconData: Icons.person,
                    mycontroller: controller.name,
                     valid: (val) {  
                         return validInput(val!, 2, 50, 'name');
                     },
                    ),
          
          
                SizedBox(
                  height: screenheight / 50,
                ),
                //email
                Customtextfield(
                    hintText: 'email',
                    iconData: Icons.email,
                    mycontroller: controller.email,
                     valid: (val) {  
                      return validInput(val!, 3, 50, 'email');
                     },
                    ),
          
                SizedBox(
                  height: screenheight / 50,
                ),
                //password
                Customtextfield(
                    hintText: 'password',
                    iconData: Icons.key,
                    mycontroller: controller.password,
                     valid: (val) { 
                      return validInput(val!, 5, 100, 'password');
                      },
                    ),
          
                SizedBox(
                  height: screenheight / 50,
                ),
                //address
                Customtextfield(
                    hintText: 'address',
                    iconData: Icons.home,
                    mycontroller: controller.address,
                     valid: (val) { 
                      return validInput(val!, 5, 100, 'address');
                      },
                    ),
          
                SizedBox(
                  height: screenheight / 30,
                ),
          
                //sign button
                Custombutton(
                  text: 'Sign up',
                   onPressed: () {
                     controller.create();
                   },
                ),
                // text signup
                SizedBox(
                  height: screenheight / 30,
                ),
                Customrowloginorsignup(
                  textone: 'Already a member ?',
                  texttwo: 'sign in',
                  onTap: () {
                    controller.gotosignin();
                  },
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}