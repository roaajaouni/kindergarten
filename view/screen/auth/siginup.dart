import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/auth/signupcontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/core/function/validinput.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:flutter_childhood/view/widget/login/customrowloginorsignup.dart';
import 'package:flutter_childhood/view/widget/login/customtextfield.dart';
import 'package:get/get.dart';


class Signup extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Signup({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SignupcontrollerImp controller = Get.put(SignupcontrollerImp());
    double screenheight = MediaQuery.of(context).size.height;
    // double screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Form(
            key: controller.formstate,
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                //image
          
                ClipOval(
                  child: Image.asset(
                    AppImageAsset.mother,
                    height: screenheight / 6,
                  ),
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
                    hintText: 'username',
                    iconData: Icons.person,
                    mycontroller: controller.username,
                     valid: (val) {  
                         return validInput(val!, 2, 50, 'name');
                     },
                    ),
          
                // SizedBox(
                //   height: screenheight / 50,
                // ),
          
                // //password
                // Customtextfield(
                //     hintText: 'phone',
                //     iconData: Icons.phone_android,
                //     mycontroller: controller.phone,
                //      valid: (val) {  
                //          return validInput(val!, 5, 100, 'username');
                //      },
                //     ),
          
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
                      return validInput(val!, 8, 20, 'password');
                      },
                    ),
          
                SizedBox(
                  height: screenheight / 50,
                ),
                //address
                // Customtextfield(
                //     hintText: ' password confirm',
                //     iconData: Icons.password_outlined,
                //     mycontroller: controller.confirmpassword,
                //      valid: (val) { 
                //       return validInput(val!, 8, 20, 'confirmpassword');
                //       },
                //     ),
          
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
