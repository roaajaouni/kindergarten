import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/core/constant/routes.dart';
import 'package:flutter_childhood/view/screen/teacher_app/teacher%20_create_reports.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';

class TeacherChildProfile extends StatelessWidget {
  //final ChildModel child;
  //const TeacherChildProfile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.terqaz, width: 8)),
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(15),
              height: 200,
              //color: AppColor.babyblue,
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                          child: Image.asset(
                        AppImageAsset.onBoardingImageOne,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Anne jaouni',
                        style: TextStyle(color: AppColor.primaryColor,fontSize: 18),
                      ),
                     const SizedBox(height: 5,),
                      const Text(
                        '5 years old',
                        style: TextStyle(color: AppColor.blue,),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Column(
                    children: [
                      Text(
                        'mother name : Haya',
                        style:
                            TextStyle(fontSize: 18, color: AppColor.babypurple),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Gender : female',
                        style:
                            TextStyle(fontSize: 18, color: AppColor.darkpink),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'health status : good',
                        style:
                            TextStyle(fontSize: 18, color: AppColor.babygreen),
                      ),
                    ],
                  ),
                ],
              )),
            const   SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              InkWell(
                onTap: (){
                  Get.to(const TeacherCreateReport ());
                },
                child: Container(
                  
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                   decoration: BoxDecoration(
                    color: AppColor.fairuz,
                    border: Border.all(color: AppColor.terqaz, width: 5),
                     borderRadius: const BorderRadius.all(Radius.circular(50))),
                     child: const Text('Create reports',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.blue),),
                ),
              ),

                InkWell(
                   onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                  height: 150,
                  width: 150,
                   
                   decoration: BoxDecoration(
                     color: AppColor.fairuz,
                    border: Border.all(color: AppColor.terqaz, width: 5),
                     borderRadius: const BorderRadius.all(Radius.circular(50))),
                     child: const Text('Read Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.purple),),
                              ),
                ),
            ],),
          const  SizedBox(height: 70),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              InkWell(
                 onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                   decoration: BoxDecoration(
                     color: AppColor.fairuz,
                    border: Border.all(color: AppColor.terqaz, width: 5),
                     borderRadius: const BorderRadius.all(Radius.circular(50))),
                     child: const Text('Saved Reports',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.green),),
                ),
              ),

                InkWell(
                   onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                  height: 150,
                  width: 150,
                   decoration: BoxDecoration(
                     color: AppColor.fairuz,
                    border: Border.all(color: AppColor.terqaz, width: 5),
                    borderRadius: const BorderRadius.all(Radius.circular(50))
                    ),
                    child: const Text('Create report',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.yellow),),
                              ),
                ),

            ],),
          const   SizedBox(height: 50,),
          Custombutton(text: 'back',
          onPressed: (){
            Get.toNamed(AppRoute.teacherhome);
          },)
        ],
      ),
    ));
  }
}
