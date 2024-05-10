
import 'package:flutter/material.dart';

import 'package:flutter_childhood/controller/auth/success_signupcontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';

import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';


class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   SuccessSignupcontrollerImp controller = Get.put(SuccessSignupcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        // title: Text('32'.tr,
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline1!
        //         .copyWith(color: AppColor.)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.hintfieldColor,
          )),
           const SizedBox(height: 60,),
         const  Text(' The account  has been created  ',
              style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColor.grey),

                 
          ),
          const SizedBox(height: 40,),
          
                const  Text('  successfully ',
              style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColor.grey),),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: 
            Custombutton(
                text: "Sign in".tr,
                onPressed: () {
                   controller.gotosigninn();
                  //Get.offNamed(AppRoute.login);
                }),
         ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}