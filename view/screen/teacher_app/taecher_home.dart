import 'package:flutter/material.dart';

import 'package:flutter_childhood/controller/teacher_controller/teacher_homecontroller.dart';
import 'package:flutter_childhood/core/constant/color.dart';

import 'package:flutter_childhood/view/screen/teacher_app/teacher_child_profile.dart';
import 'package:get/get.dart';

class TeacherHome extends StatelessWidget {
  const TeacherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
      Container(
        margin:const  EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                prefixIcon:const  Icon(Icons.search),
                hintText: "Find Child",
                hintStyle:const  TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.grey[200]),
          )),
         const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
                //color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                ),
            width: 60,
            padding:const  EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                  color: Colors.grey[600],
                )),
          )
        ]),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Stack(children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
                color: AppColor.terqaz,
                borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              title:  Text("Managing children's profiles"  , style: TextStyle(color: Colors.white , fontSize: 15)),
              subtitle: Text("Writing daily reports"  , style: TextStyle(color: Colors.white , fontSize: 25)),
            ),
          ) , 
          Positioned(
            top: -20,
            right: -20,
            child: Container(height: 160,width: 160,decoration: BoxDecoration(
              color: AppColor.fairuz, 
              borderRadius: BorderRadius.circular(160)
            ),),
          )
        ]),
      ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.all(5),
         height: 500,
          padding: const EdgeInsets.all(15),
          child: GetBuilder<TeacherHomecontrollerImp>(
            init:TeacherHomecontrollerImp (),
            builder: (controller) {
              //  if (controller.statusrequest==StatusRequest.loading){
              //   return const Center(child: CircularProgressIndicator());
              // }
              // else if (controller.statusrequest==StatusRequest.offlinefailure){
              //   return const Center(child: Text('Offline failure'),);
              // }
              // else if(controller.statusrequest==StatusRequest.serverfailure){
              //   return  const Center(child: Text('Server failure'),);
              // }else{
              return ListView.builder(
            itemCount:controller.listchild.length ,itemBuilder: (context, i){

             
          return Container(
             decoration: BoxDecoration( //color:  i % 2 == 0 ? AppColor.fairuz: AppColor.terqaz,
                                         borderRadius: BorderRadius.circular(30),
                                         border: Border.all(color: i % 2 == 0 ? AppColor.fairuz:AppColor.terqaz,width: 6)),
                                         alignment: Alignment.center,
            height: 100,
            margin:const EdgeInsets.only(top: 15,),
   
            child: ListTile(onTap: () {
            Get.to( TeacherChildProfile( ),
            
            );
            },
             leading:
              SizedBox(
               
                height: 100,width: 70,
              child: 
             ClipOval(child: Image.asset('${controller.listchild[i]['imagechild']}', width: 70,
                    height: 100,
                    fit: BoxFit.cover,))),
          title:  Text('${controller.listchild[i]['namechild']}'),
         // subtitle: Text('${controller.listchild[i]['age']}'),
          trailing:const Icon(Icons.arrow_forward_ios_rounded),
          ),);
        
          
         },
         
       
         );
          }))
        

]));}
}