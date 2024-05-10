import 'package:flutter/material.dart';
import 'package:flutter_childhood/core/constant/color.dart';
import 'package:flutter_childhood/view/screen/mother_app/home.dart';
import 'package:flutter_childhood/view/screen/mother_app/myaccount.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

//
 int selectedindex = 0;

  List <Widget> pages=[
  Home(),
  const NotificationsPage(),
  const MyAccount(),

 ];
////
void onTabTapped(int index) {
  setState(() {
    selectedindex= index;
   // _selected = index.toString();
  });
  Get.off(pages[ selectedindex]);
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            // onTap: (val) {
            //   setState(() {
            //     selectedindex = val;

            //   });
            // },
            onTap:onTabTapped ,
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
     
     
    );
  }
}