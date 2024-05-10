import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/profilecontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';

import 'package:flutter_childhood/view/screen/mother_app/home.dart';
import 'package:flutter_childhood/view/screen/mother_app/note.dart';
import 'package:flutter_childhood/view/widget/custommealinkwel.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';

class ChildProfile extends StatelessWidget {
   const ChildProfile({super.key});
//var data =Get.arguments;
  @override
  Widget build(BuildContext context) {
    ChildProfilecontrollerImp controller = Get.put(ChildProfilecontrollerImp());
    return Scaffold(
      //backgroundColor: AppColor.backgroundColor,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: AppColor.fairuz,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(275),
                          bottomRight: Radius.circular(275))),
                ),
                Positioned(
                  bottom: -20,
                  child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: AppColor.terqaz,
                          borderRadius: BorderRadius.circular(90)),
                      child: ClipOval(
                          child: Image.asset(
                        AppImageAsset.anne,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ))),
                ),
               const   Positioned(
                    top: 130,
                    child: Text(
                      'Anne jaouni',
                      //data[0],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey),
                    )),
               const  Positioned(
                    top: 160,
                    child: Text(
                     '3 years old',
                   // '${ data[1]} years old',
                      style:   TextStyle(fontSize: 16, color: AppColor.grey),
                    )),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Custombutton(
                    text: 'Edit',
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Custombutton(
                    text: 'Delete',
                    onPressed: () {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Custominkwel(
                    text: 'Meals',
                    onTap: () {
                      controller.gotomeal();
                    }, myimage: Image.asset(AppImageAsset.burger,height: 70,width: 70,),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Custominkwel(
                    text: 'Reports',
                    onTap: () {
                      controller.gotoreports();
                    }, myimage: Image.asset(AppImageAsset.report,height: 70,width: 70,),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Custominkwel(
                    text: 'Notes',
                    onTap: () {
                   Get.to(const Notes());
                    }, myimage: Image.asset(AppImageAsset.note,height: 70,width: 70,),
                  ),
  const SizedBox(
              height: 30,
            ),
               SizedBox(width: 300,
                   child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        color: AppColor.terqaz,
                        textColor: AppColor.fairuz,
                        onPressed: (){
                         Get.off(Home());
                        },
                 
                       
                        child:const Text('Back'),
                      ),
                 )
          ],
        ),
      ),
    );
  }
}
