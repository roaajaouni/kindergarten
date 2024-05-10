

import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/addchildcontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';

import 'package:flutter_childhood/view/widget/customcarttextfield.dart';

import 'package:get/get.dart';




class Createclildprofile extends StatelessWidget {
   Createclildprofile({super.key}) ;
 
 
  final int selectedindex = 0;
 
  Widget build(BuildContext context) {
   AddchildcontrollerImp  controller = Get.put(AddchildcontrollerImp());
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.terqaz,title: const Text("Craete child's profile",style: TextStyle(color: AppColor.fairuz),),),
      body: SafeArea(
        child: Container(
         // color: AppColor.backgroundColor,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child:
             // GetBuilder< AddchildcontrollerImp>(builder: (controller) {
             // return
              ListView(children: [
              //padding: const EdgeInsets.symmetric(horizontal: 16),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                height: 100,
               width: 50,
               
                child: ClipOval(
                 
                  child: Image.asset(
                    AppImageAsset.anne,
                  //fit: BoxFit.cover,
                  //  height: 50,
                  //  width: 50,
                  ),
                ),
              ),

              const Center(
                  child: Text(
                'Child _Profile',
                style: TextStyle(
                    color: AppColor.terqaz,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),

              const SizedBox(height: 20),

              //fullname

              CustomCartTextField(
                  hintText: 'Full_Name',
                  iconData: Icons.person,
                  mycontroller: controller.fullname,

// onSubmitted: (value) {
//                   controller.fullname.text=value;
//                   },


                  ),

            

              //birthday

              CustomCartTextField(
                  hintText: 'Age',
                  iconData: Icons.cake,
                  mycontroller: controller.age,
                  
                  // onSubmitted: (value) {
                  // controller.age.text=value;
                  // },
                  
                  ),

             // const SizedBox(height: 20),

              //gender

              CustomCartTextField(
                  hintText: 'Gender',
                  iconData: Icons.girl,
                  mycontroller: controller.gender,
                  //  onSubmitted: (value) {
                  // controller.gender.text=value;
                  // },
                  ),

              // const SizedBox(height: 20),

              // //healthy

              CustomCartTextField(
                  hintText: 'Health Status ',
                  iconData: Icons.health_and_safety_outlined,
                  mycontroller: controller.health,
                  // onSubmitted: (value) {
                  // controller.health.text=value;
                  // },
              
                  
                  ),
              const SizedBox(height: 60),

              //create

               SizedBox(width: 300,
                   child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        color: AppColor.terqaz,
                        textColor: AppColor.fairuz,
                        onPressed: (){
                         controller.create();
                        },
                 
                       
                        child:const Text('Submit'),
                      ),
                 )
            ])
           // }
          // ,)
          ),
        ),
      ),
    );
  }
}






