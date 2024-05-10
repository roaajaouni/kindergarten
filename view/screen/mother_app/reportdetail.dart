import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/reportscontroller.dart';

import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:get/get.dart';

class ReportDetail extends StatelessWidget {
  const ReportDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ReportscontrollerImp controller=Get.put(ReportscontrollerImp()); 
    return Scaffold(
      // backgroundColor: AppColor.fairuz,
      appBar: AppBar(
          backgroundColor: AppColor.terqaz,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body:
      
      controller.listreports.isEmpty?  const Center(child: CircularProgressIndicator(),):
      GetBuilder(
        init:  ReportscontrollerImp (),
        builder: (controller){

          
        return
         Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          // color: AppColor.fairuz,
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 70,
                      width: 70,
                        child: ClipOval(
                          child: Image.asset(AppImageAsset.anne)),
                      ),
                    const  SizedBox(
                        height: 6,
                      ),
                   const   Text("Roaa Aljaouni",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.terqaz),),
                   const  SizedBox(
                        height: 6,
                      ),
                      const  Text(" 5 years old "),
                        const  SizedBox(
                        height: 6,
                      ),
                       const Text(" female"),
                    ],
                  ),
                 const SizedBox(width: 10,),
                   const Column(
                    children: [
                     
                      SizedBox(
                        height: 15,
                      ),
                      Text("  Date created :  20-4-2024",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),),
                    ],
                  ),
                ],
              ),

              
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 5.0,
                color: AppColor.terqaz,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 30),
                height: 150,
                width: 400,
                //color: AppColor.babypurple,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "Learning :",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.green),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Letters",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    ]),
                    Column(children: [
                      Text(
                        "Attitude :",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.babyblue),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Good",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54)),
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //color: AppColor.fairuz,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 30),
                height: 150,
                width: 400,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "Mood :",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.darkpink),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Happy",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54)),
                    ]),
                    Column(children: [
                      Text(
                        "Activities :",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.babyyellow),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Drawing and coloring",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54)),
                    ]),
                  ],
                ),
              ),
            ],
          ));
      })
    );
  }
}
