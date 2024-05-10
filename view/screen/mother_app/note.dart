import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/note_controller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';

import 'package:flutter_childhood/view/widget/login/custombutton.dart';
import 'package:get/get.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    NotesControllerImp controller = Get.put(NotesControllerImp());
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(10),
      child: SafeArea(
        child: ListView(
          children: [
            Stack(children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(58),
                    color: AppColor.terqaz,
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 450,
                  child: const Text(
                    'You can send  notes and anything about your child . \n  \n We are interested in that .',
                    style: TextStyle(fontSize: 20,color: AppColor.fairuz),
                  )),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: Image.asset(
                    AppImageAsset.bee,
                    height: 90,
                    width: 90,
                  ))
            ]),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Text(
                  'Name :',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.fairuz,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
                      height: 80,
                      width: 300,
                      child: TextField(
                        controller: controller.name,
                        decoration: const InputDecoration(
                            hintText: 'click here ', border: InputBorder.none,
                            hintStyle: TextStyle(color: Color.fromARGB(255, 233, 230, 230))),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Write a note :',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.fairuz,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
                      height: 200,
                      width: 300,
                      child: TextField(
                        controller: controller.contain,
                        maxLines: 3,
                        decoration: const InputDecoration(
                            hintText: 'click here ', border: InputBorder.none,
                                hintStyle: TextStyle(color: Color.fromARGB(255, 233, 230, 230)),
                            ),
                          
                      )),
                ),
                const SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Custombutton(
                      text: 'submit',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Custombutton(
                      text: 'back',
                      onPressed: () {
                        controller.gotoChildprofile();
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
