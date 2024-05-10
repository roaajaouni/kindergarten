import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/teacher_controller/teacher_create_reports_controller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/view/widget/customcontainertextfield.dart';
import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';

class TeacherCreateReport extends StatelessWidget {
  const TeacherCreateReport({super.key});

  @override
  Widget build(BuildContext context) {
    TeacherCreateReportControllerImp controller=Get.put(TeacherCreateReportControllerImp ());
      
        return SafeArea(
          child: Scaffold(
              appBar: AppBar(backgroundColor: AppColor.terqaz,
                title: const Text('Child \'s Report',),
                leading: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back)),
                
              ),
              body: Container(
                margin: const EdgeInsets.all(10),
                child: ListView(children: [
                   Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                           controller: controller.childreport,
                           style:const TextStyle(fontSize: 25,color: AppColor.darkpink),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
        
                              // labelText: 'Child Name',
                              hintText: 'Roaa \'s Report'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controller.date,
                          decoration: const InputDecoration(
                            hintText: 'Sunday, April 7 ,2024 .',
                          ),
                        ),
                      ),
                    ],
                  ),
        
                   Row(children: [
                    CustomContainerTextField(
                      hinttext: 'click here',
                      mycontroller: controller.learning,
                        text: 'Learning',
                        mystyle:
                          const  TextStyle(fontSize: 25, color: AppColor.babygreen),
                          
                          // onSubmitted: (value) {
                          //   controller.learning.text=value;
                          // },
                          
                          ),
                  const  SizedBox(
                      width: 10,
                    ),
                    CustomContainerTextField(
                      hinttext: 'click here',
                      mycontroller: controller.attitude,
                        text: 'Attitude',
                        mystyle:
                          const  TextStyle(fontSize: 25, color: AppColor.babyblue),
                          // onSubmitted: (value) {
                          //   controller.attitude.text=value;
                          // },
                          )
                  ]),
        
                  const SizedBox(
                    height: 10,
                  ),
                  //////////
                   Row(children: [
                    CustomContainerTextField(
                      hinttext: 'click here',
                     
                      mycontroller: controller.mood,
                        text: 'Mood',
                        mystyle:
                          const  TextStyle(fontSize: 25, color: AppColor.darkpink),
                          // onSubmitted: (value) {
                          //   controller.mood.text=value;
                          // },
                          ),
                  const  SizedBox(
                      width: 10,
                    ),
                    CustomContainerTextField(
                      hinttext: 'click here',
                      mycontroller: controller.activities,
                        text: 'Activities',
                        mystyle:
                          const  TextStyle(fontSize: 25, color: AppColor.babyyellow),
                          // onSubmitted: (value) {
                          //   controller.activities.text=value;
                          // },
                          ),
                  ]),
                  const SizedBox(
                    height: 40,
                  ),
                  Custombutton(
                    text: 'Create',
                    onPressed: () {
                      controller.createreport();
                    },
                  )
                ]),
              )),
        );
  }
}
