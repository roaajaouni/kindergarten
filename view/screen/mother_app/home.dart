import 'package:flutter/material.dart';
import 'package:flutter_childhood/controller/mother_controller/homecontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/core/constant/imageasset.dart';
import 'package:flutter_childhood/view/screen/mother_app/childprofile.dart';
import 'package:flutter_childhood/view/screen/mother_app/myaccount.dart';
import 'package:flutter_childhood/view/screen/mother_app/notification_page.dart';

import 'package:get/get.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int selectedindex = 0;

  List<Widget> pages = [
    Home(),
    const NotificationsPage(),
    const MyAccount(),
  ];
////
  void onTabTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => pages[ selectedindex]),
    // );
    Get.off(()=>pages[selectedindex]);
  }

  ///
  @override
  Widget build(BuildContext context) {
    Get.put(HomecontrollerImp());
    return Scaffold(
        // backgroundColor: AppColor.backgroundColor,
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            // onTap: (val) {
            //   setState(() {
            //     selectedindex = val;

            //   });
            // },
            onTap: onTabTapped,
            currentIndex: selectedindex,
            //backgroundColor: AppColor.backgroundColor,
            backgroundColor: Colors.white,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: AppColor.fairuz,
            unselectedItemColor: AppColor.terqaz,
            unselectedFontSize: 14,
            selectedFontSize: 20,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active_outlined),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_outlined), label: 'My account'),
            ]),
        body: GetBuilder<HomecontrollerImp>(
          builder: (controller) => controller.listchild.isEmpty
              ? Container(
                  // color: AppColor.backgroundColor,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        AppImageAsset.magic,
                        height: 200,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Center(
                        child: Text(
                          '   Hi !  ',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: AppColor.terqaz),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Center(
                        child: Text(
                          '    No children added yet ',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: AppColor.terqaz),
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      SizedBox(
                        width: 300,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          color: AppColor.terqaz,
                          textColor: AppColor.fairuz,
                          onPressed: () {
                            controller.gotocreatechildprofile();
                          },
                          child: const Text(
                            'Add child',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ))
              : Container(
                  //color: AppColor.backgroundColor,
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: AppColor.terqaz,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60))),
                          padding: const EdgeInsets.all(18),
                          alignment: Alignment.topLeft,
                          width: 375,
                          height: 130,
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Column(children: [
                                  Text(
                                    'Roaa \' s info',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.fairuz),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Roaa@gmail.com',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.fairuz),
                                  ),
                                  // Text(
                                  //   '0981646649',
                                  //   style: TextStyle(
                                  //       fontSize: 16,
                                  //       fontWeight: FontWeight.w500,
                                  //       color: AppColor.fairuz),
                                  // ),
                                  Text(
                                    'Daraa',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.fairuz),
                                  ),
                                ]),
                                const SizedBox(
                                  width: 80,
                                ),
                                ClipOval(
                                    child: Image.asset(
                                  AppImageAsset.bee,
                                  fit: BoxFit.cover,
                                )),
                              ])),
                      //  const SizedBox(
                      //   height: 10,
                      // ),
                      // const Text(
                      //   'Here are roaa \'s children',
                      //   style: TextStyle(
                      //       fontSize: 22,
                      //       fontWeight: FontWeight.w500,
                      //       color: AppColor.terqaz),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          //color: AppColor.backgroundColor,
                          color: Colors.white,
                          margin: const EdgeInsets.all(5),
                          height: 350,
                          padding: const EdgeInsets.all(15),
                          child: ListView.builder(
                            itemCount: controller.listchild.length,
                            itemBuilder: (context, i) {
                              return Card(
                                margin: const EdgeInsets.only(
                                  top: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(150),
                                    side: const BorderSide(
                                        color: AppColor.terqaz)),
                                child: ListTile(
                                  onTap: () {
                                    Get.to(
                                      () => const ChildProfile(),
                                    );
                                  },
                                  leading: const SizedBox(
                                    height: 100, width: 80,
                                    //child: ClipOval(child: Image.asset(controller.children[i]))
                                  ),
                                  title: Text(
                                       '${controller.listchild[i]['namechild'] } '
                                      ),
                                  trailing: Text(
                                       '${controller.listchild[i]['age']} '
                                      ),
                                ),
                              );
                            },
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 300,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          color: AppColor.terqaz,
                          textColor: AppColor.fairuz,
                          onPressed: () {
                            controller.gotocreatechildprofile();
                          },
                          child: const Text('Add child'),
                        ),
                      )
                    ],
                  ),
                ),
        ));
  }
}
